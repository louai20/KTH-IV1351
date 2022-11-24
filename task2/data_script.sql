INSERT INTO address (city,zip,street)
VALUES
('Cambridge Bay','8767','Ap #160-5986 Elit. Av.'),
('Arequipa','21349','Ap #793-7126 Lobortis. Street'),
('Aizwal','196804','625-8430 Interdum. Road'),
('Ilhéus','35762','632-5631 Magnis Street'),
('Genova','7618','P.O. Box 977, 5223 Litora Rd.'),
('Talagante','21703','1247 Faucibus St.'),
('Saratov','07449','553-2949 Eleifend Street'),
('Bellingen','232694','354-7746 Augue Avenue'),
('Tenby','9427','Ap #469-933 Aliquam Rd.'),
('Blenheim','52-83','851-7827 Eu Avenue');


INSERT INTO person (person_number,first_name,middle_name,last_name,age,address_id)
VALUES
('599264376591','Bell','M','Silva','11','1'),
('781252311547','Glenna','Justina F. Spencer','Mclean','19','2'),
('917196844769','Cara','Kasimir Y. Dominguez','Cohen','94','3'),
('563671076159','Jared','Cora Q. Riddle','Mcfarland','12','4'),
('456934755983','Benjamin','Ivan F. Stafford','Rush','6','5'),
('801447238816','Scott','Oren G. Payne','Johnson','97','6'),
('426718914057','Arsenio','Keely B. Sandoval','Mcneil','14','7'),
('329310294096','Elton','Avye Y. Decker','Fleming','72','8'),
('405131884104','Iliana','Gloria C. Conrad','Nieves','88','9'),
('181183064359','Clio','Sasha M. Abbott','Hawkins','72','10');

INSERT INTO instructor (employment_id,instrument_can_teach,person_id)
VALUES 
('40461969199','flute','1'),
('50322772699','Tuba','2'),
('65263197699','cornet','3'),
('08246366399','piano','4'),
('52571405999','violin','5'),
('89978036799','cornet','6'),
('61259204099','harp','7'),
('91596339099','flute','8'),
('66618086399','organ, flute','9'),
('96556507199','harp, violin','10');

INSERT INTO student (has_a_sibling_student,person_id) 
VALUES 
('Sasha Baldwin','1'),
('Andrew Byrd','2'),
('','3'),
('Brock Austin','4'),
('Megan Whitfield','5'),
('Maisie Douglas','6'),
('Oren Blackburn','7'),
('Omar Burns','8'),
('Xantha English','9'),
('Lila Payne','10');

INSERT INTO contact_detail_parents (student_id,name) 
VALUES 
('1','Lee Mendez'),
('2','Chandler Bishop'),
('3','Mufutau Harmon'),
('4','Clare Jimenez'),
('5','Yoko Shaffer'),
('6','Leslie Short'),
('7','Jerry Nixon'),
('8','Aline Nielsen'),
('9','Xerxes Parks'),
('10','Richard Baker');

INSERT INTO siblings (student_id,name,age,is_student) 
VALUES 
('1','Wesley Leon','16','Yes'),
('2','Maris Byrd','11','Yes'),
('3','','','No'),
('4','Allistair Mcpherson','12','Yes'),
('5','Ruth Cline','13','Yes'),
('6','Ali Kirk','8','Yes'),
('7','','','No'),
('8','','','No'),
('9','','','No'),
('10','Nehru Stewart','6','Yes');


INSERT INTO phone_number (phone_no) 
VALUES 
('1-773-797-5630'),
('164-1505'),
('565-0268'),
('1-518-540-5906'),
('1-756-882-0580'),
('590-0343'),
('1-930-430-2899'),
('418-0384'),
('1-418-527-3580'),
('1-507-516-4190');

INSERT INTO person_phone (phone_number_id,person_id)
VALUES 
('1','1'),
('2','1'),
('3','2'),
('4','4'),
('5','5'),
('6','6'),
('7','3'),
('8','2'),
('9','9'),
('10','10');

