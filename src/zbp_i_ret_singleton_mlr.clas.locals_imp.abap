CLASS lhc_RetailSingleton DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR RetailSingleton RESULT result.

ENDCLASS.

CLASS lhc_RetailSingleton IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_Retail DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Retail RESULT result.

ENDCLASS.

CLASS lhc_Retail IMPLEMENTATION.

  METHOD get_instance_features.


  ENDMETHOD.

ENDCLASS.

CLASS lsc_Z_I_RET_SINGLETON_MLR DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_Z_I_RET_SINGLETON_MLR IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
