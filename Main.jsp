<?xml version="1.0" encoding="UTF-8" ?>
<vxml version="2.0">
    <nomatch>
        No Match! I'm sorry, I didn't understand you.  Could you please try that again? 
        <reprompt />
    </nomatch>
    <noinput>
        No Input! I'm sorry, I didn't hear anything.  Could you please try that again? 
        <reprompt />
    </noinput> 

  <menu id="menu">
  	<property name="inputmodes" value="dtmf"/>
    <prompt bargein="false">Welcome to mobile. Job Hunting.
select the category of job. from the following options.
please press the related number. to choose the job  category.
    </prompt>
    <prompt>
      <enumerate>
	    <value expr="_prompt"/> press <value expr="_dtmf"/>, 
      </enumerate>
    </prompt>    
    
    <choice next="jobCategory/Accounting.jsp"  dtmf="1">
      .Computers and I T.
    </choice>

    <choice next="jobHunt/jobCategory/Medical.jsp" dtmf="2">
    .Medical.
    </choice>

    <choice next="jobHunt/jobCategory/Sales.jsp" dtmf="3">
    .Sales and Marketing.
    </choice>

    <choice next="jobHunt/jobCategory/BPO.jsp" dtmf="4">
    .B.P.O.
    </choice>

    <choice next="jobHunt/jobCategory/Accounting.jsp" dtmf="5">
    .Accounting and Tax.
    </choice>

    <choice next="jobHunt/jobCategory/HR.jsp" dtmf="6">
    .H. R and Top management.
    </choice>

  </menu>  
</vxml>