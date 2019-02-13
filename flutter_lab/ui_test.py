# $ pip install Appium-Python-Client // get appium library
# $ appium -p 8888 // run appium server
# $ python ui_test.py
# ios app location : /Users/[name]/Library/Developer/CoreSimulator/Devices/[device id]/data/Containers/Bundle/Application/[app id]/Runner.app

import unittest
import os
from random import randint
from appium import webdriver
from appium.webdriver.common.touch_action import TouchAction
from time import sleep

class SimpleIOSTests(unittest.TestCase):

    def setUp(self):
        # set up appium
        app = os.path.abspath('/Users/vincent/Library/Developer/CoreSimulator/Devices/DA49718A-BA57-4F54-84CF-CEBE811B4B3B/data/Containers/Bundle/Application/1AB2A7C9-8965-429A-83EA-9D398778EEE5/Runner.app')
        self.driver = webdriver.Remote(
            command_executor='http://127.0.0.1:8888/wd/hub',
            desired_capabilities={
                'app': app,
                "automationName": "XCUITest",
                'platformName': 'iOS',
                'platformVersion': '12.1',
                'deviceName': 'iPhone Simulator'
            })

    def test_click(self):
        sleep(2)
        el = self.driver.find_element_by_accessibility_id("Playground")
        el.click()

    def test_scroll(self):
        sleep(2)
        xpath = "//XCUIElementTypeApplication[@name='flutter_lab']/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther[3]"
        el = self.driver.find_element_by_xpath(xpath)
        location = el.location
        self.driver.swipe(start_x=location['x'], start_y=location['y'], end_x=0, end_y=-300, duration=100)


    # def tearDown(self):
    #     self.driver.quit()

if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(SimpleIOSTests)
    unittest.TextTestRunner(verbosity=2).run(suite)