[Ivy]
16228AC8168175A0 3.23 #module
>Proto >Proto Collection #zClass
Cs0 CounterProcess Big #zClass
Cs0 RD #cInfo
Cs0 #process
Cs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Cs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Cs0 @TextInP .resExport .resExport #zField
Cs0 @TextInP .type .type #zField
Cs0 @TextInP .processKind .processKind #zField
Cs0 @AnnotationInP-0n ai ai #zField
Cs0 @MessageFlowInP-0n messageIn messageIn #zField
Cs0 @MessageFlowOutP-0n messageOut messageOut #zField
Cs0 @TextInP .xml .xml #zField
Cs0 @TextInP .responsibility .responsibility #zField
Cs0 @RichDialogProcessEnd f1 '' #zField
Cs0 @RichDialogProcessStart f3 '' #zField
Cs0 @RichDialogEnd f4 '' #zField
Cs0 @PushWFArc f5 '' #zField
Cs0 @RichDialogMethodStart f6 '' #zField
Cs0 @RichDialogProcessEnd f7 '' #zField
Cs0 @RichDialogMethodStart f9 '' #zField
Cs0 @RichDialogProcessEnd f10 '' #zField
Cs0 @RichDialogMethodStart f0 '' #zField
Cs0 @RichDialogInitStart f12 '' #zField
Cs0 @RichDialogProcessEnd f13 '' #zField
Cs0 @PushWFArc f14 '' #zField
Cs0 @GridStep f15 '' #zField
Cs0 @PushWFArc f16 '' #zField
Cs0 @PushWFArc f2 '' #zField
Cs0 @GridStep f17 '' #zField
Cs0 @PushWFArc f18 '' #zField
Cs0 @PushWFArc f8 '' #zField
Cs0 @GridStep f19 '' #zField
Cs0 @PushWFArc f20 '' #zField
Cs0 @PushWFArc f11 '' #zField
>Proto Cs0 Cs0 CounterProcess #zField
Cs0 f1 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f1 339 147 26 26 0 12 #rect
Cs0 f1 @|RichDialogProcessEndIcon #fIcon
Cs0 f3 guid 16228AC82301041D #txt
Cs0 f3 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f3 actionDecl 'ivy.blockchain.demo.Counter.CounterData out;
' #txt
Cs0 f3 actionTable 'out=in;
' #txt
Cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Cs0 f3 83 371 26 26 -15 12 #rect
Cs0 f3 @|RichDialogProcessStartIcon #fIcon
Cs0 f4 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f4 guid 16228AC8230F9F71 #txt
Cs0 f4 211 371 26 26 0 12 #rect
Cs0 f4 @|RichDialogEndIcon #fIcon
Cs0 f5 expr out #txt
Cs0 f5 109 384 211 384 #arcP
Cs0 f6 guid 16228D0A7BBAB7D6 #txt
Cs0 f6 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f6 method add(ivy.blockchain.demo.Data) #txt
Cs0 f6 disableUIEvents false #txt
Cs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ivy.blockchain.demo.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f6 outParameterDecl '<ivy.blockchain.demo.Data data> result;
' #txt
Cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add(data)</name>
        <nameStyle>9,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f6 83 211 26 26 -26 15 #rect
Cs0 f6 @|RichDialogMethodStartIcon #fIcon
Cs0 f7 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f7 339 211 26 26 0 12 #rect
Cs0 f7 @|RichDialogProcessEndIcon #fIcon
Cs0 f9 guid 16228D10757F5741 #txt
Cs0 f9 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f9 method subtract(ivy.blockchain.demo.Data) #txt
Cs0 f9 disableUIEvents false #txt
Cs0 f9 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<ivy.blockchain.demo.Data data> param = methodEvent.getInputArguments();
' #txt
Cs0 f9 outParameterDecl '<ivy.blockchain.demo.Data data> result;
' #txt
Cs0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>subtract(data)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f9 83 275 26 26 -38 15 #rect
Cs0 f9 @|RichDialogMethodStartIcon #fIcon
Cs0 f10 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f10 339 275 26 26 0 12 #rect
Cs0 f10 @|RichDialogProcessEndIcon #fIcon
Cs0 f0 guid 16228E0115D82B64 #txt
Cs0 f0 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f0 method createContract() #txt
Cs0 f0 disableUIEvents false #txt
Cs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f0 outParameterDecl '<ivy.blockchain.demo.Data data> result;
' #txt
Cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createContract()</name>
        <nameStyle>16,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Cs0 f0 83 147 26 26 -44 15 #rect