INSERT INTO contact_detail_parents_phone (phone_number_id,student_id)
VALUES 
('1','1'),
('2','1'),
('3','2'),
('4','3'),
('5','2'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','5');

INSERT INTO email (email) VALUES 
('Sed.auctor.odio@Etiamvestibulummassa.net'),
('vitae.erat.vel@ipsumdolorsit.co.uk'),
('leo.Cras@duiin.ca'),
('consectetuer@libero.ca'),
('augue@sed.net'),
('vel.quam@dapibus.edu'),
('nibh.Donec@tincidunt.com'),
('aliquet@egestasFusce.com'),
('ullamcorper.Duis.cursus@magna.net'),
('ligula.Aenean.euismod@magnaaneque.com');

INSERT INTO person_email (email_id,person_id)
VALUES 
('1','1'),
('2','1'),
('3','2'),
('4','4'),
('5','5'),
('6','6'),
('7','3'),
('8','2'),
('9','9'),
('10','10');

INSERT INTO contact_detail_parents_email (email_id,student_id)
VALUES 
('1','1'),
('2','1'),
('3','2'),
('4','3'),
('5','2'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','5');


INSERT INTO booking (date,start_time,end_time,place,booking_reference,sibling_discount,instructor_id,student_id) 
VALUES 
('02/04/2023','14:32:29','17:32:29','4867 Velit. Ave','199-08-0491','$12.64','1','1'),
('11/08/2023','13:32:29','16:32:29','Ap #964-8385 Eu, Rd.','689-18-0304','$79.09','2','2'),
('07/13/2023','10:32:29','10:32:29','157-4703 Risus. Av.','712-08-0059','$45.65','3','3'),
('12/08/2022','10:32:29','10:00:33','115-1414 Et Avenue','','','4','4'),
('09/08/2023','17:18:25','05:34:08','P.O. Box 738, 8110 Metus. St.','','','5','5'),
('12/21/2022','22:10:52','00:27:09','5901 Aliquet. Rd.','','','6','6'),
('01/29/2023','19:46:05','10:35:36','816 Lorem. Rd.','','','7','7'),
('08/20/2023','01:22:43','21:46:47','7548 Orci. Av.','','','8','8'),
('04/11/2023','15:39:54','12:18:46','P.O. Box 678, 2715 Rhoncus. Rd.','','','9','9'),
('03/18/2023','22:39:52','22:23:37','P.O. Box 902, 483 Vel, Rd.','','','10','10');

INSERT INTO lesson_type (type)
VALUES 
('individual lesson'),('group lesson'),('ensemble');

INSERT INTO skill_level (level,student_id)
VALUES 
('Beginner level','1'),('Intermediate level','2'),('Advanced level','3');

INSERT INTO lesson_price (price,type_id,skill_id) 
VALUES
('100$', (SELECT type_id FROM lesson_type WHERE type='individual lesson'),(SELECT skill_id FROM skill_level WHERE level='Beginner level')),
('140$', (SELECT type_id FROM lesson_type WHERE type='group lesson'),(SELECT skill_id FROM skill_level WHERE level='Intermediate level')),
('140$', (SELECT type_id FROM lesson_type WHERE type='ensemble'),(SELECT skill_id FROM skill_level WHERE level='Advanced level'));

INSERT INTO lesson (booking_id,lesson_price_id,duration,description,room_no,instructor_name)
VALUES
('1','2','2023-06-24 23:03:49','The lesson will be about .....','59','Austin Steele'),
('2','1','2022-10-25 01:16:00','The lesson will be about..','106','Mariam Jacobson'),
('3','2','2022-04-12 06:49:07','The lesson will be about..','82','Anjolie Shepard'),
('4','2','2023-05-21 02:57:02','The lesson will be about..','62','Abraham Hayden'),
('5','3','2022-03-30 08:43:34','The lesson will be about..','143','Kareem Knowles'),
('6','3','2022-11-28 00:42:55','The lesson will be about..','106','Jasper Curry'),
('7','2','2023-02-23 05:46:17','The lesson will be about..','51','Trevor Floyd'),
('8','1','2022-01-17 11:51:48','The lesson will be about..','58','Elton Keller'),
('9','1','2022-08-18 09:56:21','The lesson will be about...','136','Uriah Washington'),
('10','1','2022-09-24 14:16:32','The lesson will be about....','67','Mallory Drake');


INSERT INTO rental (number_of_ranted_ins,lease_period,start_at,end_at,student_id) 
VALUES 
('0','1','07/29/2022','05/14/2022','1'),
('0','1','04/09/2022','04/15/2022','2'),
('0','9','10/22/2023','11/13/2022','3'),
('2','3','04/03/2023','08/13/2023','4'),
('1','2','03/09/2023','07/22/2023','5'),
('1','11','11/01/2022','06/27/2023','6'),
('1','0','12/22/2021','12/18/2021','7'),
('2','12','05/25/2022','08/19/2023','8'),
('0','10','03/01/2023','05/22/2022','9'),
('1','11','06/06/2022','12/10/2021','10');


INSERT INTO instrument (rental_id,instrument_type,instrument_id,rental_fee) 
VALUES 
('1','piano','1','$70.25'),
('2','Viola','2','$90.64'),
('3','Flute','3','$34.32'),
('4','Trumpet','4','$58.80'),
('5','Guitar','5','$51.54'),
('6','Violin','6','$70.59'),
('7','Cornet','7','$94.31'),
('8','Keyboard','8','$84.08'),
('9','Drums','9','$46.99'),
('10','Clarinet','10','$84.26');