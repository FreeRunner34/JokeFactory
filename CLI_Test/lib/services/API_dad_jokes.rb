
class APIdjokes

    def call_dad_joke
        uri = URI("https://icanhazdadjoke.com/")
    
        response = Net::HTTP.get_response(uri)
    
        parsed_response = JSON.parse(response.body)

        parsed_response["text"]
    end 

end 
