
exports.destroy = function(req,res){
	delete req.session.user
	res.redirect(req.session.redir.toString())
}

exports.loginRequired = function(req,res,next){
	if(req.session.user){
		next()
	}else{
		res.redirect('/user/login')
	}
}
/*
exports.dump = function (req, res) {

	track_model.Track.find(function (err, tracks) {

		 	tracks.forEach(function(track){
		 		track.remove()
		 	})
		 
		 	res.redirect('/tracks');
			


		
	});
	track_model.Users.find(function (err, tracks) {

		 	tracks.forEach(function(track){
		 		track.remove()
		 	})
		 req.session.user = null
	


		
	});

};*/