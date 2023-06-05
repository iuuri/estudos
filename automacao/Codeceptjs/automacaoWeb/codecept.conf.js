
/** @type {CodeceptJS.MainConfig} */
exports.config = {
  tests: './*_test.js',
  output: './output',
  helpers: {
    WebDriver: {
      url: 'http://automationpractice.pl/index.php',
      browser: 'chrome',
      show: true,
      waitForTimeout: 5000,
      desiredCapabilities: {
        chromeOptions:{

        }
      }
    }
  },
  include: {
    I: './steps_file.js'
  },
  name: 'automacaoWeb',
  bootstrap: null,
  teardown: null,
  mocha: {},
  plugins: {
    retryFailedStep:{
      enable: true
    },
    screenshotOnFail:{
      enable:true
    },
    wdio: {
      enabled: true,
      services: ['selenium-standalone']
    }

  }
}



