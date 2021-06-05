package com.devd.spring.bookstoreorderservice.service.impl;

import com.devd.spring.bookstorecommons.feign.AccountFeignClient;
import com.devd.spring.bookstorecommons.feign.CatalogFeignClient;
import com.devd.spring.bookstorecommons.web.GetProductResponse;
import com.devd.spring.bookstoreorderservice.repository.CartItemRepository;
import com.devd.spring.bookstoreorderservice.repository.dao.Cart;
import com.devd.spring.bookstoreorderservice.repository.dao.CartItem;
import com.devd.spring.bookstoreorderservice.service.CartItemService;
import com.devd.spring.bookstoreorderservice.service.CartService;
import com.devd.spring.bookstoreorderservice.web.CartItemRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    CartService cartService;

    @Autowired
    CatalogFeignClient catalogFeignClient;

    @Autowired
    CartItemRepository cartItemRepository;

    @Autowired
    AccountFeignClient accountFeignClient;

    @Override
    public void addCartItem(CartItemRequest cartItemRequest) {

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String userName = (String) authentication.getPrincipal();
        Cart cartByUserName = cartService.getCartByUserName(userName);

        synchronized (CartServiceImpl.class) {
            if (cartByUserName == null) {
                cartService.createCart();
                cartByUserName = cartService.getCartByUserName(userName);
            }
        }
    
        GetProductResponse getProductResponse = catalogFeignClient.getProduct(cartItemRequest.getProductId());

        if (cartItemRequest.getQuantity() > getProductResponse.getAvailableItemCount()) {
            throw new RuntimeException("Quantity is greater than available item count!");
        }


        if (cartByUserName.getCartItems() != null) {
            for (CartItem ci : cartByUserName.getCartItems()) {
    
                if (getProductResponse.getProductId().equals(ci.getProductId())) {
                    ci.setQuantity(cartItemRequest.getQuantity());
                    ci.setItemPrice(getProductResponse.getPrice());
                    ci.setExtendedPrice(ci.getQuantity() * getProductResponse.getPrice());
                    cartItemRepository.save(ci);
                    return;
                }
            }
        }

        CartItem cartItem = CartItem.builder()
                                    .cart(cartByUserName)
                                    .itemPrice(getProductResponse.getPrice())
                                    .extendedPrice(cartItemRequest.getQuantity() * getProductResponse.getPrice())
                                    .quantity(cartItemRequest.getQuantity())
                                    .productId(getProductResponse.getProductId())
                                    .productName(getProductResponse.getProductName())
                                    .build();

        cartItemRepository.save(cartItem);
    }

    @Override
    public void removeCartItem(String cartItemId) {
        CartItem cartItem = this.getCartItem(cartItemId);
        cartItemRepository.delete(cartItem);
    }

    @Override
    public CartItem getCartItem(String cartItemId) {
        Optional<CartItem> byCartItemId = cartItemRepository.findByCartItemId(cartItemId);
        return byCartItemId.orElseThrow(()-> new RuntimeException("CartItem doesn't exist!!"));
    }

    @Override
    public void removeAllCartItems(String cartId) {

        Cart cart = cartService.getCartByCartId(cartId);
        List<String> cartItemIds = cart.getCartItems().stream().map(cartItem -> cartItem.getCartItemId()).collect(Collectors.toList());
        if (!cartItemIds.isEmpty()) {
            cartItemIds.forEach(this::removeCartItem);
        }
    }
}
