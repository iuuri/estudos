Feature('login');

Scenario('test something',  ({ I }) => {
    I.amOnPage('/')
    I.wait(10)
    I.click('.login')
    I.wait(10)
    I.click('#SubmitCreate')
    I.see('Invalid email address.')
});
