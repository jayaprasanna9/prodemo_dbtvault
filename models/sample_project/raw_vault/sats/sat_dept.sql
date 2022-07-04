{%- set source_model = "v_stg_dept" -%}
{%- set src_pk = "DEPT_HK" -%}
{%- set src_hashdiff = "DEPT_HASHDIFF" -%}
{%- set src_payload = ["DNAME", 
                      "LOCATION"] -%}
{%- set src_eff = src_eff -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=none,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
