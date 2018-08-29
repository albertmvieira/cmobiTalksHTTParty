class Bank
	include HTTParty
	base_uri "http://localhost:3000"
	
	def initialize(body)
		@options = {:body => body}
	end

	def postBank
		self.class.post("/bank", @options)
	end
	
	def getBank(id)
		self.class.get("/bank/#{id}")
	end

	def putBank(id)
		self.class.put("/bank/#{id}", @options)
	end

	def deleteBank(id)
		self.class.delete("/bank/#{id}")
	end
end
