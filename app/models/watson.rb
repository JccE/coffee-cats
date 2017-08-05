class Watson 
	attr_reader :service
	def initialize 


# api_call =  "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/classify?api_key={ENV}&url=/cat4.jpg&version=2016-05-19"


		# @service = WatsonAPIClient::VisualRecognition.new(:api_key=>ENV["WATSON_API_KEY"], :version=>'2016-05-20')
	end

	def detect_kitty


		api_call =  "https://gateway-a.watsonplatform.net/visual-recognition/api/v3/classify?api_key=#{ENV['WATSON_API_KEY']}&url=https://www.petfinder.com/wp-content/uploads/2012/11/91615172-find-a-lump-on-cats-skin-632x475.jpg&version=2016-05-19"

		uri = URI.parse(api_call)
			# p uri 
		# ENV['WATSON_API_KEY']
		# Net::HTTP.get(uri)
		Excon.get(uri)
		# puts self.service.methods.sort
	 # puts service.getClassify('url'=>'/cat4.jpg')
	end

	def parse(args)
	  pp JSON.parse(args.body)
	end
end