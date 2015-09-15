describe ::ActionSubscriber::RabbitConnection do

  describe '#connection_string ' do
      it 'parses the connection_string and returns option parameters' do
        ::ActionSubscriber.configure do |config|
          config.connection_string = 'amqp://localhost:5672'    
        end

        params =  ::ActionSubscriber::RabbitConnection.connection_string
       
        expect(params[:host]).to eq('localhost') 
        expect(params[:port]).to eq(5672) 
      end
  end
end
