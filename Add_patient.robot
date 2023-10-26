*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${Browser}    chrome
${URL}    https://gor-pathology.web.app/
${Username}    test@kennect.io
${Password}    Qwerty@1234
${dashbord_menu}    (//span[normalize-space()='Dashboard'])[1]
${username_box}    //input[@name='email']
${Password_box}    //input[@name='password']
${login_Button}    //*[@id="root"]/div/div/form/button[1]/span[1]
${test_list}    //input[@id='patient-test']
${test_AFP}    //li[@id='patient-test-option-1']//input[@type='checkbox']
${discount_menu}    //em[normalize-space()='None']
${discount_percentage}    //li[normalize-space()='10%']
${Test_component}    //input[@id='Tests']
${Add_patient}    //*[@id="root"]/div/main/div[2]/div[1]/a[2]/button/span[1]/span/img
${name}    //input[@name='name']
${email}    //input[@name='email']
${contact}    //input[@name='phone']
${genral_info}    //*[@id="root"]/div/main/div[2]/div[2]/div/div[2]/div[2]/button[2]/span[1]/span/img
${height}    //input[@name='height']
${weight}    //input[@name='weight']
${age}    //input[@name='age']
${gender}    //li[normalize-space()='Male']
${BP_syn}    //input[@name='systolic']
${BP_dia}    //input[@name='diastolic']
${add_task}    //*[@id="root"]/div/main/div[2]/div[2]/div/div[2]/div[2]/button[2]/span[1]/span/img
${test_name}    //li[@id='patient-test-option-1']//input[@type='checkbox'][0]
${net_discount}    //li[@id='patient-test-option-1']//input[@type='checkbox']
${lab_recom}    //li[@id='patient-tests-labs-option-0']//input[@type='checkbox']
${doctor_recom}    //li[@id='mui-44262-option-1']
${doc_comission}    //li[@id='mui-44262-option-1']
${final_add_patient}    //span[@class='MuiButton-label jss187']
${equip}    //span[@class='material-icons MuiIcon-root']
${check_button}    //span[contains(text(),'check')]

*** Test Cases ***
Functional Test One Patient lab flow
    Open website and login to the page



*** Keywords ***
Open website and login to the page
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    3s
    Input Text    ${username_box}    ${Username}
    Input Text    ${Password_box}    ${Password}
    Click Element    ${login_Button}
    Sleep    5s
    Test Cost Calculator
    Add Patient and create Test
    Update Patient Information
    Update Test calculator


Test Cost Calculator
    Click Button    //button[@title='Open']//span[@class='MuiIconButton-label']//*[name()='svg']
    Click Button    ${test_list}
    Select Checkbox    ${test_AFP}
    Click Button    ${discount_menu}

Add Patient and create Test
    Sleep    2s
    Click Image    //*[@id="root"]/div/nav/div[2]/div/div/div/div[2]/ul/a[2]/div/div[1]/img
    Click Image    ${Add_patient}
    

    
Update Patient Information
    Input Text    ${name}    Rrrp
    Input Text    ${email}    rupp.Kennect@gmail.com
    Input Text    ${contact}    8624897444
    Click Image    ${genral_info}
    Input Text    ${height}    156
    Input Text    ${Weight}    76
    click Element    //*[@id="mui-component-select-gender"][0]
    Sleep    3s
    Input Text    ${age}    28
    Input Text    ${BP_syn}    120
    Input Text    ${BP_dia}    70
    Click Image    ${add_task}
    
Update Test calculator
    Click Element    //*[@id="react-beautiful-dnd-announcement-0"]
    Click Element    //div[@id='patient-test-popup']/ul/li[2]//div[@class='MuiBox-root jss1184']
    Click Element    //div[@class='MuiInputBase-root MuiOutlinedInput-root Mui-focused Mui-focused MuiInputBase-formControl']//div[@role='button']
    Click Button    ${equip}
    Click Button    ${check_button}
    Sleep    2s
    Click Button    ${final_add_patient}

