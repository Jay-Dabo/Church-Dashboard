def service_attributes (overrides = {})
	{
		name: 'Saturday 5pm Service',
		description: 'This is the Saturday evening service at 5pm'
	}.merge(overrides)
end 

def campus_attributes (overrides = {})
	{
		name: 'Chelmsford - Mill Building',
		address1: '68 Princeton Street',
		address2: '',
		city: 'North Chelmsford',
		state: 'MA',
		postal_code: '01863',
		country: 'US',
		phone: '9782513999'
	}.merge(overrides)
end

def event_attributes (overrides = {})
	{
		name: 'Weekend Service',
		date: '2014-02-20',
		time: '17:41:25',
		attendance: 123,
		service_id: 1,
		campus_id: 2,
		room_id: 1
	}.merge(overrides)
end

def room_attributes (overrides = {})
	{
		name: "Green Room",
		description: "Kid's Harbor Pre-K - 1st Grade",
		capacity: 25,
		campus_id: 1
	}.merge(overrides)
end

def user_attributes (overrides = {})
	{
		name: "Bob Builder",
		email: "bob@email.com",
		password: "secret",
		password_confirmation: "secret"
	}.merge(overrides)
end
