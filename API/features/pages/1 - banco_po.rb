class Banco
	include HTTParty
	base_uri "http://localhost:3000"
	#debug_output $stderr
	def initialize(body, headers)
		@options = {:body => body, :headers => headers}
	end

	def POST
		self.class.post("/bank", @options)
	end
	
	def GET(id)
		self.class.get("/bank/#{id}")
	end

	def GETALL
		self.class.get("/bank")
	end

	def PUT(id)
		self.class.put("/bank/#{id}", @options)
	end

end