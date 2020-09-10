class JournalEntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :entry_text, :date, :topics, :beach_id
end
