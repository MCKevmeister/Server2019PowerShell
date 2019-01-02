Configuration MyAwesomeWebsite {

    Import-DscResource -ModuleName PsDesiredStateConfiguration

    Node 'localhost' {
        WindowsFeature WebServer {
            Ensure = "Present"
            Name   = "Web-Server"
        }
        File WebsiteGoodies {
            Ensure = 'Present'
            SourcePath = 'c:\PStemp\index.html'
            DestinationPath = 'c:\inetpub\wwwroot'
        }
    }
}
MyAwesomeWebsite