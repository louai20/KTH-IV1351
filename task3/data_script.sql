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
('YES','1'),
('YES','2'),
('NO','3'),
('YES','4'),
('YES','5'),
('YES','6'),
('YES','7'),
('YES','8'),
('YES','9'),
('YES','10');

INSERT INTO contact_detail_parents (student_id,name) 
VALUES 
('1','Lee Mendez'),
('2','Wesley Leon'),
('3','Mufutau Harmon'),
('4','Clare Jimenez'),
('5','Yoko Shaffer'),
('6','Leslie Short'),
('7','Jerry Nixon'),
('8','Aline Nielsen'),
('9','Xerxes Parks'),
('10','Richard Baker');

INSERT INTO siblings (student_id,name,age,is_student,number_of_siblings) 
VALUES 
('1','Wesley Leon','16','YES','3'),
('1','Maris Byrd','11','YES','3'),
('1','Maris FDSA','11','YES','3'),
('4','Chandler Bishop','17','NO','2'),
('4','Allistair Mcpherson','12','YES','2'),
('5','Ruth Cline','13','YES','1'),
('6','Ali Kirk','8','YES','1'),
('7','Cora P. RidHle','15','YES','1'),
('8','Cora Q. RidGle','15','NO','1'),
('9','Cora GSDA. RiHFSGDle','15','YES','1'),
('10','Nehru Stewart','6','YES','1');


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



INSERT INTO skill_level (level,student_id)
VALUES 
('Beginner level','1'),('Intermediate level','2'),('Advanced level','3');

INSERT INTO lesson_price (price,genre,max_number_of_students,min_number_of_students,booked_seats,type,skill_id) 
VALUES
('100$','Classical music','1','1','1','individual lesson',(SELECT skill_id FROM skill_level WHERE level='Beginner level')),
('100$','Musical music','50','15','7','group lesson',(SELECT skill_id FROM skill_level WHERE level='Intermediate level')),
('140$','Classical music','150','30','149','ensemble',(SELECT skill_id FROM skill_level WHERE level='Advanced level')),
('100$','Musical music','1','1','1','individual lesson',(SELECT skill_id FROM skill_level WHERE level='Intermediate level')),
('140$','Musical music','200','45','200','ensemble',(SELECT skill_id FROM skill_level WHERE level='Advanced level')),
('140$','Musical music','200','40','50','ensemble',(SELECT skill_id FROM skill_level WHERE level='Advanced level')),
('140$','Pop rock music','250','50','248','ensemble',(SELECT skill_id FROM skill_level WHERE level='Advanced level'));

INSERT INTO lesson (lesson_price_id,duration,description,room_no,instructor_name)
VALUES
('2','2022-12-07','The lesson will be about .....','59','Austin Steele'),
('1','2022-12-09','The lesson will be about..','106','Mariam Jacobson'),
('3','2022-12-08','The lesson will be about..','82','Anjolie Shepard'),
('4','2022-12-06','The lesson will be about..','62','Abraham Hayden'),
('3','2022-12-10','The lesson will be about..','143','Kareem Knowles'),
('3','2022-12-12','The lesson will be about..','106','Jasper Curry'),
('6','2022-12-14','The lesson will be about..','51','Trevor Floyd'),
('5','2022-12-15','The lesson will be about..','58','Elton Keller'),
('6','2022-12-16','The lesson will be about...','136','Uriah Washington'),
('2','2022-12-16','The lesson will be about....','67','Mallory Drake');

INSERT INTO booking (date,start_time,end_time,place,booking_reference,sibling_discount,instructor_id,student_id,lesson_id,lesson_price_id) 
VALUES 
('02/04/2022','14:32:29','17:32:29','4867 Velit. Ave','199-08-0491','$12.64','1','1','2','2'),
('11/08/2022','13:32:29','16:32:29','Ap #964-8385 Eu, Rd.','689-18-0304','$79.09','2','2','8','1'),
('07/13/2022','10:32:29','10:32:29','157-4703 Risus. Av.','712-08-0059','$45.65','3','3','7','3'),
('08/08/2022','10:32:29','10:00:33','115-1414 Et Avenue','','','4','4','4','1'),
('08/08/2022','17:18:25','05:34:08','P.O. Box 738, 8110 Metus. St.','','','5','5','3','2'),
('08/21/2022','22:10:52','00:27:09','5901 Aliquet. Rd.','','','6','6','4','1'),
('08/29/2022','19:46:05','10:35:36','816 Lorem. Rd.','','','8','7','6','3'),
('08/20/2022','01:22:43','21:46:47','7548 Orci. Av.','','','8','8','6','3'),
('08/11/2022','15:39:54','12:18:46','P.O. Box 678, 2715 Rhoncus. Rd.','','','8','9','2','2'),
('08/18/2022','22:39:52','22:23:37','P.O. Box 902, 483 Vel, Rd.','','','10','10','3','2');

INSERT INTO instrument (instrument_type,instrument_ref,rental_fee) 
VALUES 
('piano','1','$70.25'),
('Viola','2','$90.64'),
('Flute','3','$34.32'),
('Trumpet','4','$58.80'),
('Guitar','5','$51.54'),
('Violin','6','$70.59'),
('Cornet','7','$94.31'),
('Keyboard','8','$84.08'),
('Drums','9','$46.99'),
('Clarinet','10','$84.26');

INSERT INTO rental (number_of_ranted_ins,lease_period,start_at,end_at,student_id,instrument_id) 
VALUES 
('0','1','07/29/2022','05/14/2022','1','1'),
('0','1','04/09/2022','04/15/2022','2','2'),
('0','9','10/22/2023','11/13/2022','3','3'),
('2','3','04/03/2023','08/13/2023','4','5'),
('1','2','03/09/2023','07/22/2023','5','6'),
('1','11','11/01/2022','06/27/2023','6','8'),
('1','0','12/22/2021','12/18/2021','7','9'),
('2','12','05/25/2022','08/19/2023','8','10'),
('0','10','03/01/2023','05/22/2022','9','7'),
('1','11','06/06/2022','12/10/2021','10','4');