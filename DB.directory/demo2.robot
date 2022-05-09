*** Comments ***
# Table name - Products
# columns-product_id,productname,description


*** Settings ***
Library    DatabaseLibrary

Test Setup    Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db     dbPassword=12345678     dbHost=db4free.net  dbPort=3306
Test Teardown  Disconnect From Database

*** Test Cases ***
TC1
   ${row_count}   Row Count    select * from Products
   Log To Console     ${row_count}
   Log    ${row_count}
   Should Be Equal    ${row_count}    81

TC2
    Table Must Exist    Products
    Row Count Is Equal To X        select * from Products         81
    Row Count Is Less Than X   select * from Products      100
    Row Count Is Greater Than X    select * from Products     1


TC3
      Execute Sql String    Insert into Products (product_id,productname,description) values (99007719,'laptop','good')
      Row Count Is Equal To X    select * from Products  where product_id = 99007719     1



TC4
    Execute Sql String    update products set productname='laptop'  where product_id=1239911
    Row Count Is Equal To X    select * from Products  where product_id=1239911

TC5
    ${output}   Query    select * from Products  where product_id=1239911
    Log    ${output}
    Log To Console    ${output}



