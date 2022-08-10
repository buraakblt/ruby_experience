require 'json'

module API
    Vakit    = Struct.new :saat, :vakit, keyword_init: true
    Response = Struct.new :success, :result, keyword_init: true

    def self.call(string)
        parsed = JSON.parse(string, symbolize_names: true)
        Response.new success: parsed[:success], result: parsed[:result].map { |hash| Vakit.new(**hash) }
    end
end

puts API.(DATA.read)

__END__
{
    "success": true,
    "result": [
        {
            "saat": "04:57",
            "vakit": "İmsak"
        },
        {
            "saat": "06:20",
            "vakit": "Güneş"
        },
        {
            "saat": "13:02",
            "vakit": "Öğle"
        },
        {
            "saat": "16:27",
            "vakit": "İkindi"
        },
        {
            "saat": "20:13",
            "vakit": "Akşam"
        },
        {
            "saat": "22:40",
            "vakit": "Yatsı"
        }
    ]
}