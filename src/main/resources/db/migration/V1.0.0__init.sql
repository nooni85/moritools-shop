CREATE TABLE member (
    member_seq BIGINT NOT NULL AUTO_INCREMENT COMMENT '멤버 고유번호',
    email VARCHAR(255) COMMENT '이메일',
    password CHAR(72) COMMENT '비밀번호',
    create_at timestamp COMMENT '생성일자',
    update_at timestamp COMMENT '수정일자',
    PRIMARY KEY(member_seq),
    UNIQUE INDEX idx_member_email (email)
) COMMENT '멤버 테이블';

