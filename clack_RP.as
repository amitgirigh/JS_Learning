function clock(str) {
	this.param = str;
	var myVar = 'me',
		func = function() {
			console.log(myVar+" = = = = = "+this.param);
		};

	return {
		myVar1: 'test2',
		myFunc: func
	};
}

var b = new clock("amit ");
b.myFunc();



// A car "class"
function Clock( _meridiem, _format, _clckFormat, _clockRefereshment ) 
{

	this.tst = function() { }
	this.test1 = function(){tst()}
 console.log(" meridia  = = =" + _meridiem.lenght + " = = = _format = " + _format.lenght+ " = =  = ==  = " +_clckFormat.indexOf("24"));
  this.meridiem = (_meridiem.length == 0)?" ":_meridiem;
  this.format = (_format.length == 0)?"default":_format.length;
  this.clockFormat  = (_clckFormat.indexOf("24") != -1)?"24":"12";
  this.clockRefereshment = (_clockRefereshment.length == 0)?1000:_clockRefereshment;
  console.log(" = = =Meridiem = = " + this.meridiem + " = = forma t= " + this.format +" = =  == Clock Format  = =" + this.clockFormat + " = =  = =clockRefereshment == " + this.clockRefereshment);
 // this.objDate = new Date();
  this.interval;
 // this.showClock;
  showClock();
 //this.showClock = function()
 function showClock()
  {
	  console.log(" = = == = I am inside the function  = = =");
	 this.interval = setInterval(function()
	  {
		var objDate = new Date();
	/*	var hrs = this.objDate.getHours();
		var mins = this.objDate.getMinutes();
		var sec = this.objDate.getSeconds(); */
		var hrs = objDate.getHours();
		var mins = objDate.getMinutes();
		var sec = objDate.getSeconds();
		console.log(" = = = = == = = ==  = = ="+hrs+":"+mins+":"+sec);
	}, 1000);
    console.log(" = = =" + this.meridiem + " " + this.format + " = = =" + this.clockFormat + " = = = = " + this.clockRefereshment);
  };
  
  this.startClock = function()
  {
	  console.log(" Start Clock = = =  ="+this.interval);	  
  };
  
  this.stopClock = function()
  {
	  console.log(" = = = = =Stop Clock  = = = " + this.interval);
  };
  
  return {
		start: this.startClock,
		stop: this.stopClock
	};
 
}