component = require("component")

quai1 = component.proxy("34ae2068-43f4-4325-a186-32bf6cc90188")
quai2 = component.proxy("5ee9248a-c015-4ecf-b0f6-5094dec9dec3")
quai3 = component.proxy("f6980a13-bf49-4c09-9f66-6d676f5cd571")
detector1 = component.proxy("08dbb7bb-a638-4a81-b18b-072a1cb42df1")
detector2 = component.proxy("39cd5a2c-3e3f-48c5-b80f-dc464c020738")
detector3 = component.proxy("0e28d4c6-9dcc-44a5-bf66-f40819f0ab1a")

while true do

	local tag1 = detector1.getTag()
	local tag2 = detector2.getTag()
	local tag3 = detector3.getTag()
	
	if tag1 == "Ligne1" do
		quai1.horn()
		quai1.setThrottle(0)
		quai1.setBrake(1)
	
		while tag2 == "Ligne2" do
			os.sleep(3)
		end
	
		while tag3 == "Ligne3" do
			os.sleep(3)
		end
	
		os.sleep(120)
		quai1.horn()
		quai1.setBrake(0)
		quai1.setThrottle(1)
		tag1 = ""
	end
	os.sleep(1)
	
end