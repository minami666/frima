crumb :root do
  link "Home", root_path
end

crumb :mypages do
  link "マイページ", mypages_index_path
end

crumb :notification do
  link "お知らせ", mypages_notification_path
  parent :mypages
end

crumb :todo do
  link "やること", mypages_todo_path
  parent :mypages
end

# crumb :likes do
#   link "いいね！一覧", hogehoge_path
#   parent :mypages
# end

crumb :listing do
  link "出品中", mypages_listing_path
  parent :mypages
end

crumb :progress do
  link "出品中(取引中)", mypages_progress_path
  parent :mypages
end

crumb :completed do
  link "出品終了", mypages_completed_path
  parent :mypages
end

crumb :buying do
  link "購入したもの", mypages_buying_path
  parent :mypages
end

crumb :pastransaction do
  link "過去の取引", mypages_pastransaction_path
  parent :mypages
end

crumb :news do
  link "ニュース一覧", mypages_news_path
  parent :mypages
end

crumb :evaluates do
  link "評価の一覧", mypages_evaluates_path
  parent :mypages
end

crumb :support do
  link "サポート", mypages_support_path
  parent :mypages
end

crumb :sns do
  link "SNS認証", mypages_sns_path
  parent :mypages
end

crumb :identification do
  link "本人確認", mypages_identification_path
  parent :mypages
end

crumb :points do
  link "ポイント", mypages_points_path
  parent :mypages
end

crumb :profile do
  link "プロフィール", mypages_profile_path
  parent :mypages
end

crumb :confirmation do
  link "電話番号認証", mypages_confirmation_path
  parent :mypages
end

crumb :destroy do
  link "ログアウト", mypages_destroy_path
  parent :mypages
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).