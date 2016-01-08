
	var mongoose = require('mongoose');

	var mongoUrl = 'mongodb://mongohost:27017/tracks'
	//var mongoUrl = 'mongodb://localhost:27017/tracks'
	var connectWithRetry = function() {
  return mongoose.connect(mongoUrl, function(err) {
    if (err) {
      console.error('Failed to connect to mongo on startup - retrying in 5 sec', err);
      setTimeout(connectWithRetry, 5000);
    }
  });
};
connectWithRetry();

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
