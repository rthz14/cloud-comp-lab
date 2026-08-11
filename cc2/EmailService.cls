public with sharing class EmailService {

    /**
     * @description Sends a single HTML email to one or more recipients.
     * @param toAddresses List of recipient email addresses.
     * @param subject The email subject line.
     * @param body The HTML body content of the email.
     * @return Boolean True if sent successfully, false otherwise.
     */
    public static Boolean sendHtmlEmail(List<String> toAddresses, String subject, String body) {
        // Check for empty inputs to prevent governor limit waste
        if (toAddresses == null || toAddresses.isEmpty()) {
            System.debug('Email Service Error: No recipient addresses provided.');
            return false;
        }

        // Initialize the email object
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        // Configure email properties
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setHtmlBody(body);
        mail.setSaveAsActivity(false); // Set to true if sending to a Contact/Lead and you want it logged

        // Send the email
        try {
            List<Messaging.SendEmailResult> results = Messaging.sendEmail(new List<Messaging.SingleEmailMessage>{ mail });
            
            // Inspect the results
            if (results[0].isSuccess()) {
                System.debug('Email sent successfully.');
                return true;
            } else {
                System.debug('Email failed to send: ' + results[0].getErrors()[0].getMessage());
                return false;
            }
        } catch (Exception e) {
            System.debug('Exception occurred while sending email: ' + e.getMessage());
            return false;
        }
    }
}
