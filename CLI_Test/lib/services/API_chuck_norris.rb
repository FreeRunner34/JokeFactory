
class APIChuck

    def call_chuck_norris_joke
        uri = URI("http://api.icndb.com/jokes/random")

        Net::HTTP.get_response(uri)
    
        response = Net::HTTP.get_response(uri)
    
        response.body
    
        JSON.parse(response)
        #turns data into hash 
    
        body = JSON.parse(response.body)
    
        puts body["text"]
    end 

end 