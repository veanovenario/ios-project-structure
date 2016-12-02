## About

Following a structure in XCode, when initially creating a project, helps in easily understanding and maintaining projects and codes in the future as they expand. *iOS Project Structure* is a sample app with an organized structure that is preferred by the author.

## Steps

• Add gitignore  
• Organize project folder structure  
• Add separate storyboards for each module  
• Change version to 1.0.0  
• Change *Deployment Target* to the minimum in your current XCode  
• Change *Organization* and *Class Prefix*  
• Edit scheme and add *OS_ACTIVITY_MODE disable* under environment variables  
• Set entitlements  
• Install cocoapods and add libraries needed  
• Add Constants.h and GlobalVariables.h  
• Add Utils.h with Dlog (Processor Macros by cocoapods)  
• Add APIHelper.h and models for storing JSON data  
• Add prefix header  
• Add a BaseViewController and initial controllers  
• Create Localizable.strings for Base.lproj  
• Create API doc for sample data retrieval (Login API should send os_version and app_version)  
• Add *Google Analytics* for tracking user and screens  
• Add *Crashlytics* and *Fabric* for crash reports and ditribution of builds  
• Add *Realm*  
