SELECT communities.id, communities.name, permissions.name,
COUNT(community_member_permissions.permission_id) as count
FROM community_member_permissions
JOIN permissions on permissions.id=community_member_permissions.permission_id
JOIN users on users.id=community_member_permissions.member_id
JOIN community_members on community_members.user_id=users.id
JOIN communities on communities.id=community_members.community_id

GROUP BY communities.id, community_member_permissions.permission_id HAVING count >= 5
ORDER BY communities.id, count ASC
LIMIT 100