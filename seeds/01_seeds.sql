 TRUNCATE users, reservations, properties, property_reviews RESTART IDENTITY; 

INSERT INTO users (name, email, password) VALUES ('Afzaan', 'ahlfc@orkut.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
 ('Kaka', 'kaka@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Raul', 'raul@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Pepe', 'pepe@rm.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'StayHome', 'description', 'https://www.canadacrossroads.com/wp-content/uploads/2021/02/Cabin-in-the-city-Best-Airbnbs-in-Ontario-768x960.jpeg', 'https://www.pexels.com/photo/brown-wooden-center-table-584399/', 150, 4, 5, 3, 'Canada', '100 Villa Ave', 'Ottawa', 'Ontario', 'L1RM2A', 'T' ),
(2, 'RelaxHere', 'description', 'https://www.pexels.com/photo/photo-of-living-room-1457842/', 'https://image.shutterstock.com/image-photo/sunset-over-beachfront-homes-edisto-600w-230325928.jpg', 190, 2, 3, 2, 'Canada', '100 Beach Ave', 'Pickering', 'Ontario', 'M9t1d2', 'T'),
(3, 'FamilyHome', 'description', 'https://www.shutterstock.com/image-photo/beautiful-new-florida-house-palm-trees-795989929', 'https://www.shutterstock.com/image-photo/lisbon-traditional-house-picture-showing-portugal-606008267', 220, 6, 6, 5, 'Canada', '99 Waterbury Ave', 'Montreal', 'Quebec', 'G5G1LA', 'T');

INSERT INTO reservations (guest_id, property_id,start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14' );


INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1,3,3,3, 'messages'),
 (2,2,1,4, 'messages'),
 (3,1,2,5, 'messages');

