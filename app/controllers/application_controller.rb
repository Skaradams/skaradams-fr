class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  meta_tags_defaults(
    title: "Skaradams",
    description: "Blog personnel sur lequel j'aborde toutes sortes de thèmes, entre mes passions et faits de société qui me touchent au quotidien.",
    keywords: ['blog', 'skaradams'],
    image: "/assets/thumb_astro.png",
    # Facebook
    site_name: 'Skaradams',
    type: 'blog',
    # Twitter
    site: '@skaradams',
    card: 'summary'
  )
end
