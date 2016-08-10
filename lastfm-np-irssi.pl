use strict;
use File::Basename;
use vars qw($VERSION %IRSSI);
$VERSION = "1.0";
%IRSSI = (
	authors     => "Fredrik Reveny",
	contact     => 'Chetic@(freenode|efnet|gmail|github|everywhere)',
	name        => "lastfm-np-irssi",
	date        => "20160810",
	description => 'A now-playing script which uses lastfm through nodejs',
	license     => "ISC",
	url         => "http://github.com/Chetic",
);

Irssi::settings_add_str("lastfm", "lastfm_user", "");
Irssi::command_bind('np', sub {
	my ($data, $server, $witem) = @_;
	my $user = Irssi::settings_get_str("lastfm_user");
	my $scriptdir = dirname(__FILE__);
	my $text = `node $scriptdir/app.js $user`;
	Irssi::active_win()->command("me :: $text");
}, 'lastfm');

