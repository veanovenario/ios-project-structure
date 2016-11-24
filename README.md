## About

Following a structure in XCode, when initially creating a project, helps in easily understanding and maintaining projects and codes in the future as the project expands. *iOS Project Structure* is a sample app with an organized stracture that is preferred by the developer who made this.

## Steps

• Add gitignore
• Organize project folder structure
• Change version to 1.0.0
• Change *Deployment Target* to the minimum in your current XCode
• Change *Organization* and *Class Prefix*
• Edit scheme and add *OS_ACTIVITY_MODE disable* under environment variables
• Add prefix header
• Set entitlements
• Install cocoapods and add libraries needed
• Add Utils.h with Dlog (Processor Macros by cocoapods)
• Add Constants.h and GlobalVariables.h
• Add separate storyboards for each module
• Add a BaseViewController and initial controllers
• Add WebAPIHelper.h and models for storing JSON data
• Add localization for strings
• Create API doc for sample data retrieval (Login API should send os_version and app_version)
• Add *Google Analytics* for tracking user and screens
• Add *Crashlytics* and *Fabric* for crash reports and ditribution of builds
• Add *Realm*
