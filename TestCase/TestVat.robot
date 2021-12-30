*** settings ***
Library     SeleniumLibrary

*** Variables ***
${field1}   xpath=/html/body/app-root/app-landing-page/div/app-calculator/div/div/div[2]/div/div[1]/app-calculate-box/div/div/form/div[2]/app-input-number/div/div/div/input
${field2}   xpath=/html/body/app-root/app-landing-page/div/app-calculator/div/div/div[2]/div/div[1]/app-calculate-box/div/div/form/div[3]/div[2]/div/input
${field3}   xpath=/html/body/app-root/app-landing-page/div/app-calculator/div/div/div[2]/div/div[1]/app-calculate-box/div/div/form/div[4]/div[2]/div/input
${button1}   xpath=//button[@class='btn btn-primary btn-block py-12px']
${data1}	5000
${data2}	8.5



*** Keywords ***

*** Test Cases ***

TC_01 User input valid data should display result correctly
    Open Browser    url=https://www.itax.in.th/vat  browser=googlechrome
    Maximize Browser Window
    Input Text      ${field1}   ${data1}
    Sleep       1
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-cookie-consent/div/div/div/div[2]/img
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_01.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button
    

TC_02 User input valid data should display result correctly
    Input Text      ${field1}   Text=๕๐๐๐
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_02.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_03 User input String data cloud not input data at field1

    Input Text      ${field1}   Text=ห้าพันบาท
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_03.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_04 User input float data should display result correctly

    Input Text      ${field1}   Text=5000.5
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_04.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_05 User change data at field2 the calculate cloud work properly
 
    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   8
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_05.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_06 User input Thai number at field2 the calculate cloud work properly

    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   ๘
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_06.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_07 User input String data at field2 the calculate cloud not work

    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   แปด
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_07.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_08 User input float data at field2 should display result correctly

    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   8.5
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_08.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_09 User change data at field3 the calculate cloud work properly

    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   8.5
    Input Text      ${field3}   5
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_09.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_10 User input Thai number at field3 the calculate cloud work properly

    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   7
    Input Text      ${field3}   ๕
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_10.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_11 User input String data at field3 the calculate cloud not work

    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   7
    Input Text      ${field3}   five
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_11.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_12 User input float data at field3 should display result correctly

    Input Text      ${field1}   Text=5000
    Input Text      ${field2}   7
    Input Text      ${field3}   5.5
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_12.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_13 User input float data at field1 and field 2 should display result correctly
    
    Input Text      ${field1}   Text=5000.5
    Input Text      ${field2}   7.5
    Input Text      ${field3}   5
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_13.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button

TC_14 User input float data at field1, field2 and field3 should display result correctly

    Input Text      ${field1}   Text=5000.5
    Input Text      ${field2}   7.5
    Input Text      ${field3}   5.5
    Sleep       1
    Click Element   xpath=//button[@class='btn btn-primary btn-block py-12px']
    Sleep       3
    Capture Page Screenshot     C:/Users/Gergchai/Desktop/TestCase/TC_14.png
    Sleep       0.5
    Click Element   xpath=/html/body/app-root/app-landing-page/div/app-calculator-result/div/div/div[2]/div/div[2]/button
    Sleep       1
    Close Browser