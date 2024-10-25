/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.											
 Use SQLCMD syntax to reference a variable in the post-deployment script.						
--------------------------------------------------------------------------------------
*/


INSERT INTO config.RunParameter(RunParameterName, 
                                RunParameterValue, 
                                RunParameterDescription)
SELECT  d.RunParameterName, 
        d.RunParameterValue, 
        d.RunParameterDescription
FROM (
    SELECT  'ErrorEmailAccount' AS RunParameterName,
            'info@bitesizedata.be' AS RunParameterValue, 
            'Emailaddress to be used for error emailing' AS RunParameterDescription
) AS d
LEFT JOIN config.RunParameter AS crp
    ON d.RunParameterName = crp.RunParameterName
WHERE crp.RunParameterId IS NULL