CREATE TABLE "ISSUES" (
  "ID" BIGINT NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "KEE" VARCHAR(50) UNIQUE NOT NULL,
  "COMPONENT_UUID" VARCHAR(50),
  "PROJECT_UUID" VARCHAR(50),
  "RULE_ID" INTEGER,
  "SEVERITY" VARCHAR(10),
  "MANUAL_SEVERITY" BOOLEAN NOT NULL,
  "MESSAGE" VARCHAR(4000),
  "LINE" INTEGER,
  "GAP" DOUBLE,
  "EFFORT" INTEGER,
  "STATUS" VARCHAR(20),
  "RESOLUTION" VARCHAR(20),
  "CHECKSUM" VARCHAR(1000),
  "REPORTER" VARCHAR(255),
  "ASSIGNEE" VARCHAR(255),
  "AUTHOR_LOGIN" VARCHAR(255),
  "ACTION_PLAN_KEY" VARCHAR(50) NULL,
  "ISSUE_ATTRIBUTES" VARCHAR(4000),
  "TAGS" VARCHAR(4000),
  "ISSUE_CREATION_DATE" BIGINT,
  "ISSUE_CLOSE_DATE" BIGINT,
  "ISSUE_UPDATE_DATE" BIGINT,
  "CREATED_AT" BIGINT,
  "UPDATED_AT" BIGINT,
  "LOCATIONS" BLOB,
  "ISSUE_TYPE" TINYINT
);
CREATE UNIQUE INDEX "ISSUES_KEE" ON "ISSUES" ("KEE");
CREATE INDEX "ISSUES_COMPONENT_UUID" ON "ISSUES" ("COMPONENT_UUID");
CREATE INDEX "ISSUES_PROJECT_UUID" ON "ISSUES" ("PROJECT_UUID");
CREATE INDEX "ISSUES_RULE_ID" ON "ISSUES" ("RULE_ID");
CREATE INDEX "ISSUES_RESOLUTION" ON "ISSUES" ("RESOLUTION");
CREATE INDEX "ISSUES_ASSIGNEE" ON "ISSUES" ("ASSIGNEE");
CREATE INDEX "ISSUES_CREATION_DATE" ON "ISSUES" ("ISSUE_CREATION_DATE");
CREATE INDEX "ISSUES_UPDATED_AT" ON "ISSUES" ("UPDATED_AT");

CREATE TABLE "PROJECTS" (
  "ID" INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),
  "ORGANIZATION_UUID" VARCHAR(40) NOT NULL,
  "KEE" VARCHAR(400),
  "UUID" VARCHAR(50) NOT NULL,
  "UUID_PATH" VARCHAR(1500) NOT NULL,
  "ROOT_UUID" VARCHAR(50) NOT NULL,
  "PROJECT_UUID" VARCHAR(50) NOT NULL,
  "MODULE_UUID" VARCHAR(50),
  "MODULE_UUID_PATH" VARCHAR(1500),
  "NAME" VARCHAR(2000),
  "DESCRIPTION" VARCHAR(2000),
  "PRIVATE" BOOLEAN NOT NULL,
  "TAGS" VARCHAR(500),
  "ENABLED" BOOLEAN NOT NULL DEFAULT TRUE,
  "SCOPE" VARCHAR(3),
  "QUALIFIER" VARCHAR(10),
  "DEPRECATED_KEE" VARCHAR(400),
  "PATH" VARCHAR(2000),
  "LANGUAGE" VARCHAR(20),
  "COPY_COMPONENT_UUID" VARCHAR(50),
  "LONG_NAME" VARCHAR(2000),
  "DEVELOPER_UUID" VARCHAR(50),
  "CREATED_AT" TIMESTAMP,
  "AUTHORIZATION_UPDATED_AT" BIGINT,
  "B_CHANGED" BOOLEAN,
  "B_COPY_COMPONENT_UUID" VARCHAR(50),
  "B_DESCRIPTION" VARCHAR(2000),
  "B_ENABLED" BOOLEAN,
  "B_UUID_PATH" VARCHAR(1500),
  "B_LANGUAGE" VARCHAR(20),
  "B_LONG_NAME" VARCHAR(500),
  "B_MODULE_UUID" VARCHAR(50),
  "B_MODULE_UUID_PATH" VARCHAR(1500),
  "B_NAME" VARCHAR(500),
  "B_PATH" VARCHAR(2000),
  "B_QUALIFIER" VARCHAR(10)
);
CREATE INDEX "PROJECTS_ORGANIZATION" ON "PROJECTS" ("ORGANIZATION_UUID");
CREATE UNIQUE INDEX "PROJECTS_KEE" ON "PROJECTS" ("KEE");
CREATE INDEX "PROJECTS_ROOT_UUID" ON "PROJECTS" ("ROOT_UUID");
CREATE UNIQUE INDEX "PROJECTS_UUID" ON "PROJECTS" ("UUID");
CREATE INDEX "PROJECTS_PROJECT_UUID" ON "PROJECTS" ("PROJECT_UUID");
CREATE INDEX "PROJECTS_MODULE_UUID" ON "PROJECTS" ("MODULE_UUID");
CREATE INDEX "PROJECTS_QUALIFIER" ON "PROJECTS" ("QUALIFIER");
