# KMP + Fastlane

This project is a simple example on how to use Fastlane (https://fastlane.tools/) in a KMP Project.

The project contains two main branches:

1. main - Contains a simple KMP project created by the KMP Wizard (https://kmp.jetbrains.com/) and the fastlane
configuration to build it for Android and iOS;
2. kmmbridge-spm - Contains the same project, but updated to run using SPM and SPM Local Dev Flow;

## How to run

1. Install Fastlane using Bundler: `bundle install`
2. Run the Fastlane command: `bundle exec fastlane $platform $name`
   1. Example: `bundle exec fastlane ios build`


## Notes

1. In the SPM Branch, we are setting an env var to use the local version. As we are not using a Package.swift file 
managed by the KMMBridge Plugin, we need to manually implement it.
2. In both branches, iOS Code Signing is disabled to make it easier to run the project. In a real project, you should
configure the code signing properly.
