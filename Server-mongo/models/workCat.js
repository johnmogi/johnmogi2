const mongoose = require("mongoose");

// Schema: 
const WorkCatSchema = mongoose.Schema({
    workCatName: String
}, { 
    versionKey: false,
    toJSON: { virtuals: true },
    id: false
});

WorkCatSchema.virtual("works", {
    ref: "Work",
    localField: "_id",
    foreignField: "workCatId"
});

// Model: 
const WorkCat = mongoose.model("WorkCat", WorkCatSchema, "categories"); // WorkCat = Model Name, WorkCatSchema = Model Schema, categories = Collection Name

module.exports = WorkCat;