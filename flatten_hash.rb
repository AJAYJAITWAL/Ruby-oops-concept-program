a = ->(h, key = nil) do
  h.map do |k, v|
    _k = key ? "#{key}_#{k}" : k.to_s
    v.is_a?(Hash) ? a.call(v, _k) : [_k.to_sym, v]
  end.flatten
end
hash = { a: { b: { c: 42, d: 'foo' }, d: 'bar' }, e: 'baz' }
p Hash[*a.call(hash)]