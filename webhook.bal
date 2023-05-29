import ballerinax/trigger.github;
import ballerina/http;
import ballerina/log;

configurable github:ListenerConfig config = ?;

listener http:Listener httpListener = new(8090);
listener github:Listener webhookListener =  new(config,httpListener);

service github:IssuesService on webhookListener {
  
    remote function onOpened(github:IssuesEvent payload ) returns error? {
      //Not Implemented
      log:printInfo("opened");
      log:printInfo(payload.issue.url);
    }
    remote function onClosed(github:IssuesEvent payload ) returns error? {
      //Not Implemented
      log:printInfo("closed");
      log:printInfo(payload.issue.url);
    }
    remote function onReopened(github:IssuesEvent payload ) returns error? {
      //Not Implemented
      log:printInfo("reopened");
      log:printInfo(payload.issue.url);
    }
    remote function onAssigned(github:IssuesEvent payload ) returns error? {
      //Not Implemented
      log:printInfo("assigned");
      log:printInfo(payload.issue.url);
    }
    remote function onUnassigned(github:IssuesEvent payload ) returns error? {
      //Not Implemented
      log:printInfo("unassigned");
      log:printInfo(payload.issue.url);
    }
    remote function onLabeled(github:IssuesEvent payload ) returns error? {
      //Not Implemented
      log:printInfo("labeled");
      log:printInfo(payload.issue.url);
    }
    remote function onUnlabeled(github:IssuesEvent payload ) returns error? {
      //Not Implemented
      log:printInfo("unlabelled");
      log:printInfo(payload.issue.url);
    }
}

service /ignore on httpListener {}