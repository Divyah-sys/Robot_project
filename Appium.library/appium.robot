* Settings *
Library    AppiumLibrary

* Test Cases *
Tc1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=divyadharshini_jbLSs0
    ...     browserstack.key=vyhPLsrRwJbh7p6rQxS2
    ...     app=bs://1f64ae76e31178f8966b63804342b76d6198a383
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application
