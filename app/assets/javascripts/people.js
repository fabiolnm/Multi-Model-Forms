function PermissionListViewModel() {
  this.permissions = ko.observableArray();

  this.add = function() {
    this.permissions.push({
      _destroy: ko.observable()
    });
  }

  this.empty = function() {
    var permissions = this.permissions();
    for (i = 0; i < permissions.length; i++)
      if (!permissions[i]._destroy())
          return false;
    return true;
  }
}
