create user usr_yobel identified by "Wwelcome#123";
grant dwrole to usr_yobel ;
alter user usr_yobel  quota unlimited on data;
grant create session to usr_yobel ;
grant create table to usr_yobel ;
begin
ords.enable_schema(p_enabled => true,
  p_schema => 'usr_yobel ',
  p_url_mapping_type => 'BASE_PATH',
  p_url_mapping_pattern => 'usr_yobel ',
  p_auto_rest_auth => true);
commit;
end;
/
