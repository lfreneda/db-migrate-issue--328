'use strict';

tableName = 'locations'

exports.up = (db, callback) ->
  options =
    columns:
      id:
        type: 'int', primaryKey: true, autoIncrement: true
      timestamp:
        type: 'datetime', notNull: true
      latitude:
        type: 'decimal', notNull: true
      longitude:
        type: 'decimal', notNull: true
      accuracy:
        type: 'decimal', notNull: true
      speed:
        type: 'decimal', notNull: false
      heading:
        type: 'decimal', notNull: false
      altitude:
        type: 'decimal', notNull: false
    ifNotExists: true

  db.createTable tableName, options, callback

exports.down = (db, callback) ->
  options =
    ifExists: true
  db.dropTable tableName, options, callback

