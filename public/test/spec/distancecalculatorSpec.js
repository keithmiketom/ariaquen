describe("Distance Calculator", function() {
     it("Should Calculate Distance in KM Correctly", function() {
        expect(Calculator.getDistance(59.3293371,13.4877472,59.3225525,13.4619422)).toBe(1.6);
    })	
	  it("Should be able handle incorrect data type as Coordinates", function(){
        expect(function() {Calculator.getDistance(59.3293371,"I'm a bad Coordinate",59.3225525,13.4619422) }).toThrow(new Error("Invalid Coordinates"))
    })
	
})

