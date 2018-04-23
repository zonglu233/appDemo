Package.describe({
	name: 'steedos:demo',
	version: '0.0.1',
	summary: 'Steedos demo system',
	git: ''
});


Npm.depends({
    'request':'2.40.0'
});

Package.onUse(function(api) {
	api.versionsFrom('1.0');
    api.use('coffeescript@1.0.17');
    api.use('blaze@2.1.9');
    api.use('templating@1.2.15');
    api.use('kadira:blaze-layout@2.3.0');
    api.use('kadira:flow-router@2.12.1');
    
    api.use('webapp', 'server');
    api.use('check', 'server');
    api.use('meteorhacks:async@1.0.0', 'server');
    api.use('simple:json-routes@2.1.0', 'server');

    api.use('http');

    api.addFiles('client/index.html', 'client');
    api.addFiles('client/index.coffee', 'client');

    api.addFiles('client/router.coffee', 'client');

    api.addFiles('server/server_callback.coffee', 'server');

});

