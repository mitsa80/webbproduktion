
/**
 * Sitewide helper functions
 *
 */

//function to generate a url alias from "normal" string
function generateMachineName(urlText) {
  //Remove the whitespace from the beginning and end of the string.
  urlText = urlText.trim();

  //replace all spaces with -
  while (urlText.indexOf(' ') >= 0) {
    urlText = urlText.replace(" ", "-");
  }
  
  
  //replace all ) with -
  while (urlText.indexOf(')') >= 0) {
    urlText = urlText.replace(")", "-");
  }
  
  //replace all ( with -
  while (urlText.indexOf('(') >= 0) {
    urlText = urlText.replace("(", "-");
  }

  //replace all -- with -
  while (urlText.indexOf('--') >= 0) {
    urlText = urlText.replace("--", "-");
  }

  return urlText.toLowerCase();
}

