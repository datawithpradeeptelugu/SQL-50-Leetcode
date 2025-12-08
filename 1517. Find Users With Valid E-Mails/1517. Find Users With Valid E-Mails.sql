SELECT  
    user_id,
    name,
    mail
FROM Users
WHERE mail COLLATE Latin1_General_CS_AS LIKE '%@leetcode.com'       -- Case-sensitive domain
  AND LEN(mail) - LEN(REPLACE(mail, '@', '')) = 1                  -- Exactly one @
  AND LEFT(mail, 1) LIKE '[A-Za-z]'                                -- Must start with a letter
  AND PATINDEX('%[^A-Za-z0-9_.-]%', 
               LEFT(mail, CHARINDEX('@', mail) - 1)
              ) = 0;                                               -- Valid characters before @
