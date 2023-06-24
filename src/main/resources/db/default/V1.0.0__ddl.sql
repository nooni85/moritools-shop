create table if not exists member (
    member_id bigint not null auto_increment comment '멤버 고유번호',
    email varchar(255) comment '이메일',
    password char(72) comment '비밀번호',
    created_at timestamp comment '생성일자',
    updated_at timestamp comment '수정일자',
    primary key(member_id),
    unique index idx_member_email (email)
) comment '멤버';

create table if not exists role (
    role_id bigint not null auto_increment comment '권한 고유번호',
    name varchar(255) comment '권한 이름',
    remark varchar(255) comment '코맨트',
    created_at timestamp comment '생성일자',
    updated_at timestamp comment '수정일자',
    primary key(role_id),
    unique index idx_member_email (name)
) comment '권한';

create table if not exists authorization (
    authorization_id bigint not null auto_increment comment '권한 인가 고유번호',
    role_id bigint not null comment '권한 고유번호',
    member_id bigint not null comment '멤버 고유번호',
    created_at timestamp comment '생성일자',
    updated_at timestamp comment '수정일자',
    constraint foreign key (role_id) references role(role_id) on update cascade on delete cascade,
    constraint foreign key (member_id) references member(member_id) on update cascade on delete cascade
) comment '인가';