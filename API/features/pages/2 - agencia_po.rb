class Agencia
	include HTTParty
	base_uri $env['base_uri']
	#debug_output $stdout
	def initialize(body, headers)
		@options = {:body => body, :headers => headers}
	end

	def POST
		self.class.post("/agency", @options)
	end
	
	def GET(id)
		self.class.get("/agency/#{id}")
	end

	def GETALL
		self.class.get("/agency")
	end

	def PUT(id)
		self.class.put("/agency/#{id}", @options)
	end

end