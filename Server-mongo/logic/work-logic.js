const dal = require("../dal");
const Work = require("../models/work");
// db.name doesn't work on linux?
const WorkCats = require("../models/workCat");


dal.connectAsync()
    .then(db => console.log("We're connected to johnmogidb on MongoDB."))
    .catch(err => console.log(err));

function addWorkAsync(work) {
    return work.save();
}

function getAllWorksAsync() {
    return new Promise((resolve, reject) => {
        Work.find({}, (err, works) => { 
            if (err) {
                reject(err);
                return;
            }
            resolve(works);
        });
    });
}

function getAllWorkCatsAsync() {
    return new Promise((resolve, reject) => {
        WorkCats.find({}, (err, cats) => { 
            if (err) {
                reject(err);
                return;
            }
            resolve(cats);
        });
    });
}

function getOneWorkAsync(_id) {
    return new Promise((resolve, reject) => {
        Work.findOne({ _id }, (err, work) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(work);
        });
    });
}

function getOneWorkCatAsync(_id) {
    return new Promise((resolve, reject) => {
        WorkCat.findOne({ _id }, (err, workCat) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(workCat);
        });
    });
}
function updateWorkAsync(work) {
    return new Promise((resolve, reject) => {
        Work.updateOne({ _id: work._id }, work, (err, info) => {
            if (err) {
                reject(err);
                return;
            }
            resolve(info.n ? work : null); // info.n - מספר המוצרים שנמצאו
        });
    });
}

function deleteWorkAsync(_id) {
    return new Promise((resolve, reject) => {
        Work.deleteOne({ _id }, (err, info) => {
            if (err) {
                reject(err);
                return;
            }
            resolve();
        });
    });
}

function getWorksWithCategoryAsync() {
    return Work.find({}).populate("WorkCat").exec();
}

function getCategoriesWithWorksAsync() {
    return WorkCat.find({}).populate("works").exec();
}

module.exports = {
    addWorkAsync,
    getAllWorksAsync,
    getAllWorkCatsAsync,
    getOneWorkAsync,
    getOneWorkCatAsync,
    updateWorkAsync,
    deleteWorkAsync,
    getWorksWithCategoryAsync,
    getCategoriesWithWorksAsync
};