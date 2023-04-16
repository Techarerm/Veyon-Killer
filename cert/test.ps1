$cert = New-SelfSignedCertificate -DnsName test.app.com -CertStoreLocation cert:\LocalMachine\My -type CodeSigning
$pwd = ConvertTo-SecureString -String "Veyon-Killer" -Force -AsPlainText
Export-PfxCertificate -cert $cert -FilePath testcert.pfx -Password $pwd