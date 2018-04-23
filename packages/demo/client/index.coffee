Template.mainTemp.events
	'click button.authLogin1':()->
		window.location = """
				http://127.0.0.1:3000/oauth2/?
				response_type=code&
				client_id=8ZA5TgxyTeGnpJxM8&
				redirect_uri=http://127.0.0.1:3099/api/steedos_oauth2&
				scope=email&
				state=123456
		"""
	'click button.authLogin2':()->
		window.location = """
				http://127.0.0.1:3008/oauth2/?
				response_type=code&
				client_id=8ZA5TgxyTeGnpJxM8&
				redirect_uri=http://127.0.0.1:3099/api/steedos_oauth2&
				scope=email&
				state=123456
		"""
	
	'click button.authLogin3':()->
		window.location = """
				https://beta.steedos.com/oauth2/?
				response_type=code&
				client_id=8ZA5TgxyTeGnpJxM8&
				redirect_uri=http://steedos.ticp.net:3081/api/steedos_oauth2&
				scope=email&
				state=123456
		"""