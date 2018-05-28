
var clock = function() {
      var currentTime = new Date();
      var hour = currentTime.getHours();
      var mins = currentTime.getMinutes();
      var secs = currentTime.getSeconds();

      var totalTime = hour + ":" + mins + ":" + secs;

        document.getElementById('time').innerHTML = totalTime;

        if (secs < 10 ) {
            secs = "0" + secs
        }
     setTimeout('clock()', 1000)
}

clock();
