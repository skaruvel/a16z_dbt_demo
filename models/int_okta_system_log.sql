with source as (
        select * from {{ ref('stg_okta__system_log') }}
),

final as (
    select 
        id,
        actor_detail_entry,
        actor_display_name,
        actor_email,
        actor_id,
        client_device,
        client_ip_address,
        client_user_agent_os,
        client_user_agent_raw_user_agent,
        event_type,
        client_geographical_context:city AS geo_city,
        client_geographical_context:country AS geo_country,
        client_geographical_context:postalCode AS geo_postalCode,
        client_geographical_context:state AS geo_state,
        outcome_result,
        published_at,
        transaction_id,
        transaction_type
        from source)

select * from final