Cs0 f0 @|RichDialogMethodStartIcon #fIcon
Cs0 f12 guid 16228E9BCEAFF2D4 #txt
Cs0 f12 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f12 method start() #txt
Cs0 f12 disableUIEvents true #txt
Cs0 f12 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Cs0 f12 outParameterDecl '<> result;
' #txt
Cs0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Cs0 f12 83 51 26 26 -16 15 #rect
Cs0 f12 @|RichDialogInitStartIcon #fIcon
Cs0 f13 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f13 211 51 26 26 0 12 #rect
Cs0 f13 @|RichDialogProcessEndIcon #fIcon
Cs0 f14 expr out #txt
Cs0 f14 109 64 211 64 #arcP
Cs0 f15 actionDecl 'ivy.blockchain.demo.Counter.CounterData out;
' #txt
Cs0 f15 actionTable 'out=in;
' #txt
Cs0 f15 actionCode 'import ivy.blockchain.demo.ContractData;
import ivy.blockchain.demo.Data;
import ch.ivyteam.ivy.environment.Ivy;
import ivy.blockchain.demo.CallEthereum;

CallEthereum call = new CallEthereum(in.keystore, in.password);
ContractData data = call.deployContract(in.url);
in.data.contractData = data;
' #txt
Cs0 f15 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Cs0 f15 168 138 112 44 -17 -8 #rect
Cs0 f15 @|StepIcon #fIcon
Cs0 f16 expr out #txt
Cs0 f16 109 160 168 160 #arcP
Cs0 f2 expr out #txt
Cs0 f2 280 160 339 160 #arcP
Cs0 f17 actionDecl 'ivy.blockchain.demo.Counter.CounterData out;
' #txt
Cs0 f17 actionTable 'out=in;
' #txt
Cs0 f17 actionCode 'import ivy.blockchain.demo.ContractData;
import ivy.blockchain.demo.Data;
import ch.ivyteam.ivy.environment.Ivy;
import ivy.blockchain.demo.CallEthereum;

CallEthereum call = new CallEthereum(in.keystore, in.password);
ContractData data = call.add(in.url, in.data.contractData.contractAddress, in.data.contractData);
' #txt
Cs0 f17 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>add</name>
    </language>
</elementInfo>
' #txt
Cs0 f17 168 202 112 44 -10 -8 #rect
Cs0 f17 @|StepIcon #fIcon
Cs0 f18 expr out #txt
Cs0 f18 109 224 168 224 #arcP
Cs0 f8 expr out #txt
Cs0 f8 280 224 339 224 #arcP
Cs0 f19 actionDecl 'ivy.blockchain.demo.Counter.CounterData out;
' #txt
Cs0 f19 actionTable 'out=in;
' #txt
Cs0 f19 actionCode 'import ivy.blockchain.demo.ContractData;
import ivy.blockchain.demo.Data;
import ch.ivyteam.ivy.environment.Ivy;
import ivy.blockchain.demo.CallEthereum;

CallEthereum call = new CallEthereum(in.keystore, in.password);
ContractData data = call.subtract(in.url, in.data.contractData.contractAddress, in.data.contractData);
' #txt
Cs0 f19 type ivy.blockchain.demo.Counter.CounterData #txt
Cs0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>subtract</name>
    </language>
</elementInfo>
' #txt
Cs0 f19 168 266 112 44 -22 -8 #rect
Cs0 f19 @|StepIcon #fIcon
Cs0 f20 expr out #txt
Cs0 f20 109 288 168 288 #arcP
Cs0 f11 expr out #txt
Cs0 f11 280 288 339 288 #arcP
>Proto Cs0 .type ivy.blockchain.demo.Counter.CounterData #txt
>Proto Cs0 .processKind HTML_DIALOG #txt
>Proto Cs0 -8 -8 16 16 16 26 #rect
>Proto Cs0 '' #fIcon
Cs0 f3 mainOut f5 tail #connect
Cs0 f5 head f4 mainIn #connect
Cs0 f12 mainOut f14 tail #connect
Cs0 f14 head f13 mainIn #connect
Cs0 f0 mainOut f16 tail #connect
Cs0 f16 head f15 mainIn #connect
Cs0 f15 mainOut f2 tail #connect
Cs0 f2 head f1 mainIn #connect
Cs0 f6 mainOut f18 tail #connect
Cs0 f18 head f17 mainIn #connect
Cs0 f17 mainOut f8 tail #connect
Cs0 f8 head f7 mainIn #connect
Cs0 f9 mainOut f20 tail #connect
Cs0 f20 head f19 mainIn #connect
Cs0 f19 mainOut f11 tail #connect
Cs0 f11 head f10 mainIn #connect
