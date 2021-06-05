import React, {useState, useEffect} from 'react';
import {Link} from 'react-router-dom';
import {Form, Button, Row, Col} from 'react-bootstrap';
import {useDispatch, useSelector} from 'react-redux';
import Message from '../components/Message';
import {login} from '../actions/userActions';
import FormContainer from '../components/FormContainer';
import FullPageLoader from '../components/FullPageLoader';
import '../css/login.css';

const LoginScreen = (props) => {
    const [userNameOrEmail, setUserNameOrEmail] = useState('');
    const [password, setPassword] = useState('');
    const dispatch = useDispatch();
    const userLogin = useSelector((state) => state.userLogin);
    const {loading, error, userInfo} = userLogin;

    const redirect = props.location.search ? props.location.search.substring(props.location.search.indexOf('=') + 1) : '/';

    useEffect(() => {
        if (userInfo) {
            props.history.push(redirect);
        }
    }, [props.history, userInfo, redirect]);

    const loginSubmitHandler = (e) => {
        e.preventDefault();
        dispatch(login(userNameOrEmail, password));
    };

    return (
        <div >

            <FormContainer>
                <div className="login_form">
                <h1 className="header_login">Login</h1>
                {error && <Message variant='danger'>{JSON.stringify(error)}</Message>}
                <Form onSubmit={loginSubmitHandler}>
                    <Form.Group controlId='userNameOrEmail'>
                        <Form.Control
                            placeholder='Username or Email'
                            value={userNameOrEmail}
                            onChange={(e) => setUserNameOrEmail(e.target.value)}
                        ></Form.Control>
                    </Form.Group>

                        <Form.Group controlId='password'>
                            <Form.Control
                                placeholder='Password'
                                type='password'
                                value={password}
                                onChange={(e) => setPassword(e.target.value)}
                            ></Form.Control>
                        </Form.Group>

                    <Button type='submit' variant='primary'>
                        Sign In
                    </Button>
                </Form>

                <Row className='py-3'>
                    <Col>
                        No Account? <Link
                        to={redirect ? `/register?redirect=${redirect}` : '/register'}>Register</Link>
                    </Col>
                </Row>
                </div>
            </FormContainer>

            {loading && <FullPageLoader></FullPageLoader>}
        </div>
    );
};


export default LoginScreen;
