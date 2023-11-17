    select 
        id, 
        actor_detail_entry,
        actor_display_name,
        actor_alternate_id as actor_email,
        actor_id,
        client_device,
        client_geographical_context,
        client_ip_address,
        client_user_agent_os,
        client_user_agent_raw_user_agent,
        event_type,
        outcome_result,
        published as published_at,
        transaction_id,
        transaction_type
    from raw.okta.system_log
