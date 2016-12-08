var requestify = require('requestify');

if (process.argv.length >= 3) {
	requestify.get('http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=' + process.argv[2] + '&api_key=51de025812af79cb70f4a872936181a0&format=json&limit=1')
		.then(function(response) {
			json = response.getBody();
			//console.log("%j", json);
			if (json.recenttracks.track[0]['@attr'].nowplaying == "true") {
				console.log(json.recenttracks.track[0].artist['#text'] + ' - ' + json.recenttracks.track[0].name);
			}
		}
	);
}
