as before a site to show portfolio.

issue with category - retry on posts.


pages:
home
about (cv)
works
blog code | design | creative
contact

database design:

mongo db name:

{db} johnmogi

collections:

{c} works
workID (auto)
workName
workDesc
    workMainImage
workGalImages
workDate
workTags

{c} workCategories
workCatID (auto)
workID (fk)
workCatName

{c}posts
postID (auto)
postName
postDesc
postImage
postDate
postTags 

{c} postCats
postCatID (auto)
postID (fk)
postCatName

{c} users
userID (auto)
userName
userPassword
userMail
userPhone
 -userRole

leadForm  - store data in db

leadID
leadName
leadPhone
leadMail
leadDate
convertedToCustomer - bool

plan - make a commerce layer

{
 "workName":"Japnaese Blog"
 "workDesc":"Hit Search approached for a mutual client japanese food blog"
 "workMainImage":"1.jpg"
 "workGalImages":"1.jpg, 2.jpg"
 "workDate":"1-10-2020",
 "workTags":"wordpress, wp cpt, bootstrap"
 "workCat":"wordpress"
}