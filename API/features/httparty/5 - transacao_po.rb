class Transacao
	include HTTParty
	base_uri $env['base_uri']
	#debug_output $stdout
	def initialize(body, headers)
		@options = {:body => body, :headers => headers}
	end

	def POST
		self.class.post("/transaction", @options)
	end
	
	def GET(id)
		self.class.get("/transaction/#{id}")
	end

	def GETALL
		self.class.get("/transaction")
	end

end