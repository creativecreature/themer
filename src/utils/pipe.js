const pipe = fns => x => fns.reduce((x, f) => f(x), x)
module.exports = pipe
