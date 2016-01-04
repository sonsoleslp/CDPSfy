


	var mongoose = require('mongoose');


	// mongoose.connect('mongodb://localhost:27017/tracks');
	mongoose.connect('mongodb://mongohost:27017/tracks');
	var db = mongoose.connection;
	db.on('error', console.error.bind(console, 'connection error:'));


	var tracksSchema = mongoose.Schema({
	    name: String,
	    ext: String,
	    caratula: String

	});
	var Track = mongoose.model('Track', tracksSchema);
	exports.Track = Track


	var usersSchema = mongoose.Schema({
	    name: String,
	    password: String,
	   playlists: String

	});

	var Users =  mongoose.model('Users', usersSchema);
	exports.Users = Users
