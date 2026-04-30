# frozen_string_literal: true
# Ruby 3.4+ removed Object#tainted? and Object#untaint
# Liquid 4.0.3 still calls tainted? on variable values during render.
# This is safe: taint was a no-op since Ruby 2.7.
$stderr.puts "[taint_compat] Loading taint compatibility patch..."
class Object
  def tainted? = false
  def untaint = self
end
$stderr.puts "[taint_compat] Applied to Object"
