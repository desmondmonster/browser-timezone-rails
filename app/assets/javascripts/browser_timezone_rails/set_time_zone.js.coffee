window.BrowserTZone ||= {}
BrowserTZone.setCookie = ->
  $.cookie "browser.timezone", jstz.determine_timezone().name(), { expires: 365, path: '/' }

jQuery ->
  BrowserTZone.setCookie()
