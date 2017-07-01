require 'ipaddr'

def ip_to_num(ip_address)
  # TODO: return the number version of the `ip_address` string
  IPAddr.new(ip_address).to_i
end

def num_to_ip(number)
  # TODO: return the string IP address from the `number`
  IPAddr.new(number, Socket::AF_INET).to_s
end
