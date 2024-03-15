SELECT 
	profiles.id,
    mails.login AS mail_login, 
    mails.password AS mail_password, 
    discords.login AS discord_login, 
    discords.password AS discord_password,
	discord_mails.password AS discord_mail_password,
    discords.token AS discord_token, 
    discords.cookie AS discord_cookie, 
    twitters.login AS twitter_login, 
    twitters.password AS twitter_password,
    twitters.auth_token AS twitter_token, 
    twitters.cookie AS twitter_cookie,
    user_agent, 
    proxy
FROM 
    public.profiles
JOIN 
    twitters ON profiles.twitter_id = twitters.id
JOIN 
    discords ON profiles.discord_id = discords.id
JOIN 
    mails ON profiles.mail_id = mails.id
JOIN 
    mails AS discord_mails ON discords.mail_id = discord_mails.id
ORDER BY profiles.id;