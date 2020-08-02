class ReportWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(start_date, end_data)
    puts "SIDEKIQ WORKER GERANDO REPORT DO DIA #{start_date} ATE #{end_data}"
  end
end