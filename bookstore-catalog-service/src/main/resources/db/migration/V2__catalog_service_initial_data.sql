
insert into PRODUCT_CATEGORY (product_category_id, created_at, updated_at, description, product_category_name) values
 ('1', now(), now(), 'These books belong to Literature category', 'Literature'),
 ('2', now(), now(), 'These books belong to Fiction category', 'Fiction'),
 ('3', now(), now(), 'These books belong to Technology category', 'Technology'),
 ('4', now(), now(), 'These books belong to Programming category', 'Programming'),
 ('5', now(), now(), 'These books belong to Business category', 'Business'),
 ('6', now(), now(), 'These books belong to Science category', 'Science'),
 ('7', now(), now(), 'These books belong to Politics category', 'Politics'),
 ('8', now(), now(), 'These books belong to Productivity category', 'Productivity');

insert into PRODUCT (product_id, created_at, updated_at, available_item_count, product_description, price, product_name, product_category_id, product_image_id) values
('1', now(), now(), 345, 'Full of fascinating how-to skills and evocative illustrations.', 85, 'Sherlock Holmes Handbook', '1', 'c16108e1-8276-41ad-bf12-4aee4c0a7e65__SherlockHolmes.jpg'),
('2', now(), now(), 987, 'Agatha Christie’s debut novel was the first to feature Hercule Poirot.', 140, 'The Mysterious Affair at Styles', '1', '2b3ba80b-da93-4206-b50f-83008180a09e__aghataCristie.jpg'),
('3', now(), now(), 872, 'Yvonne Harrison at her home in Oxfordshire had baffled the Thames Valley CID....', 399, 'The Remorseful Day', '1', '0547ab94-59f8-4352-b17b-0918d07913f2__RemorsefulDay.jpg'),
('4', now(), now(), 678, 'Most famous book of George Oruell.', 299, '1984', '1', '4b050ba6-9573-4554-bdd4-26ae806c06aa__1984.jpg'),
('5', now(), now(), 3545, 'The only authorized edition of the twentieth-century classic, featuring F. Scott Fitzgerald’s.', 500, 'The Great Gatsby', '1', '8e6abb0e-180b-4e8e-856a-cb8491ff9454__greatGatsby.jpg'),

('6', now(), now(), 2432, 'Golding’s iconic 1954 novel, now with a new foreword by Lois Lowry.', 185, 'Lord Of The Flies', '2', 'b1175b20-e946-42a6-b63d-83e35b7a73fa__lordOfTheFlies.jpg'),
('7', now(), now(), 234, 'Internationally acclaimed with more than 5 million copies, Ray Bradburys classic novel.', 440, 'Fahrenheit 451', '2', '1ecfd5c4-dba2-4feb-bd88-006105a8d5ab__fahrenheit.jpg'),
('8', now(), now(), 453, 'A beautiful, unsettling novel about rebellion and taboo, violence and eroticism.', 99, 'Vegatarian', '1', 'e6602eb6-3f67-4993-abc8-0b54a36bad1b__vegatarian.jpg'),
('9', now(), now(), 768, 'The extraordinary #1 New York Times bestseller that is now a major motion picture.', 299, 'The book thief', '2', '49935a41-7274-4b7f-9333-c3e85d59df18__bookThief.jpg'),
('10', now(), now(), 67, 'A magnificent drama of vengeance, infidelity, and retribution, Anna Karenina.', 500, 'Anna Karenina', '2', '27ba1db0-a5a3-477c-927c-7ceb36cf7ffa__AnnaKarenina.jpg'),

('11', now(), now(), 567, 'The book, contains proven steps and strategies on how to learn basic programming in Java', 585, 'Programming in Java', '4', 'ad5b1926-05ad-4aae-852d-f152ea838648__JavaProgramming.jpg'),
('12', now(), now(), 435, 'If you’re looking for a way to become an expert coder and impress your friends with the programs.', 232, 'Python Programming', '4', 'af75f363-fdb9-4d8e-8066-6215f0520e9b__PythonProg.jpg'),
('13', now(), now(), 78, 'Richly explained, and integrated coverage of the entire language―its facilities, libraries.', 433, 'C++ Programming', '4', '25550dae-a893-4aa5-8b8f-967a91548fa5__CProgramming.jpg'),
('14', now(), now(), 45, 'If you want to learn how to use Linux and level up your career but are pressed for time, read on.', 122, 'Linux in 3 days', '4', '6a290abe-338f-4ece-8793-ccdd35a7745f__linuxIn3days.jpg'),
('15', now(), now(), 456, 'NET developer who reads this will have at least one ‘aha’ moment and will be a better developer.', 233, 'Programming in C#', '4', 'cad39d84-60aa-496d-9295-c3f47ec957fa__programmingInCsharp.jpg'),

('16', now(), now(), 232, 'Its been nearly 25 years since Rich Dad Poor Dad first made waves in the Personal Finance arena.', 654, 'Rich dad Poor dad', '5', 'e9b319cc-e501-4f90-b608-74052d770e2d__richDadPoorDad.jpg'),
('17', now(), now(), 434, 'It was the first book to boldly ask, "What makes a winner?"', 343, 'Think and grow rich', '5', '2603aa1d-3892-44cc-9481-fd485d80d270__thinkAndGrowRich.jpg'),

('18', now(), now(), 872, 'Was first published in 1988 and is one of the most popular science books of all time.', 399, 'A Brief History of Time', '6', 'b9685c28-7f97-4fb7-9cf0-927ff3afc8f1__briefOfHistoryTime.jpg'),
('19', now(), now(), 678, 'The Selfish Gene is older classics but is still as popular today as it was back in 1976.', 299, 'The selfish gene', '6', '7d8b74e5-4321-4b49-9b2a-da4bf779d5be__theSelfishGene.jpg'),
('20', now(), now(), 3545, 'Was first published in 2011 and won the 2012 National Academies Communication Award.', 500, 'The fast and slow', '6', '622a7214-02cc-4f54-85fd-86fd8f3b6967__fastAndSlow.jpg'),

('21', now(), now(), 345, 'Politics affects us all and the same questions reverberate across history.', 85, 'Politics Book', '7', '3b315751-c5bd-4e73-aad2-df941826f453__politicsBook.jpg'),
('22', now(), now(), 987, 'This book is the perfect introduction to politics and political thought throughout history.', 140, 'The little book of polititcs', '7', '8f8a275b-357e-4010-84dc-8d89bb5e2b95__littleBookOfPolitics.jpg'),
('23', now(), now(), 872, 'Work that identifies the real culprit behind one of the great economic crimes.', 399, 'Winner-Take-All Politics', '7', 'cef7540f-0810-4323-9950-98c5d8d5099d__WinnerTakeAllPolitic.jpg'),

('24', now(), now(), 678, 'Atomic Habits offers a proven framework for improving every day.', 299, 'Atomic habits', '8', '46fb8d5b-2979-4c54-848f-512693b37818__atomicHabits.jpg'),
('25', now(), now(), 3545, 'Simply the “ability to focus without distraction on a cognitively demanding task”.', 500, 'Deep Work', '8', '990945b7-900e-432b-9b2c-79ea20302f6e__deepWork.jpg');
