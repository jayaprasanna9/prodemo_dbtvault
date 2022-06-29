{%- set source_model = "v_stg_emp" -%}
{%- set src_pk = "EMP_HK" -%}
{%- set src_hashdiff = "EMP_HASHDIFF" -%}
{%- set src_payload = ["ENAME", "JOB", "MGR",
                       "HIREDATE", "SAL", "COMM", "DEPTNO"] -%}
{%- set src_eff = src_eff -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_eff=none,
                src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}
