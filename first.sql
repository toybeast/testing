SELECT users.name, communities.name, community_members.joined_at
FROM community_members
         JOIN communities as communities on communities.id = community_members.community_id
         JOIN  users as users on users.id = community_members.user_id
WHERE communities.created_at > "2013-01-01 00:00:00"




