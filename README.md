# ContactForm
A website designed to save contact data of the interested users.

## SETUP 
1. Clone the git repository.
2. Inside the ContactForm folder you find two folders:
   * contact_frontend
   * contact_backend
3. Navigate to the contact_backend folder on the linux command line.
4. Run the following commands:
   * bundle install
   * rails s
5. Now open the contact_frontend using the Files system on the system.
6. Double click on the index.html.
7. You can find the desired form appearing on the default browser of your system.
8. You would find the option to choose between languages i.e., English or German.
9. Fill all the details and click on the send message button.
10. It redirects to http://localhost:3000/api/v1/contact/create and hence saving the contact data to the database.
11. Once the data is saved an email is sent to "info@ajackus.com".
12. You can view the list of all the contacts added on the "http://localhost:3000/api/v1/contact/index.json" page.



-Thank You
