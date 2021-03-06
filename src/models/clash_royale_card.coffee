module.exports = class ClashRoyaleCard
  namespace: 'clashRoyaleCards'

  constructor: ({@auth}) -> null

  getAll: ({sort, filter} = {}) =>
    @auth.stream "#{@namespace}.getAll", {sort, filter}

  getById: (id) =>
    @auth.stream "#{@namespace}.getById", {id}

  getByKey: (key) =>
    @auth.stream "#{@namespace}.getByKey", {key}
