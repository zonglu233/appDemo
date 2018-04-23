checkUserSigned = (context, redirect) ->
	if !Meteor.userId()
		Steedos.redirectToSignIn(context.path)


FlowRouter.route '/index',
	action: (params, queryParams)->
		BlazeLayout.render 'mainTemp',
			main: "mainTemp"

FlowRouter.route '/api/steedos_oauth2',
	action: (params, queryParams)->
		# mainUrl = "http://127.0.0.1:3000/"		# Apps项目
		# mainUrl = "http://127.0.0.1:3008/"			# Creator项目
		mainUrl = "https://beta.steedos.com/"		# Beta-net项目
		getTokenUri = mainUrl + "oauth2/token/"
		# HTTP.post(
			# getTokenUri,
			# {
			# 	headers: {
			# 		'Content-type': 'application/x-www-form-urlencoded'
			# 	},
			# 	params: {
			# 		grant_type: 'authorization_code',
			# 		client_id: '8ZA5TgxyTeGnpJxM8',
			# 		client_secret: 'MFWdb0lPV4xY6Bp7hCmEJRYfngiOGHX7RzzkV-RFiLH',
			# 		code: queryParams?.code
			# 	}
			# },
			# (err, result)->
			# 	if err
			# 		console.log err
			# 	if result
			# 		console.log result?.data
			# 		# getUserInfoUri = mainUrl + "oauth2/getIdentity/"
			# 		# HTTP.get(
			# 		# 	getUserInfoUri,
			# 		# 	{
			# 		# 		params: {
			# 		# 			access_token: result?.data?.access_token
			# 		# 		}
			# 		# 	},
			# 		# 	(err, result)->
			# 		# 		if err
			# 		# 			alert err
			# 		# 		if result
			# 		# 			alert "获取当前用户为：" + result.data.name
			# 		# )
			# )
