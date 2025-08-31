import React, { useEffect, useState } from 'react';
import { getUsers } from '../api';

export default function UserList() {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    getUsers().then(setUsers);
  }, []);

  return (
    <div>
      <h2>Usuarios</h2>
      <ul>
        {users.map(u => (
          <li key={u.id}>{u.nombre} ({u.correo})</li>
        ))}
      </ul>
    </div>
  );
}
