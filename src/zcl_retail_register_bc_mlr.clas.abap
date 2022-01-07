CLASS zcl_retail_register_bc_mlr DEFINITION
  PUBLIC
  INHERITING FROM cl_xco_cp_adt_simple_classrun
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS: main REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_retail_register_bc_mlr IMPLEMENTATION.
  METHOD main.
    DATA(lo_business_configuration) = mbc_cp_api=>business_configuration(
      iv_identifier = 'Z_RET_MLR' && sy-uname
      iv_namespace  = '' ).
    TRY.
        lo_business_configuration->create(
          iv_name                  = |Retail Control MLR| && sy-uname
          iv_description           = 'Maintain retailer products'
          iv_service_binding       = 'ZSB_IU_RET_MLR'
          iv_service_name          = 'ZSD_UI_RET_MLR'
          iv_service_version       = 0001
          iv_root_entity_set       = 'RetailSingleton'
          iv_transport             = 'TRLK900861'
          iv_skip_root_entity_list_rep = abap_true
        ).
        out->write( 'done' ).
      CATCH cx_mbc_api_exception INTO DATA(lx_err).
        out->write( lx_err ).
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
