const mongoose = require("mongoose");

const WorkSchema = mongoose.Schema({
    workName:String,
workDesc :String,
workMainImage:String,
workGalImages:String,
workDate:String,
workTags:String,
workCatId: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "WorkCatSchema"
}
}, { 
    versionKey: false,
    toJSON: { virtuals: true },
    id: false
}); 


WorkSchema.virtual("WorkCatSchema", { // category = name of the virtual field.
    ref: "WorkCatSchema", // Model of the joined collection
    localField: "workCatId", // Name of the local field to join.
    foreignField: "_id", // Name of the remote field to join,
    justOne: true // Create an object and not an array
});
const Work = mongoose.model("Work", WorkSchema, "works"); 

module.exports = Work;
