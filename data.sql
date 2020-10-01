add work
INSERT INTO `works` (`workID`, `workName`, `workDesc`, `workMainImage`, `workGalImages`, `workDate`, `workTags`) VALUES (NULL, 'tennis kfar-saba', 'simple tennis site, maintenance and execution. ', '1.jpg', '1.jpg, 2.jpg, 3.jpg', '2020-10-01 17:24:44.000000', 'wordpress, maintenance, tennis');
add cat
INSERT INTO `workCategories` (`workCatID`, `workID`, `workCatName`) VALUES (NULL, '1', 'Web Sites');
add user
INSERT INTO `users` (`userID`, `userName`, `userPassword`, `userMail`, `userPhone`, `userRole`) VALUES (NULL, 'izerobot', 'lazy monkey boy', 'anguru@gmail.com', '050-9382456', 'superAdmin');
add post
INSERT INTO `posts` (`postID`, `postName`, `postDesc`, `postImage`, `postDate`, `postTags`) VALUES (NULL, 'hello world', 'hi, this is a post', '1.jpg', '2020-10-01 17:30:04.000000', 'wellcome, blog code');
add post category
INSERT INTO `postCats` (`postCatID`, `postID`, `postCatName`) VALUES (NULL, '1', 'general');
add lead
INSERT INTO `leadForm` (`leadID`, `leadName`, `leadPhone`, `leadMail`, `leadDate`, `convertedToCustomer`) VALUES (NULL, 'johnny', '050-8282456', 'anguru@gmail.com', '2020-10-01 17:32:08.000000', '0');
