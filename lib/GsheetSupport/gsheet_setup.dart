import "package:gsheets/gsheets.dart";

var sheetId= "1uL30xjWrVICeQN-vIg_i4KWCdY9wP2RpMYGD47v4nkM";

var credential = r'''{
  "type": "service_account",
  "project_id": "gsheetcloudproject",
  "private_key_id": "7683c19490ce1c70620f3e8fd80f4312e7fe49f9",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDLH+M+sMjKwd53\nS+qN8BkuS+Vzn/BuonWveQ/XEV/wqoxTWCsVdgjIzhU+wDFVfjPJAfYUgYHsSh8O\nU8f2ViL725lxPCsjh3apdmXKaAhW2TrEE5euZovKFeDVTBY1NvGz6pcrLa8vzhhY\nS1DiQOrz+VotmPB1mcWsE+s0fPClqbgtkEVxn5fhdylKWSg1t76b/wuetehWFzjy\n7SpU7Hi2v1AoXDoKZDb36la6+IYr0jRUXWhZWD3noAG4PW0uBQ1rmlU3YzCC9n3g\njE55aKtM/2NkX+ZumOJ4dsr1LmbXjIy62EnO9C/R/3Vj4diRWiSgzUk2OYm2EQDt\na6HDf4YNAgMBAAECggEAFttyADA3DB/oR47eqFW8E6pdOddl4CE+cn5CQs6U9/lN\nHKTXhkz3vJb6K4tHkeoHbEdg+FpBc0Q8/ej+H7F+Ms65k9U0OoWIHBYzaqUtyQ4d\nT4qv3yNxeA5htEbhWeAirz8G/0gfBldgBHGHOsqY1db5p5dl+anR5WUBavDjSJTe\n+3o4CzvkDmS5dI9POkmSm+yvas1QgPkyk/Nz7/lePdaeAkt4UPjJpy8hvbEY/1CO\nNHs81aaHbTUs5DwpiEtRvw3A4qsqKi/Vd1d8OLx1BApBgjDs9Z6GLphi1K47vcdW\nL7W3oUnAjGruBUblDGMU1M6nrfS4NiGk6lSHDJpGmQKBgQDw60jfPhxjc0HjLttS\nDdJXRS3xSMgor64nobFHpxQcZZk9wqZiWzD6Eiz22OwUrQTxOQaVYUs6J+4nn2U7\nIyNShccVWZBDCgQZgLiswE/U3m3DUrzL7OYT1gQawd0dqNgkXUGWbZhkPIGfC/8E\ny6JIngx2ajJkGfetsiz4su8ziQKBgQDX1vKnv/AOCWRFmlUd6btjGq8At8bXkOYR\nST+1MK9z1ipSIi1E1TdLgzkRgc/zBXpXNonvz4lqMjWi9V/llqrqsX7LdYJvEe+Z\n3qTPcOwixlBhYz24CGljJnElaB9cz+925mnZLIeH2lh6wSOQf1MHHporwQTKDy17\nrEouPtVpZQKBgQCxNI8UTa455FQpU5TUpP/7WxIw8NTxQE98LS2lw5pCTOTLjbou\njF7ZAbd7FhGIH7+L4uMZy0e3DhnZoR+nwO/BSk8mQAuhk+NyEsFDp+zQaY8Y5Wmj\nIawWGQxJ1iDbKQ9aqBGPISu/RtYc84jvsQy8FyyZiQFpqcQJSg5UG+Ff6QKBgQDI\nQ+CSVTzfSUeIbVJcluoPYkrOV7ZffUp674P1El85E5Xg72UhYNQVdIQXAmN4EbUa\nBrilkeLmbf/mW9XGqK2dZWNIVJfZhsLR+grhjt0Kxwb91Z8Giod+P8Tr+FhhPW3q\n3I+Jug9mtekyvNHK2Nio2nQh9M4EzWBeR9XsYtCRIQKBgEMq7semMr/Jl0XPOw23\nAfabR1AyysjFRwOEKMy2meXH8dlIZH9KhDQWRnmmhL63t8HClJ3hw5gK59coQGt0\nBUcaypdPXsw0+QOPC7B0TmHzRQSQY7BeDeW2SaVoKxWRtWxAbfpebaes+hhB69IJ\nJ+Xs3Ab89dMFHnjFeyOcrY0y\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheet-cloud-project@gsheetcloudproject.iam.gserviceaccount.com",
  "client_id": "103714885253211663827",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheet-cloud-project%40gsheetcloudproject.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';


final gsheetInit = GSheets(credential);

var GsheetController;

Worksheet? UserDetails;
Worksheet? PurchaseDetails;
Worksheet? purchaseDetails1;

GsheetInit() async {
  GsheetController = await gsheetInit.spreadsheet(sheetId);

  UserDetails = await GsheetController.worksheetByTitle('Main Data Sheet');
  PurchaseDetails = await GsheetController.worksheetByTitle('Purchase Data Sheet');
  // purchaseDetails1 = await GsheetController.;
}