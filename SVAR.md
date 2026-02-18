# Kontinuasjon-2026

## Notes on answers
I will keep to English in the answers as I have been working with English as my main professional language for the last 10 years. <br>

## Oppgave 1:

### Branching strategy and naming
In a team of any size the branching strategy should be well defined. <br>
The strategy that I am most familiar with and that I think works well is the following:
<br>
<ul>
    <li>main
        <ul>
            <li>This is the main branch with the code that reflects the current deployment. </li>
            <li>Should only be merged into through merge requests going through the proper checks</li>
            <li>Usually tied to a pre-prod system through CI pipelines for testing by Q&A and automatic testing suite</li>
            <li>CI pipeline pushing to prod usually only done through manual action if no redundancy built in with several active servers</li>
            <li>If a multi-instance is running,usually this action is automatic depending on all previous steps are green and all checks passed</li>
        </ul>
    </li>
    <li>develop
        <ul>
            <li>Branch from which development branches are created</li>
            <li>Only merge into main from this branch (excluded hotfixes) by tech lead or assigned team member</li>
            <li>CI pipelines tied to an automatic deployment to a Demo environment</li>
        </ul>
    </li>
    <li>feature/ticket-number-keywords
        <ul>
            <li>Branches used for feature tickets</li>
            <li>Should always start with 'feature', <br>and then be followed by the ticket number from JIRA or a similar system</li>
            <li>Optional: adding keywords separated by '-'</li>
            <li>Ticket number in the branch name allows JIRA or another system to pick up the branch and add it to the ticket</li>
        </ul>
    </li>
    <li>bugfix/ticket-number-keywords
        <ul>
            <li>Branches used for tickets marked as bugs</li>
            <li>Should always start with 'bugfix', <br>and then be followed by the ticket number from JIRA or a similar system</li>
            <li>Optional: adding keywords separated by '-'</li>
            <li>Ticket number in the branch name allows JIRA or another system to pick up the branch and add it to the ticket</li>
        </ul>
    </li>
</ul>



    Pull Request-prosess
        Når skal man lage en Pull Request?
        Hvem skal gjennomgå Pull Requests?
        Hva må være på plass før en Pull Request kan merges?

    Branch Protection
        Hvilke regler skal main-branch ha?
        Hvorfor er disse viktige for teamarbeid?

    Automatisering
        Hvilke automatiske sjekker skal kjøres?
        Når skal de kjøre (Pull Request, merge, etc.)?

