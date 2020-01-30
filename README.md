# QA Code Test

### Setup
1. Clone this repo (if using git)
2. Create a new branch OR Rename your project "qa-interview-yourname"
3. Make sure your Ruby environment is using `ruby 2.3.3`.
4. Run the example feature file.  Make sure it runs correctly as you will build upon this test.
    - `bundle exec cucumber features/example.feature`
5. Create the tests below in order.  You will create tests by building on the files that are already set up in this project.

Homepage='http://www.myrapname.com/'

### Tests
Write an automated test to validate each of the following:
1. The input fields exist
2. A negative scenario using the input fields
3. Input data into the fields
4. Submit a name for male with a nickname and validate that the list has updated
5. Submit twice for a female with a last initial and validate that the most recent name has been prepended to the list