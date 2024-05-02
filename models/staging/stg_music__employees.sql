SELECT
    EmployeeId AS employee_id,
    LastName AS employee_last_name,
    FirstName AS employee_first_name,
    Title AS employee_title,
    ReportsTo AS supervisor_employee_id,
    BirthDateAS AS employee_birth_date,
    HireDate AS employee_hire_date,
    Address AS employee_address,
    City AS employee_city,
    State AS employee_state,
    Country AS employee_country,
    PostalCode AS employee_zipcode,
    Phone AS employee_phone_number,
    Fax AS employee_fax_number,
    Email AS employee_email_address
FROM {{source('music', 'employee')}}