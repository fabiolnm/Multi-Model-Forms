function PermissionListViewModel(permissions) {
  this.permissions = ko.mapping.fromJS(permissions);
  for(i in permissions) {
    p = this.permissions()[i];
    p._destroy = false;
    p.index = i;
  }

  this.areas = [ "admin", "backups", "logs" ];

  this.grants = [
    {  grant: "Read-Only", value: "R" },
    {  grant: "Read-Write", value: "RW" },
    {  grant: "Read-Write-Delete", value: "RWD" }
  ];

  this.add = function() {
    var new_index = this.permissions().length;
    this.permissions.push({
      id: "",
      restricted_area: "",
      grants: "",
      index: new_index,
      _destroy: false
    });
  }

  this.empty = function() {
    return this.permissions().length == 0;
  }
}
