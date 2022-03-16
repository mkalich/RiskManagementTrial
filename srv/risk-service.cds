using {riskmanagement as rm} from '../db/schema';

service RiskService @(path : 'service/risk') {

    //entity Risks as projection on rm.Risks; 
    //redifined with restrictions
    entity Risks @(restrict : [
        {
            grant : ['READ'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ]) as projection on rm.Risks;
    annotate Risks with @odata.draft.enabled;

    //entity Mitigations as projection on rm.Mitigations;
    //redifined with restrictions
    entity Mitigations @(restrict : [
        {
            grant : ['READ'],
            to    : ['RiskViewer']
        },
        {
            grant : ['*'],
            to    : ['RiskManager']
        }
    ]) as projection on rm.Mitigations;
    annotate Mitigations with @odata.draft.enabled;      

    entity BusinessPartners as projection on rm.BusinessPartners;          

}