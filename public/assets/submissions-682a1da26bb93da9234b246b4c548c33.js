function pad2(t){return t>9?""+t:"0"+t}function countdown(t,e,s){request_button=e,submit_button=s,1!=active&&(active=!0,e.removeClass("btn-success").addClass("btn-default"),inner_html=e.html(),minutes=Math.floor(t/60),seconds=t%60,request_button.html("Valid for "+pad2(minutes)+":"+pad2(seconds)+" (click to redownload)"),submit_button.fadeIn(),setTimeout(update,1e3))}function update(){if(0!=seconds)seconds--;else{if(0==minutes)return request_button.removeClass("btn-default").addClass("btn-success"),request_button.html(inner_html),submit_button.fadeOut(),void(active=!1);minutes--,seconds=59}request_button.html("Valid for "+pad2(minutes)+":"+pad2(seconds)+" (click to redownload)"),setTimeout(update,1e3)}var minutes,seconds,request_button,submit_button,inner_html,active=!1;