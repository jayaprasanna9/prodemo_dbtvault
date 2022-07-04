{%- set source_model = "v_stg_sal_grade" -%}
{%- set src_pk = "GRADE_HK" -%}
{%- set src_hashdiff = "SAL_GRADE_HASHDIFF" -%}
{%- set src_payload = ["LOSAL", 
                       "HISAL"] -%}
{%- set src_eff = src_eff -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=none,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
