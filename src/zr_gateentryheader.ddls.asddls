@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gate Entry Header CDS'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_GateEntryHeader as select from zgateentryheader as GateEntryHeader
composition [0..*] of ZR_GateEntryLines as _GateEntryLines
association [0..1] to ZI_GateEntryType as _gateentrytype on $projection.Entrytype = _gateentrytype.Value
{
    key gateentryno as Gateentryno,
    entrydate as Entrydate,
    plant as Plant,
    gateoutward as Gateoutward,
    entrytype as Entrytype,
    operatorname as Operatorname,
    transportmode as Transportmode,
    grdate as Grdate,
    grno as Grno,
    vehicleno as Vehicleno,
    gateindate as Gateindate,
    gateintime as Gateintime,
    transportername as Transportername,
    drivername as Drivername,
    driverlicenseno as Driverlicenseno,
    driverno as Driverno,
    gateoutdate as Gateoutdate,
    gateouttime as Gateouttime,
    remarks as Remarks,
    grosswt as Grosswt,
    tarewt as Tarewt,
    netwt as Netwt,
    slipno as Slipno,
    totallines as Totallines,
    cancelled as Cancelled,
    invoiceno as Invoiceno,
    invoicedate as Invoicedate,
    @Semantics.user.createdBy: true
    created_by as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt,
    @Semantics.user.localInstanceLastChangedBy: true
    last_changed_by as LastChangedBy,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    last_changed_at as LastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    _GateEntryLines,
    _gateentrytype,
    _gateentrytype.Description as Gateentrytypedesc
}
