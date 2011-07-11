require 'hac'

module SuperModel
  module HacLibrary
    module RandomID
      protected
        def generate_id
          client = Hac::Client.new("UuidService")    
          response = client.request(:generateUuid, {:uuidCollection => "SuperModel", :uuidVersion => 4})
          response['uuid']
        end
    end
  end
end