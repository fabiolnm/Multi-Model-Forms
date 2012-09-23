function PermissionListViewModel() {
  this.permissions = ko.observableArray();

  this.add = function() {
    this.permissions.push({
      _destroy: ko.observable()
    });
  }

  this.empty = function() {
    return this.permissions().length == 0;
  }
}
