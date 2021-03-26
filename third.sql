SELECT users.name, communities.name, permissions.name
FROM community_members
         JOIN users on users.id=community_members.user_id
         JOIN community_member_permissions on community_member_permissions.member_id=community_members.user_id
         JOIN permissions on permissions.id=community_member_permissions.permission_id
         JOIN communities on communities.id=community_members.community_id
WHERE CHAR_LENGTH(communities.name) >= 15 AND (users.name LIKE '%T%' or permissions.name LIKE '%articles%')