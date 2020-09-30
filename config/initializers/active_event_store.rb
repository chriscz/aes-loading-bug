$aes_initializer_called = false

ActiveSupport.on_load :active_event_store do |store|
  $aes_initializer_called = true
end

Rails.application.config.to_prepare do
  warn "ActiveEventStore.event_store populated within to_prepare block".bold.green if ActiveEventStore.event_store.present?
end

warn "ActiveEventStore.event_store is still nil".bold.red if ActiveEventStore.event_store.nil?
