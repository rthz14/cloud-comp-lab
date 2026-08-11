List<String> recipients = new List<String>{'your-email@example.com'}; // Change to your email
String subject = 'Test Apex Email';
String body = '<h1>Success!</h1><p>The EmailService class is working.</p>';

// Call the utility class
Boolean isSuccess = EmailService.sendHtmlEmail(recipients, subject, body);
System.debug('Email execution status: ' + isSuccess);
