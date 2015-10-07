window.__nspeed = (callback) ->
  image_url = 'https://upload.wikimedia.org/wikipedia/commons/d/d9/Big_Bear_Valley,_California.jpg'
  image_size =  3422075 * 8

  image = new Image
  image.onload = ->
    finish_time = (new Date()).getTime()
    time_result = finish_time - start_time
    time_result_in_sec = time_result / 1000
    speed = ((image_size / time_result_in_sec) / (1024 * 1024)).toFixed(2)
    callback(speed)
    
  start_time = (new Date()).getTime()
  image.src = image_url + "?#{start_time}"
