CREATE TABLE "address"
(
  "address_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "city" varchar(100),
  "zip" varchar(50),
  "street" varchar(250)
);


CREATE TABLE "person"
(
  "person_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "person_number" varchar(12) UNIQUE,
  "first_name" varchar(50),
  "middle_name" varchar(50),
  "last_name" varchar(50),
  "age" varchar(3),
  "address_id" int NOT NULL REFERENCES "address"
);

CREATE TABLE "instructor"
(
  "instructor_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "employment_id" varchar(100) UNIQUE NOT NULL,
  "instrument_can_teach" varchar(250),
  "person_id" int NOT NULL REFERENCES "person"
);

CREATE TABLE "student"
(
  "student_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "has_a_sibling_student" varchar(150),
  "person_id" int NOT NULL REFERENCES "person"
);

CREATE TABLE "contact_detail_parents"
(
  "student_id" int NOT NULL REFERENCES "student" ON DELETE CASCADE,
  "name" varchar(250),
  PRIMARY KEY("student_id")
);

CREATE TABLE "siblings"
(
  "sibling_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "student_id" int NOT NULL REFERENCES "student",
  "name" varchar(250),
  "age"  varchar(3),
  "is_student" varchar(100),
  "number_of_siblings" INT
);


CREATE TABLE "phone_number"
(
  "phone_number_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "phone_no" varchar(250) UNIQUE NOT NULL
);

CREATE TABLE "person_phone"
(
  "phone_number_id" int NOT NULL REFERENCES "phone_number" ON DELETE CASCADE,
  "person_id" int NOT NULL REFERENCES "person" ON DELETE CASCADE,
  PRIMARY KEY("phone_number_id", "person_id")
);

CREATE TABLE "contact_detail_parents_phone"
(
  "phone_number_id" int NOT NULL REFERENCES "phone_number" ON DELETE CASCADE,
  "student_id" int NOT NULL REFERENCES "contact_detail_parents" ON DELETE CASCADE,
  PRIMARY KEY("phone_number_id", "student_id")
);


CREATE TABLE "email"
(
  "email_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "email" varchar(250) UNIQUE NOT NULL
);

CREATE TABLE "person_email"
(
  "email_id" int NOT NULL REFERENCES "email" ON DELETE CASCADE,
  "person_id" int NOT NULL REFERENCES "person" ON DELETE CASCADE,
  PRIMARY KEY("email_id", "person_id")
);

CREATE TABLE "contact_detail_parents_email"
(
  "email_id" int NOT NULL REFERENCES "email" ON DELETE CASCADE,
  "student_id" int NOT NULL REFERENCES "contact_detail_parents" ON DELETE CASCADE,
  PRIMARY KEY("email_id", "student_id")
);


CREATE TYPE lesson_type AS ENUM ('individual lesson', 'group lesson', 'ensemble');


CREATE TYPE tl AS ENUM ('Beginner level', 'Intermediate level', 'Advanced level');

CREATE TABLE "skill_level"
(
  "skill_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "level" tl,
  "student_id" int NOT NULL REFERENCES "student"
);

CREATE TABLE "lesson_price"
(
  "lesson_price_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "price" VARCHAR(250),
  "genre" VARCHAR(250),
  "max_number_of_students" INT,
  "min_number_of_students" INT,
  "booked_seats" INT,
  "type" lesson_type,
  "skill_id" int NOT NULL REFERENCES "skill_level"
); 

CREATE TABLE "lesson"
(
  "lesson_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "lesson_price_id" int NOT NULL REFERENCES "lesson_price" ,
  "duration" date,
  "description" varchar(2000) NOT NULL,
  "room_no" varchar(150),
  "instructor_name" varchar(250)
);

CREATE TABLE "booking"
(
  "booking_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "date" date ,
  "start_time" time(4),
  "end_time" time(4),
  "place" varchar(250),
  "booking_reference" varchar(100),
  "sibling_discount" varchar(250),
  "instructor_id" int REFERENCES "instructor",
  "student_id" int REFERENCES "student",
  "lesson_id" int REFERENCES "lesson",
  "lesson_price_id" int REFERENCES "lesson_price"
);

CREATE TABLE "instrument"
(
  "instrument_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "instrument_type" VARCHAR(250),
  "instrument_ref" VARCHAR(100) UNIQUE NOT NULL,
  "rental_fee" VARCHAR(250)
); 

CREATE TABLE "rental"
(
  "rental_id" int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "number_of_ranted_ins" VARCHAR(1),
  "lease_period" VARCHAR(2),
  "start_at"  DATE,
  "end_at"    DATE,
  "student_id" int NOT NULL REFERENCES "student",
  "instrument_id" int REFERENCES "instrument"
); 