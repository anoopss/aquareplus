ValidIP = false;
  $(document).ready(function(){
	  
	  $('#ip-range-radio').prop('checked',true);

	  
	  	  
	  $('#single-ip-radio').click(function(){
		  $('#ip-range-text-box-label,#ip-range-text-box').slideUp(250,"linear");
	  });
	  
	  $('#ip-range-radio').click(function(){
		  $('#ip-range-text-box-label,#ip-range-text-box').slideDown(250,"linear");
	  });
	  
	  var IPText,IPSeondText,IPType,i;  
	  $('#ip-form').submit(function (){  
		IPType =$("input[name=ip-type]:checked").val();
		if(IPType == "single")
			{
			IPText=$("input[name=start]").val();
			validateIP(IPText);
			if(ValidIP == false)
				{
				$("#start-ip-error").text('Invalid IP Address').show().fadeIn(1000);
				return false;
				}
			else
				{
				return true;
				}
			}
		else
			{
			IPText=$("input[name=start]").val();
			validateIP(IPText);
			if(ValidIP == false)
			{
			$("#start-ip-error").text('Invalid IP Address').show().fadeIn(1000);
			return false;
			}
			else
				{
				IPSecondText=$("input[name=end]").val();
				validateIP(IPSecondText);
				if(ValidIP == false)
				{
				$("#end-ip-error").text('Invalid IP Address').show().fadeIn(1000);
				return false;
				}
				else
					{
					return true;
					}
				}
			}
	  });
	  
  });
  
  function validateIP(ipAddress)
  {
	  ValidIP = false;
    ipParts = ipAddress.split(".");  
    if(ipParts.length==4){  
      for(i=0;i<4;i++){  
          
        TheNum = parseInt(ipParts[i]);  
        if(TheNum >= 0 && TheNum <= 255){}  
        else{break;}  
          
      }  
      if(i==4)ValidIP=true;   
    }  
  }