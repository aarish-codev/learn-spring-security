drop table if exists users;

create table users(
  username varchar (20) not null primary key,
  password varchar (100) not null,
  enabled boolean not null default true
);

drop table if exists authorities;

create table authorities(
    username varchar (20) not null,
    authority varchar (20) not null,
    constraint fk_authorities_users foreign key (username) references users(username)
);

create unique index ix_auth_username on authorities (username, authority);