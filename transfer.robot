*** Setting ***
Library    AppiumLibrary
Library    Telnet
Library    XML
Task Timeout    2 minutes

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
Login
    Open mulai
    Click Element    xpath=//android.widget.Button[@content-desc="Mulai Sekarang"]
    Wait Until Element Is Visible    xpath=//android.view.View/android.widget.EditText
    Click Element    xpath=//android.view.View/android.widget.EditText
    Input Text    xpath=//android.view.View/android.widget.EditText    YourNumber
    Click Element    xpath=//android.widget.Button[@content-desc="Lanjut"]
    Wait Until Element Is Visible    xpath=//android.view.View/android.widget.EditText
    Click Element    xpath=//android.view.View/android.widget.EditText
    Input Text    xpath=//android.view.View/android.widget.EditText    YourPassword
    Click Element    xpath=//android.widget.Button[@content-desc="Masuk"]
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Nanti Saja"]
    Click Element    xpath=//android.widget.Button[@content-desc="Nanti Saja"]

#POSITIVE

# Transfer Bank Dengan BI-Fast
# # tc_tb_003.1
#     Open mulai
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Click Element    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Wait Until Element Is Visible    xpath=//android.view.View/android.widget.ImageView
#     Click Element    xpath=//android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.ImageView[2]
#     Input Text    xpath=//android.view.View/android.widget.ScrollView/android.widget.ImageView[2]    bank ne
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="BANK NEGARA INDONESIA"]
#     Click Element    xpath=//android.view.View[@content-desc="BANK NEGARA INDONESIA"]
#     Click Element    xpath=//android.view.View/android.widget.EditText
#     Input Text    xpath=//android.view.View/android.widget.EditText    YourBankNumber
#     Click Element    xpath=//android.view.View[@content-desc="Cek"]
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Click Element    xpath=//android.widget.ImageView[@content-desc="BI-Fast"]
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Pilih metode transfer"]
#     Click Element At Coordinates    724    2072
#     Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button
#     Click Element    xpath=//android.widget.Button[@content-desc="1"]
#     Click Element    xpath=//android.widget.Button[@content-desc="0"]
#     Click Element    xpath=//android.widget.Button[@content-desc="000"]
#     Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Transfer"]
#     Click Element    xpath=//android.widget.Button[@content-desc="Transfer"]
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]

# Transfer Bank Lain Tanpa BI-Fast
#tc_tb_002.1
#     Open mulai
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Transfer"]
    # Click Element    xpath=//android.widget.ImageView[@content-desc="Transfer"]
    # Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
    # Click Element    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
    # Click Element    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
    # Wait Until Element Is Visible    xpath=//android.view.View/android.widget.ImageView
    # Click Element    xpath=//android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.ImageView[2]
    # Input Text    xpath=//android.view.View/android.widget.ScrollView/android.widget.ImageView[2]    jago
    # Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
    # Click Element    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
    # Click Element    xpath=//android.view.View/android.widget.EditText
    # Input Text    xpath=//android.view.View/android.widget.EditText    YourBankNumber
    # Click Element    xpath=//android.view.View[@content-desc="Cek"]
    # Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
    # Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
    # Wait Until Element Is Visible    xpath=//android.widget.Button
    # Click Element    xpath=//android.widget.Button[@content-desc="1"]
    # Click Element    xpath=//android.widget.Button[@content-desc="0"]
    # Click Element    xpath=//android.widget.Button[@content-desc="000"]
    # Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
    # Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Transfer"]
    # Click Element    xpath=//android.widget.Button[@content-desc="Transfer"]
    # Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="1"]
    # Click Element    xpath=//android.view.View[@content-desc="0"]
    # Click Element    xpath=//android.view.View[@content-desc="0"]
    # Click Element    xpath=//android.view.View[@content-desc="0"]
    # Click Element    xpath=//android.view.View[@content-desc="0"]
    # Click Element    xpath=//android.view.View[@content-desc="0"]
    # Click Element    xpath=//android.view.View[@content-desc="0"]

