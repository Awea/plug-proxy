defmodule PlugProxy.BadGatewayError do
  defexception reason: nil, plug_status: 502

  def message(exception) do
    "bad gateway: #{exception.reason}"
  end
end

defmodule PlugProxy.GatewayTimeoutError do
  defexception plug_status: 504

  def message(_exception) do
    "gateway timeout"
  end
end