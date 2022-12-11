# DevOps med gode intensjoner
[![CI pipeline](https://github.com/jennyhsl/pgr301-exam/actions/workflows/ci.yml/badge.svg)](https://github.com/jennyhsl/pgr301-exam/actions/workflows/ci.yml)
[![Publish docker image to ECR](https://github.com/jennyhsl/pgr301-exam/actions/workflows/docker.yml/badge.svg)](https://github.com/jennyhsl/pgr301-exam/actions/workflows/docker.yml)
[![Terraform CloudWatch](https://github.com/jennyhsl/pgr301-exam/actions/workflows/cloudwatch_dashboard.yml/badge.svg)](https://github.com/jennyhsl/pgr301-exam/actions/workflows/cloudwatch_dashboard.yml)

### Del 1 - DevOps prinsipper
*Hva er utfordringene med dagens systemutviklingsprosess - og hvordan vil innføring av DevOps kunne være med på å løse disse? Hvilke DevOps prinsipper blir brutt?*

Noen av utfordringene med dagens systemutviklingsprosess er kompleksitet. Jo større og mer komplekse systemer blir, jo vanskeligere og dyrere blir det å håndtere dem. Dette kan løses med devops ved å dele ting inn i mindre deler, f.eks microservices.
DevOps prinsipper som blir brutt er blant annet samarbeid, CI, automasjon.


*En vanlig respons på mange feil under release av ny funksjonalitet er å gjøre det mindre hyppig, og samtidig forsøke å legge på mer kontroll og QA. Hva er problemet med dette ut ifra et DevOps perspektiv, og hva kan være en bedre tilnærming?*

Problemet med dette når det kommer til DevOps er at det kan redusere utviklingsprosessen. Ved å publisere ny funksjonalitet sjeldnere kan det gjøre det vanskelig for bedrifter å reagere raskt nok på endringer fra kunder eller hvordan markedet fungerer.

*Teamet overleverer kode til en annen avdeling som har ansvar for drift - hva er utfordringen med dette ut ifra et DevOps perspektiv, og hvilke gevinster kan man få ved at team han ansvar for både drift- og utvikling?*

Problemet med å ha en avdeling hver for drift og utvikling kan være at det blir mye frem og tilbake mellom avdelingene og at det oppstår misforståelser. En annen ting er at de utviklingsteamet kanskje ikke har oversikt over hva som kreves for å kjøre softwaren.
Fordelene med å ha et team som håndterer begge er bedre samarbeid og kommunikasjon. De kan også endre ting raskere om det er noe som trengs, siden de kjenner til begge sidene ved utvikling og drift.

*Å release kode ofte kan også by på utfordringer. Beskriv hvilke- og hvordan vi kan bruke DevOps prinsipper til å redusere eller fjerne risiko ved hyppige leveranser.*
### Del 2 - CI
Oppgave 3

For å legge til branch protection må sensor gå inn på settings i repositoryet, gå til "Code and automation" i sidebaren og velge "Branches" (for å få opp branches alternativet må man ha mer enn en branch).
Ved siden av Branch protection rules er det en knapp med "Add rules" hvor man skriver inn navnet navnet på branchen man vil legge til restriskjoner på.

For å konfigurere at ingen kan pushe direkte til main branch velger man alternativene
 - Require pull request before merging
   - Require approvals (velg minst 1 eller mer)
 - Require status checks before merging
   - Require branches to be up to date before merging
   

### Del 3 - Docker
**Oppgave 1**

For å få workflowen til å kjøre med DockerHub konto må man legge inn brukernavn og token til DockerHub i repository secrets. Workflowen feiler fordi den ikke får logget inn i DockerHub.

**Oppgave 3**

For at sensor skal få sin fork til å kjøre må sensor legge inn ECR secret keys i repositoryet og bytte ut kandidat id i amazon linken (244530008913.dkr.ecr.eu-west-1.amazonaws.com/1005:$rev)