CREATE TABLE {$NAMESPACE}_diviner.diviner_livebook (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  phid VARCHAR(64) NOT NULL COLLATE utf8_bin,
  name VARCHAR(64) NOT NULL COLLATE utf8_bin,
  viewPolicy VARCHAR(64) NOT NULL COLLATE utf8_bin,
  dateCreated INT UNSIGNED NOT NULL,
  dateModified INT UNSIGNED NOT NULL,
  UNIQUE KEY (name),
  UNIQUE KEY (phid)
) ENGINE=InnoDB, DEFAULT CHARSET = utf8;


CREATE TABLE {$NAMESPACE}_diviner.diviner_livesymbol (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  phid VARCHAR(64) NOT NULL COLLATE utf8_bin,
  bookPHID VARCHAR(64) NOT NULL COLLATE utf8_bin,
  context VARCHAR(255) COLLATE utf8_bin,
  type VARCHAR (32) NOT NULL COLLATE utf8_bin,
  name VARCHAR (255) NOT NULL COLLATE utf8_bin,
  atomIndex INT UNSIGNED NOT NULL,
  identityHash VARCHAR(12) NOT NULL COLLATE utf8_bin,
  graphHash VARCHAR(33) COLLATE utf8_bin,
  KEY (bookPHID, type, name(64), context(64), atomIndex),
  KEY (name),
  UNIQUE KEY (graphHash),
  UNIQUE KEY (identityHash),
  UNIQUE KEY (phid)
) ENGINE=InnoDB, DEFAULT CHARSET = utf8;

CREATE TABLE {$NAMESPACE}_diviner.diviner_liveatom (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  symbolPHID VARCHAR(64) NOT NULL COLLATE utf8_bin,
  content LONGTEXT NOT NULL COLLATE utf8_bin,
  atomData LONGTEXT NOT NULL COLLATE utf8_bin,
  UNIQUE KEY (symbolPHID)
) ENGINE=InnoDB, DEFAULT CHARSET = utf8;


