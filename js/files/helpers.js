


/**
 * Sitewide helper functions
 *
 */

//function to generate a url alias from "normal" string
function generateMachineName(urlText) {
  //remove any empy spaces at beginning and/or end of string
  urlText = urlText.trim();

  //replace all spaces with -
  while (urlText.indexOf(' ') >= 0) {
    urlText = urlText.replace(" ", "-");
  }

  //replace all -- with -
  while (urlText.indexOf('--') >= 0) {
    urlText = urlText.replace("--", "-");
  }

  return urlText.toLowerCase();
}