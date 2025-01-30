@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gate Entry Lines CDS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_GateEntryLines as select from zgateentrylines as GateEntryLines
association to parent ZR_GateEntryHeader as _GateEntryHeader on $projection.Gateentryno = _GateEntryHeader.Gateentryno
{
    key gateentryno as Gateentryno,
    key gateitemno as Gateitemno,
    vendorcode as Vendorcode,
    vendorname as Vendorname,
    customercode as Customercode,
    customername as Customername,
    productcode as Productcode,
    productdesc as Productdesc,
    entrytype as Entrytype,
    documentno as Documentno,
    documentitem as Documentitem,
    documentqty as Documentqty,
    uom as Uom,
    gateqty as Gateqty,
    gatevalue as Gatevalue,
    remarks as Remarks,
    _GateEntryHeader
}
