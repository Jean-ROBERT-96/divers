component = require("component")
sides = require("sides")

redstone = component.proxy("6e7b4628-2e4b-45de-80f5-32cce1810b06")
quai = component.proxy("f6980a13-bf49-4c09-9f66-6d676f5cd571")
detector1 = component.proxy("6514cff6-5ee6-4d85-9f76-49be4998370f")
detector2 = component.proxy("9cc426a9-6ea3-448e-8915-4fe3e43cb95e")
detector3 = component.proxy("cd788da4-fba9-4ba1-b67c-d0dc524e777a")

redstone.setOutput(sides.bottom, 0)

while true do
	local tag1 = detector1.getTag()
	local tag2 = detector2.getTag()
	local tag3 = detector3.getTag()
	
	if tag3 == "Ligne3" then
		quai.horn()
		quai.setThrottle(0)
		quai.setBrake(1)
		redstone.setOutput(sides.bottom, 25)
		os.sleep(120)
	
		while tag1 == "Ligne1" do
			os.sleep(1)
			tag1 = detector1.getTag()
		end
	
		while tag2 == "Ligne2" do
			os.sleep(1)
			tag2 = detector2.getTag()
		end
	
		quai.horn()
		quai.setBrake(0)
		quai.setThrottle(1)
		tag3 = ""
		os.sleep(5)
		redstone.setOutput(sides.bottom, 0)
	end
	os.sleep(1)	
end