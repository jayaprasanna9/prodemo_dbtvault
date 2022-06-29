{%- set source_model = 'hub_customer' -%}
{%- set src_pk = 'CUSTOMER_PK' -%}
{%- set as_of_dates_table = 'as_of_date' -%}
satellites: 
  {"sat_customer_detail":
    {"pk": {"PK": "CUSTOMER_PK"}, {"ldts": {"LDTS": "LOAD_DATE"}}
    }
  }
  {"sat_order_customer_details":
    {"pk": {"PK": "CUSTOMER_PK"}, {"ldts": {"LDTS": "LOAD_DATE"}}
    }
  }
stage_tables: 
  {"v_stg_orders": "LOAD_DATETIME"}
{%- set src_ldts = 'LOAD_DATE' -%}

{{ dbtvault.pit(source_model=source_model, src_pk=src_pk,
                as_of_dates_table=as_of_dates_table,
                satellites=satellites,
                stage_tables=stage_tables,
                src_ldts=src_ldts) }}