* Settings *
Library    AppiumLibrary

* Test Cases *
Tc1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=divyadharshini_jbLSs0
    ...     browserstack.key=vyhPLsrRwJbh7p6rQxS2
    ...     app=bs://35cd0f37462389fc2e94e16201adc26f9bd77dd9
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application