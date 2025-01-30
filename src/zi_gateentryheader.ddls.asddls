@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gate Entry Header Interface View'
define root view entity ZI_GateEntryHeader 
  provider contract transactional_interface
  as projection on ZR_GateEntryHeader as GateEntryHeader
{
    key Gateentryno,
    Entrydate,
    Plant,
    Gateoutward,
    Entrytype,
    Operatorname,
    Transportmode,
    Grdate,
    Grno,
    Vehicleno,
    Gateindate,
    Gateintime,
    Transportername,
    Drivername,
    Driverlicenseno,
    Driverno,
    Gateoutdate,
    Gateouttime,
    Remarks,
    Grosswt,
    Tarewt,
    Netwt,
    Slipno,
    Totallines,
    Cancelled,
    Invoiceno,
    Invoicedate,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt,
    /* Associations */
    _GateEntryLines : redirected to composition child ZI_GateEntryLines
  
}
