*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Open mulai
    Open Application    http://127.0.0.1:4723/wd/hub
    ...    platformName=android
    ...    appium:platformVersion=12
    ...    appium:deviceName=EYWCQS7H8LPBSOK7
    ...    appium:newCommandTimeout=3600
    ...    appium:nativeWebScreenshot=true
    ...    appium:automationName=automationTest
    ...    appium:ensureWebviewsHavePages=true
    ...    appium:appActivity=id.co.bankraya.apps
    ...    appium:appPackage=id.co.bankraya.apps.MainActivity
    ...    appium:connectHardwareKeyboard=true

*** Test Cases ***
#POSITIVE
# Buat Saku Bujet
# # tc_sr_004.1
#     Open mulai
#     Click Element At Coordinates    540    2139
#     Wait Until Element Is Visible    xpath=(//android.widget.Button[@content-desc="Tambah Saku"])[1]
#     Click Element    xpath=(//android.widget.Button[@content-desc="Tambah Saku"])[1]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Buat Saku Bujet"]
#     Click Element    xpath=//android.widget.Button[@content-desc="Buat Saku Bujet"]
#     Click Element    xpath=//android.widget.ImageView/android.widget.EditText[1]
#     Input Text    xpath=//android.widget.ImageView/android.widget.EditText[1]    Parkir
#     Click Element    xpath=//android.widget.ImageView/android.widget.EditText[2]
#     Input Text    xpath=//android.widget.ImageView/android.widget.EditText[2]    2000
#     Click Element    xpath=//android.widget.Button[@content-desc="Buat Saku Bujet"]
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="1"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]

#NEGATIVE
Setoran Awal Melebihi Saldo
#tc_sr_005.1
    Open mulai
    Click Element At Coordinates    540    2139
    Wait Until Element Is Visible    xpath=(//android.widget.Button[@content-desc="Tambah Saku"])[1]
    Click Element    xpath=(//android.widget.Button[@content-desc="Tambah Saku"])[1]
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Buat Saku Bujet"]
    Click Element    xpath=//android.widget.Button[@content-desc="Buat Saku Bujet"]
    Click Element    xpath=//android.widget.ImageView/android.widget.EditText[1]
    Input Text    xpath=//android.widget.ImageView/android.widget.EditText[1]    Parkir
    Click Element    xpath=//android.widget.ImageView/android.widget.EditText[2]
    Input Text    xpath=//android.widget.ImageView/android.widget.EditText[2]    400000
    Element Should Be Disabled    xpath=//android.widget.Button[@content-desc="Buat Saku Bujet"]
    

