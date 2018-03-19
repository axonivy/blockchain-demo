[Ivy]
16228D674DE6A8FE 3.20 #module
>Proto >Proto Collection #zClass
br0 blockchainCounter Big #zClass
br0 B #cInfo
br0 #process
br0 @TextInP .resExport .resExport #zField
br0 @TextInP .type .type #zField
br0 @TextInP .processKind .processKind #zField
br0 @AnnotationInP-0n ai ai #zField
br0 @MessageFlowInP-0n messageIn messageIn #zField
br0 @MessageFlowOutP-0n messageOut messageOut #zField
br0 @TextInP .xml .xml #zField
br0 @TextInP .responsibility .responsibility #zField
br0 @StartRequest f0 '' #zField
br0 @EndTask f1 '' #zField
br0 @RichDialog f3 '' #zField
br0 @PushWFArc f4 '' #zField
br0 @PushWFArc f2 '' #zField
>Proto br0 br0 blockchainCounter #zField
br0 f0 outLink start.ivp #txt
br0 f0 type ivy.blockchain.demo.Data #txt
br0 f0 inParamDecl '<> param;' #txt
br0 f0 actionDecl 'ivy.blockchain.demo.Data out;
' #txt
br0 f0 guid 16228D674F2FF89B #txt
br0 f0 requestEnabled true #txt
br0 f0 triggerEnabled false #txt
br0 f0 callSignature start() #txt
br0 f0 caseData businessCase.attach=true #txt
br0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
br0 f0 @C|.responsibility Everybody #txt
br0 f0 81 49 30 30 -21 17 #rect
br0 f0 @|StartRequestIcon #fIcon
br0 f1 type ivy.blockchain.demo.Data #txt
br0 f1 337 49 30 30 0 15 #rect
br0 f1 @|EndIcon #fIcon
br0 f3 targetWindow NEW #txt
br0 f3 targetDisplay TOP #txt
br0 f3 richDialogId ivy.blockchain.demo.Counter #txt
br0 f3 startMethod start() #txt
br0 f3 type ivy.blockchain.demo.Data #txt
br0 f3 requestActionDecl '<> param;' #txt
br0 f3 responseActionDecl 'ivy.blockchain.demo.Data out;
' #txt
br0 f3 responseMappingAction 'out=in;
' #txt
br0 f3 isAsynch false #txt
br0 f3 isInnerRd false #txt
br0 f3 userContext '* ' #txt
br0 f3 168 42 112 44 0 -8 #rect
br0 f3 @|RichDialogIcon #fIcon
br0 f4 expr out #txt
br0 f4 111 64 168 64 #arcP
br0 f2 expr out #txt
br0 f2 280 64 337 64 #arcP
>Proto br0 .type ivy.blockchain.demo.Data #txt
>Proto br0 .processKind NORMAL #txt
>Proto br0 0 0 32 24 18 0 #rect
>Proto br0 @|BIcon #fIcon
br0 f0 mainOut f4 tail #connect
br0 f4 head f3 mainIn #connect
br0 f3 mainOut f2 tail #connect
br0 f2 head f1 mainIn #connect
