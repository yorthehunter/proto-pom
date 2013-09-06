json.array!(@proto_pom2s) do |proto_pom2|
  json.extract! proto_pom2, :pp_vendor, :pp_end_date, :pp_start_date, :pp_arrival_date, :pp_notes, :pp_po_name, :pp_wholesale, :pp_retail
  json.url proto_pom2_url(proto_pom2, format: :json)
end
