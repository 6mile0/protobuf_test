require "./idle_pb"

binaryData = File.binread("../result.bin")

begin
  result = Result.decode(binaryData)
  result.idles.each do |idle|
    belongsToNames = idle.belongs_to.map(&:name).join(", ")
    puts "#{idle.name}ちゃんは、#{belongsToNames}に所属しています。"
  end
rescue Google::Protobuf::ParseError => e
  puts "Failed to parse the binary data: #{e.message}"
end
