

  function include() {
    var head      = document.getElementsByTagName('head')[0];
    var script    = document.createElement('script');
    script.type   = 'text/javascript';
    script.src    = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js";
    script.onload = script.onreadystatechange = function() {
      console.log('onreadystatechange', script.onreadystatechange);
      makeRequest()
      // prevent memory leak in IE
      head.removeChild(script);
      script.onload = null;
    };
    head.appendChild(script);
  }
  

  function ukLocation(zipCode) {
    
    
    // document.querySelector("#GLUXMobilePostalCodeLink > a").dispatchEvent(
    //   document.createEvent("MouseEvents").initMouseEvent("click", true, true, window, 1, 0, 0, 0, 0,
    //   false, false, false, false, 0, null))
  
    document.querySelector("#GLUXMobilePostalCodeLink > a").dispatchEvent(new Event("touchend", { bubbles: true, cancelable: false, isTrusted: true }))
    
    // changedTouches: { clientX: 143.5238494873047, clientY: 884.0049438476562, force: 0, identifier: 0, pageX: 143.5238494873047, pageY: 884.0049438476562, radiusX: 30.263158798217773, radiusY: 30.263158798217773, rotationAngle: 0, screenX: 642.5390625, screenY: 546.921875, target: a.a-link-normal,}

    document.querySelector("#GLUXMobilePostalCodeLink > a").dispatchEvent(new Event("touchend", { bubbles: true, cancelable: false, isTrusted: true, cancelBubble: false}))
  
    // type: "click", canBubble: true, cancelable: true, view: window, detail: 0, screenX: 0, screenY: 0, clientX: 80, clientY: 20, ctrlKey: false, altKey: false, shiftKey: false, metaKey: false, button: 0, relatedTarget: null,

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  }


  function makeRequest() {

    url = 'https://www.amazon.co.uk/gp/delivery/ajax/address-change.html'

    data = JSON.stringify({
      'locationType': 'LOCATION_INPUT',
          'zipCode': 'Se146ef',
          'storeContext': 'generic',
          'deviceType': 'mobile',
          'pageType': 'Gateway',
          'actionSource': 'glow',
          'almBrandId': 'undefined'
      });
 
    var xhttp = new XMLHttpRequest();

    xhttp.open('POST', url);

    xhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=UTF-8');
    xhttp.setRequestHeader('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49');
    xhttp.setRequestHeader('viewport-width', '1278');
    xhttp.setRequestHeader('Host', 'www.amazon.co.uk');
    xhttp.setRequestHeader('Connection', 'keep-alive');
    xhttp.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
    xhttp.setRequestHeader('anti-csrftoken-a2z', 'gPEyD4jV7jHGbNAexAsKUIoQvXEwiNSOwFo3VfAAAAAMAAAAAGLPhJxyYXcAAAAA;hAQburVCSLlXy2uqtg9lK8QvCXBXwLD2A8Kfc6eVNr8pAAAAAGLPhJwAAAAB');

    xhttp.onreadystatechange = function() {
      console.log('readyState', xhttp.readyState, 'status code: ' , xhttp.status)
      if (xhttp.readyState === 4) {
        console.log('readyState Api done');
        
        if (xhttp.status === 200) {
          resolve(true);
          jQuery("#glow-ingress-single-line").load(location.href + " #glow-ingress-single-line");
        } else {
          reject(false);
        }
      }
    };
    xhttp.send(data);
    console.log('after send');
 
  }
  

