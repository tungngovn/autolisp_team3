Nhom3 :dialog {
	label = " Nh\U+1EADp th\U+00F4ng s\U+1ED1 ch\U+00EDnh c\U+1EE7a tr\U+1EE5c ";
	  	:image_button {
       		width=10;
       		aspect_ratio=2.0;
       		height=20;
       		color= 0;
       		key="anh";
       		allow_accept=true;
    	                      }
		aspect_ratio=0;
    	:row {
    	        :boxed_column{
    	                 label="Th\U+00F4ng s\U+1ED1 \U+1ED5 bi";
    	                 :popup_list {
				label="\U+0110\U+01B0\U+1EDDng k\U+00EDnh ng\U+00F5ng tr\U+1EE5c";
				key="dobi";
				edit_width=8;
				value = "";   
			             }

    	              	                     }
		:boxed_column{
			label="Th\U+00F4ng s\U+1ED1 b\U+00E1nh r\U+0103ng tr\U+1EE5 r\U+0103ng th\U+1EB3ng";
			:popup_list {
				label="\U+0110\U+01B0\U+1EDDng k\U+00EDnh trong";
				key="dbrt";
				edit_width=8;
				value = "";           // o day k dat thi hop thoai mac dinh gia tri dau tien
			            }
			:popup_list {
			label="Module";
			key="mbrt";
			edit_width=8;
			value = ""; 
			}
			:popup_list {
			label="S\U+1ED1 r\U+0103ng";
			key="zbrt";
			edit_width=8;
			value = ""; 
			}
			:popup_list {
            			label="B\U+1EC1 r\U+1ED9ng";
            			key="bbrt";
            			edit_width=8;
            			value = "" ;
			           }
                             }
		:boxed_column{
			label="Th\U+00F4ng s\U+1ED1 b\U+00E1nh r\U+0103ng tr\U+1EE5 r\U+0103ng nghi\U+00EAng";
			:popup_list {
				label="\U+0110\U+01B0\U+1EDDng k\U+00EDnh trong";
				key="dbrn";
				edit_width=8;
				value = "";           // o day k dat thi hop thoai mac dinh gia tri dau tien
			            }
			:popup_list {
			label="Module";
			key="mbr";
			edit_width=8;
			value = ""; 
			}
			
			:popup_list {
			label="G\U+00F3c nghi\U+00EAng";
			key="betar";
			edit_width=8;
			value = "";
			}
			:popup_list {
			label="S\U+1ED1 r\U+0103ng";
			key="zbr";
			edit_width=8;
			value = ""; 
			}


                       :popup_list {
            			label="B\U+1EC1 r\U+1ED9ng";
            			key="bbrn";
            			edit_width=8;
            			value = "" ;
			            }
                             }

		
	     }
	

	:row{
		//mesys11;
		ok1;
		cancel1;
		//help1;
	     }//row2
		//ok_cancel; 
}
ok1	:button {		
		label=">> Ti\U+1EBFp t\U+1EE5c v\U+1EBD";
		key="accept";
		width=21;
		fixed_width=true;
		is_default=true;
		alignment=centered;
	        }

cancel1 :button {
		label="Tho\U+00E1t ch\U+01B0\U+01A1ng tr\U+00ECnh";
		key="cancel";
		is_cancel=true;
		width=21;
		fixed_width=true;
		alignment=centered;
	        } 
 