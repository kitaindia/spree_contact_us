Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "contacts",
                     :insert_bottom => "#admin-menu ul",
                     :text => "<%= tab :contacts %>")