require 'spec_helper'

describe "A Service" do
	it "requires a name" do
		service = Service.create()
		service2 = Service.create(name: "Saturday Service", description: 'Test description' )

		expect(service.valid?).to be_false
		expect(service2.valid?).to be_true
	end
	
	it "requires a unique name" do
		service = Service.create(name: 'Saturday Service', description: 'Test description')
		service2 = Service.create(name: service.name, description: 'Test description')

		expect(service.valid?).to be_true
		expect(service2.valid?).to be_false
	end

	it "requires a description" do
		service = Service.create(name: 'Saturday Service', description: 'Test description')
		service2 = Service.create(name: 'Invalid Service')

		expect(service.valid?).to be_true
		expect(service2.valid?).to be_false

	end
	
	it "rejects a description of less than 10 characters" do
		service = Service.create(name: 'Saturday Service', description: '1')
		service2 = Service.create(name: 'Saturday Service', description: 'Test description')

		expect(service.valid?).to be_false
		expect(service2.valid?).to be_true
	end

end