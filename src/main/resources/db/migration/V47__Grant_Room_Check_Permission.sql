-- Grant ROOM_CHECK permission to appropriate roles
INSERT INTO role_permissions (role_id, permission_id)
SELECT r.id, p.id 
FROM roles r, permissions p 
WHERE r.code IN ('ADMIN', 'FACULTY', 'WARDEN') 
AND p.code = 'ROOM_CHECK'
ON CONFLICT DO NOTHING;
