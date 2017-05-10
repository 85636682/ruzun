# -*- coding: utf-8 -*-
# frozen_string_literal: true
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  # navigation.renderer = Your::Custom::Renderer

  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
  navigation.selected_class = 'active toggled'

  # Specify the class that will be applied to the current leaf of
  # active navigation items. Defaults to 'simple-navigation-active-leaf'
  navigation.active_leaf_class = 'active'

  # Specify if item keys are added to navigation items as id. Defaults to true
  # navigation.autogenerate_item_ids = true

  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  navigation.id_generator = proc { |key| "application-nav-#{key}" }

  # If you need to add custom html around item names, you can define a proc that
  # will be called with the name you pass in to the navigation.
  # The example below shows how to wrap items spans.
  # navigation.name_generator = Proc.new {|name, item| "<span>#{name}</span>"}

  # Specify if the auto highlight feature is turned on (globally, for the whole navigation). Defaults to true
  # navigation.auto_highlight = true

  # Specifies whether auto highlight should ignore query params and/or anchors when
  # comparing the navigation items with the current URL. Defaults to true
  # navigation.ignore_query_params_on_auto_highlight = true
  # navigation.ignore_anchors_on_auto_highlight = true

  # If this option is set to true, all item names will be considered as safe (passed through html_safe). Defaults to false.
  navigation.consider_item_names_as_safe = true

  # Define the primary navigation
  navigation.items do |primary|
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>if: -> { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>unless: -> { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify
    #                            when the item should be highlighted, you can set a regexp which is matched
    #                            against the current URI.  You may also use a proc, or the symbol <tt>:subpath</tt>.
    #

    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    # primary.item :key_3, 'Admin', url, class: 'special', if: -> { current_user.admin? }
    # primary.item :key_4, 'Account', url, unless: -> { logged_in? }

    # you can also specify html attributes to attach to this particular level
    # works for all levels of the menu
    # primary.dom_attributes = {id: 'menu-id', class: 'menu-class'}

    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false

    primary.dom_class = 'main-menu'

    primary.item :admin_tickets, '<i class="zmdi zmdi-link"></i> 门票', '#', highlights_on: %r{/admin_tickets}, html: { class: 'sub-menu' } do |admin_tickets|
      admin_tickets.item :index, '列表', admin_tickets_path
      admin_tickets.item :new, '新建', new_admin_ticket_path
      admin_tickets.item :sell, '销售', sell_admin_tickets_path
    end

    primary.item :admin_orders, '<i class="zmdi zmdi-link"></i> 订单', '#', highlights_on: %r{/admin_orders}, html: { class: 'sub-menu' } do |admin_orders|
      admin_orders.item :index, '列表', admin_orders_path
    end

    primary.item :admin_lessons, '<i class="zmdi zmdi-link"></i> 培训班', '#', highlights_on: %r{/admin_lessons}, html: { class: 'sub-menu' } do |admin_lessons|
      admin_lessons.item :index, '列表', admin_lessons_path
      admin_lessons.item :new, '新建', new_admin_lesson_path
    end

    primary.item :admin_timelines, '<i class="zmdi zmdi-link"></i> 时间表', '#', highlights_on: %r{/admin_timelines}, html: { class: 'sub-menu' } do |admin_timelines|
      admin_timelines.item :index, '列表', admin_timelines_path
      admin_timelines.item :new, '新建', new_admin_timeline_path
    end

    primary.item :admin_students, '<i class="zmdi zmdi-link"></i> 学生', '#', highlights_on: %r{/admin_students}, html: { class: 'sub-menu' } do |admin_students|
      admin_students.item :index, '列表', admin_students_path
      admin_students.item :new, '新建', new_admin_student_path
    end

    primary.item :admin_sales_lists, '<i class="zmdi zmdi-link"></i> 超市零售单', '#', highlights_on: %r{/admin_sales_lists}, html: { class: 'sub-menu' } do |admin_sales_lists|
      admin_sales_lists.item :index, '列表', admin_sales_lists_path
      admin_sales_lists.item :new, '新建', new_admin_sales_list_path
    end

    primary.item :admin_products, '<i class="zmdi zmdi-link"></i> 超市商品', '#', highlights_on: %r{/admin_products}, html: { class: 'sub-menu' } do |admin_products|
      admin_products.item :index, '列表', admin_products_path
      admin_products.item :new, '新建', new_admin_product_path
    end

    primary.item :admin_users, '<i class="zmdi zmdi-link"></i> 用户', '#', highlights_on: %r{/admin_users}, html: { class: 'sub-menu' } do |admin_users|
      admin_users.item :index, '列表', admin_users_path
    end

    primary.item :admin_admins, '<i class="zmdi zmdi-link"></i> 管理员', '#', highlights_on: %r{/admin_admins}, html: { class: 'sub-menu' } do |admin_admins|
      admin_admins.item :index, '列表', admin_admins_path
      admin_admins.item :new, '新建', new_admin_admin_path
    end

    primary.item :admin_roles, '<i class="zmdi zmdi-link"></i> 角色权限', '#', highlights_on: %r{/admin_roles}, html: { class: 'sub-menu' } do |admin_roles|
      admin_roles.item :index, '列表', admin_roles_path
      admin_roles.item :new, '新建', new_admin_role_path
    end

  end
end



    
