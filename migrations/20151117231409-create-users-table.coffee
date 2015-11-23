'use strict';

tableName = 'users'

exports.up = (db, callback) ->
  options =
    columns:
      id:
        type: 'int', primaryKey: true, autoIncrement: true
      email:
        type: 'string', notNull: true
      password:
        type: 'string', notNull: true
    ifNotExists: true
  db.createTable tableName, options, callback

exports.down = (db, callback) ->
  options =
    ifExists: true
  db.dropTable tableName, options, callback