# Transfer Sesama Raya
#tc_tb_001.1
#     Open mulai
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Click Element    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Wait Until Element Is Visible    xpath=//android.view.View/android.widget.ImageView
#     Click Element    xpath=//android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.ImageView[2]
#     Input Text    xpath=//android.view.View/android.widget.ScrollView/android.widget.ImageView[2]    raya
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Bank Raya Indonesia"]
#     Click Element    xpath=//android.view.View[@content-desc="Bank Raya Indonesia"]
#     Click Element    xpath=//android.view.View/android.widget.EditText
#     Input Text    xpath=//android.view.View/android.widget.EditText    YourBankNumber
#     Click Element    xpath=//android.view.View[@content-desc="Cek"]
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button
#     Click Element    xpath=//android.widget.Button[@content-desc="1"]
#     Click Element    xpath=//android.widget.Button[@content-desc="0"]
#     Click Element    xpath=//android.widget.Button[@content-desc="000"]
#     Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Transfer"]
#     Click Element    xpath=//android.widget.Button[@content-desc="Transfer"]
#     # Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="1"]
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]
#     Click Element    xpath=//android.view.View[@content-desc="0"]

#NEGATIVE

# Invalid Rekening
# #tc_tb_001.7
#     Open mulai
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Click Element    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Wait Until Element Is Visible    xpath=//android.view.View/android.widget.ImageView
#     Click Element    xpath=//android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.ImageView[2]
#     Input Text    xpath=//android.view.View/android.widget.ScrollView/android.widget.ImageView[2]    jago
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
#     Click Element    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
#     Click Element    xpath=//android.view.View/android.widget.EditText
#     Input Text    xpath=//android.view.View/android.widget.EditText    12345
#     Click Element    xpath=//android.view.View[@content-desc="Cek"]
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Rekening tidak ditemukan, cek lagi detail penerima"]

# Nominal Transfer < 10.000
# #tc_tb_001.22
#     Open mulai
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Click Element    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Wait Until Element Is Visible    xpath=//android.view.View/android.widget.ImageView
#     Click Element    xpath=//android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.ImageView[2]
#     Input Text    xpath=//android.view.View/android.widget.ScrollView/android.widget.ImageView[2]    jago
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
#     Click Element    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
#     Click Element    xpath=//android.view.View/android.widget.EditText
#     Input Text    xpath=//android.view.View/android.widget.EditText    YourBankNumber
#     Click Element    xpath=//android.view.View[@content-desc="Cek"]
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button
#     Click Element    xpath=//android.widget.Button[@content-desc="7"]
#     Click Element    xpath=//android.widget.Button[@content-desc="000"]
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Minimal Transfer Rp 10.000"]

# Nominal Transfer > Saldo
# #tc_tb_001.21
#     Open mulai
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Transfer"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Click Element    xpath=//android.widget.Button[@content-desc="+ Transfer Baru"]
#     Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Click Element    xpath=//android.widget.ImageView[@content-desc="Pilih bank penerima"]
#     Wait Until Element Is Visible    xpath=//android.view.View/android.widget.ImageView
#     Click Element    xpath=//android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.widget.ImageView[2]
#     Input Text    xpath=//android.view.View/android.widget.ScrollView/android.widget.ImageView[2]    jago
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
#     Click Element    xpath=//android.view.View[@content-desc="BANK JAGO, TBK"]
#     Click Element    xpath=//android.view.View/android.widget.EditText
#     Input Text    xpath=//android.view.View/android.widget.EditText    YourBankNumber
#     Click Element    xpath=//android.view.View[@content-desc="Cek"]
#     Wait Until Page Does Not Contain Element    xpath=//android.view.View[@content-desc="Mohon tunggu, ya.."]    timeout=20
#     Click Element    xpath=//android.widget.Button[@content-desc="Lanjutkan"]
#     Wait Until Element Is Visible    xpath=//android.widget.Button
#     Click Element    xpath=//android.widget.Button[@content-desc="4"]
#     Click Element    xpath=//android.widget.Button[@content-desc="0"]
#     Click Element    xpath=//android.widget.Button[@content-desc="000"]
#     Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Saldo tidak mencukupi"]
    
    