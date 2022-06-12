<?xml version="1.0" ?> 
<vxml version="2.0">	
    <form id="Pharmacist">
        <var name="reqType" expr="'it'"/>
        <block>
            <prompt>
                Sales Executive Keysoft Solutions Private Ltd.
                Experience.1 to 3 years.
                Location. Bangalore...
                
                Marketing/Sales Manager (Female) 
                Ecole Solitalre .
                Experience.3 to 5 years, 
                Location.Delhi.
                
                Proactive R P O. and Staffing Solutions Private Limited .
                Experience.11 to 16 years.
                Location.Mumbai.
            </prompt>
             <goto next="#gotomenu"/>
        </block>
    </form>
    <menu id="gotomenu">
        <property name="inputmodes" value="dtmf"/>
        <prompt bargein="false">
            .Goto.
        </prompt>
        <prompt>
            <enumerate>
                <value expr="_prompt"/> press <value expr="_dtmf"/>, 
            </enumerate>
        </prompt>    
        <!--<choice next="jobHunt/JRole/trainingCIT.vxml" dtmf="1">-->
        <choice next="jobHunt/jobCategory/ComputerIT.jsp" dtmf="7">
            Previous Menu.            
        </choice>
        <!--<choice next="jobHunt/JRole/trainingCIT.vxml" dtmf="1">-->
        <choice next="jobHunt/Main.jsp" dtmf="8">
            Main Menu.            
        </choice>            
    </menu>  
</vxml>