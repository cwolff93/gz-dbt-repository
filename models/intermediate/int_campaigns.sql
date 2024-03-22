-- SELECT * FROM {{ ref("stg_data__adwords")}}
-- UNION ALL
-- SELECT * FROM {{ ref("stg_data__bing")}}
-- UNION ALL
-- SELECT * FROM {{ ref("stg_data__criteo")}}
-- UNION ALL
-- SELECT * FROM {{ ref("stg_data__facebook")}}

{{ dbt_utils.union_relations(

    relations=[ref('stg_data__adwords'), ref('stg_data__bing'), ref('stg_data__criteo'), ref('stg_data__facebook')],
    source_column_name = None

) }}