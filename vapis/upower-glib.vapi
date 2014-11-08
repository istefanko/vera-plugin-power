/* UPowerGlib-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Up", gir_namespace = "UPowerGlib", gir_version = "1.0", lower_case_cprefix = "up__")]
namespace Up {
	[CCode (cheader_filename = "upower.h", type_id = "up_client_get_type ()")]
	public class Client : GLib.Object {
		[CCode (cname = "up_client_new", has_construct_function = false)]
		public Client ();
		[CCode (cname = "up_client_get_critical_action")]
		public string get_critical_action ();
		[CCode (cname = "up_client_get_daemon_version")]
		public unowned string get_daemon_version ();
		[CCode (cname = "up_client_get_devices")]
		public GLib.GenericArray<Up.Device> get_devices ();
		[CCode (cname = "up_client_get_display_device")]
		public Up.Device get_display_device ();
		[CCode (cname = "up_client_get_lid_is_closed")]
		public bool get_lid_is_closed ();
		[CCode (cname = "up_client_get_lid_is_present")]
		public bool get_lid_is_present ();
		[CCode (cname = "up_client_get_on_battery")]
		public bool get_on_battery ();
		[NoAccessorMethod]
		public string daemon_version { owned get; }
		[NoAccessorMethod]
		public bool lid_is_closed { get; }
		[NoAccessorMethod]
		public bool lid_is_present { get; }
		[NoAccessorMethod]
		public bool on_battery { get; }
		public virtual signal void device_added (Up.Device device);
		public virtual signal void device_removed (string object_path);
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_client_glue_proxy_get_type ()")]
	public class ClientGlueProxy : GLib.DBusProxy, GLib.AsyncInitable, GLib.DBusInterface, GLib.Initable, Up.ClientGlue {
		[CCode (cname = "up_client_glue_proxy_new", has_construct_function = false)]
		public async ClientGlueProxy (GLib.DBusConnection connection, GLib.DBusProxyFlags flags, string? name, string object_path, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "up_client_glue_proxy_new_for_bus", has_construct_function = false)]
		public async ClientGlueProxy.for_bus (GLib.BusType bus_type, GLib.DBusProxyFlags flags, string name, string object_path, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "up_client_glue_proxy_new_for_bus_sync", has_construct_function = false, type = "UpClientGlue*")]
		public ClientGlueProxy.for_bus_sync (GLib.BusType bus_type, GLib.DBusProxyFlags flags, string name, string object_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_client_glue_proxy_new_sync", has_construct_function = false, type = "UpClientGlue*")]
		public ClientGlueProxy.sync (GLib.DBusConnection connection, GLib.DBusProxyFlags flags, string? name, string object_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_client_glue_skeleton_get_type ()")]
	public class ClientGlueSkeleton : GLib.DBusInterfaceSkeleton, GLib.DBusInterface, Up.ClientGlue {
		[CCode (cname = "up_client_glue_skeleton_new", has_construct_function = false, type = "UpClientGlue*")]
		public ClientGlueSkeleton ();
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_device_get_type ()")]
	public class Device : GLib.Object {
		[CCode (cname = "up_device_new", has_construct_function = false)]
		public Device ();
		[CCode (cname = "up_device_get_history_sync")]
		public GLib.GenericArray<Up.HistoryItem> get_history_sync (string type, uint timespec, uint resolution, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_get_object_path")]
		public unowned string get_object_path ();
		[CCode (cname = "up_device_get_statistics_sync")]
		public GLib.GenericArray<Up.StatsItem> get_statistics_sync (string type, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_kind_from_string")]
		public static Up.DeviceKind kind_from_string (string type);
		[CCode (cname = "up_device_kind_to_string")]
		public static unowned string kind_to_string (Up.DeviceKind type_enum);
		[CCode (cname = "up_device_level_from_string")]
		public static Up.DeviceLevel level_from_string (string level);
		[CCode (cname = "up_device_level_to_string")]
		public static unowned string level_to_string (Up.DeviceLevel level_enum);
		[CCode (cname = "up_device_refresh_sync")]
		public bool refresh_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_set_object_path_sync")]
		public bool set_object_path_sync (string object_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_state_from_string")]
		public static Up.DeviceState state_from_string (string state);
		[CCode (cname = "up_device_state_to_string")]
		public static unowned string state_to_string (Up.DeviceState state_enum);
		[CCode (cname = "up_device_technology_from_string")]
		public static Up.DeviceTechnology technology_from_string (string technology);
		[CCode (cname = "up_device_technology_to_string")]
		public static unowned string technology_to_string (Up.DeviceTechnology technology_enum);
		[CCode (cname = "up_device_to_text")]
		public string to_text ();
		[NoAccessorMethod]
		public double capacity { get; set; }
		[NoAccessorMethod]
		public double energy { get; set; }
		[NoAccessorMethod]
		public double energy_empty { get; set; }
		[NoAccessorMethod]
		public double energy_full { get; set; }
		[NoAccessorMethod]
		public double energy_full_design { get; set; }
		[NoAccessorMethod]
		public double energy_rate { get; set; }
		[NoAccessorMethod]
		public bool has_history { get; set; }
		[NoAccessorMethod]
		public bool has_statistics { get; set; }
		[NoAccessorMethod]
		public string icon_name { owned get; set; }
		[NoAccessorMethod]
		public bool is_present { get; set; }
		[NoAccessorMethod]
		public bool is_rechargeable { get; set; }
		[NoAccessorMethod]
		public uint kind { get; set; }
		[NoAccessorMethod]
		public double luminosity { get; set; }
		[NoAccessorMethod]
		public string model { owned get; set; }
		[NoAccessorMethod]
		public string native_path { owned get; set; }
		[NoAccessorMethod]
		public bool online { get; set; }
		[NoAccessorMethod]
		public double percentage { get; set; }
		[NoAccessorMethod]
		public bool power_supply { get; set; }
		[NoAccessorMethod]
		public string serial { owned get; set; }
		[NoAccessorMethod]
		public uint state { get; set; }
		[NoAccessorMethod]
		public uint technology { get; set; }
		[NoAccessorMethod]
		public double temperature { get; set; }
		[NoAccessorMethod]
		public int64 time_to_empty { get; set; }
		[NoAccessorMethod]
		public int64 time_to_full { get; set; }
		[NoAccessorMethod]
		public uint64 update_time { get; set; }
		[NoAccessorMethod]
		public string vendor { owned get; set; }
		[NoAccessorMethod]
		public double voltage { get; set; }
		[NoAccessorMethod]
		public uint warning_level { get; set; }
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_device_glue_proxy_get_type ()")]
	public class DeviceGlueProxy : GLib.DBusProxy, GLib.AsyncInitable, GLib.DBusInterface, GLib.Initable, Up.DeviceGlue {
		[CCode (cname = "up_device_glue_proxy_new", has_construct_function = false)]
		public async DeviceGlueProxy (GLib.DBusConnection connection, GLib.DBusProxyFlags flags, string? name, string object_path, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "up_device_glue_proxy_new_for_bus", has_construct_function = false)]
		public async DeviceGlueProxy.for_bus (GLib.BusType bus_type, GLib.DBusProxyFlags flags, string name, string object_path, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "up_device_glue_proxy_new_for_bus_sync", has_construct_function = false, type = "UpDeviceGlue*")]
		public DeviceGlueProxy.for_bus_sync (GLib.BusType bus_type, GLib.DBusProxyFlags flags, string name, string object_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_glue_proxy_new_sync", has_construct_function = false, type = "UpDeviceGlue*")]
		public DeviceGlueProxy.sync (GLib.DBusConnection connection, GLib.DBusProxyFlags flags, string? name, string object_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_device_glue_skeleton_get_type ()")]
	public class DeviceGlueSkeleton : GLib.DBusInterfaceSkeleton, GLib.DBusInterface, Up.DeviceGlue {
		[CCode (cname = "up_device_glue_skeleton_new", has_construct_function = false, type = "UpDeviceGlue*")]
		public DeviceGlueSkeleton ();
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_history_item_get_type ()")]
	public class HistoryItem : GLib.Object {
		[CCode (cname = "up_history_item_new", has_construct_function = false)]
		public HistoryItem ();
		[CCode (cname = "up_history_item_get_state")]
		public Up.DeviceState get_state ();
		[CCode (cname = "up_history_item_get_time")]
		public uint get_time ();
		[CCode (cname = "up_history_item_get_value")]
		public double get_value ();
		[CCode (cname = "up_history_item_set_from_string")]
		public bool set_from_string (string text);
		[CCode (cname = "up_history_item_set_state")]
		public void set_state (Up.DeviceState state);
		[CCode (cname = "up_history_item_set_time")]
		public void set_time (uint time);
		[CCode (cname = "up_history_item_set_time_to_present")]
		public void set_time_to_present ();
		[CCode (cname = "up_history_item_set_value")]
		public void set_value (double value);
		[CCode (cname = "up_history_item_to_string")]
		public string to_string ();
		[NoAccessorMethod]
		public uint state { get; set; }
		[NoAccessorMethod]
		public uint time { get; set; }
		[NoAccessorMethod]
		public double value { get; set; }
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_stats_item_get_type ()")]
	public class StatsItem : GLib.Object {
		[CCode (cname = "up_stats_item_new", has_construct_function = false)]
		public StatsItem ();
		[CCode (cname = "up_stats_item_get_accuracy")]
		public double get_accuracy ();
		[CCode (cname = "up_stats_item_get_value")]
		public double get_value ();
		[CCode (cname = "up_stats_item_set_accuracy")]
		public void set_accuracy (double accuracy);
		[CCode (cname = "up_stats_item_set_value")]
		public void set_value (double value);
		[NoAccessorMethod]
		public double accuracy { get; set; }
		[NoAccessorMethod]
		public double value { get; set; }
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_wakeup_item_get_type ()")]
	public class WakeupItem : GLib.Object {
		[CCode (cname = "up_wakeup_item_new", has_construct_function = false)]
		public WakeupItem ();
		[CCode (cname = "up_wakeup_item_get_cmdline")]
		public unowned string get_cmdline ();
		[CCode (cname = "up_wakeup_item_get_details")]
		public unowned string get_details ();
		[CCode (cname = "up_wakeup_item_get_id")]
		public uint get_id ();
		[CCode (cname = "up_wakeup_item_get_is_userspace")]
		public bool get_is_userspace ();
		[CCode (cname = "up_wakeup_item_get_old")]
		public uint get_old ();
		[CCode (cname = "up_wakeup_item_get_value")]
		public double get_value ();
		[CCode (cname = "up_wakeup_item_set_cmdline")]
		public void set_cmdline (string cmdline);
		[CCode (cname = "up_wakeup_item_set_details")]
		public void set_details (string details);
		[CCode (cname = "up_wakeup_item_set_id")]
		public void set_id (uint id);
		[CCode (cname = "up_wakeup_item_set_is_userspace")]
		public void set_is_userspace (bool is_userspace);
		[CCode (cname = "up_wakeup_item_set_old")]
		public void set_old (uint old);
		[CCode (cname = "up_wakeup_item_set_value")]
		public void set_value (double value);
		[NoAccessorMethod]
		public string cmdline { owned get; set; }
		[NoAccessorMethod]
		public string details { owned get; set; }
		[NoAccessorMethod]
		public uint id { get; set; }
		[NoAccessorMethod]
		public bool is_userspace { get; set; }
		[NoAccessorMethod]
		public uint old { get; set; }
		[NoAccessorMethod]
		public double value { get; set; }
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_wakeups_get_type ()")]
	public class Wakeups : GLib.Object {
		[CCode (cname = "up_wakeups_new", has_construct_function = false)]
		public Wakeups ();
		[CCode (cname = "up_wakeups_get_data_sync")]
		public GLib.GenericArray<Up.WakeupItem> get_data_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_wakeups_get_has_capability")]
		public bool get_has_capability ();
		[CCode (cname = "up_wakeups_get_properties_sync")]
		public bool get_properties_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_wakeups_get_total_sync")]
		public uint get_total_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public virtual signal void data_changed ();
		public virtual signal void total_changed (uint value);
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_wakeups_glue_proxy_get_type ()")]
	public class WakeupsGlueProxy : GLib.DBusProxy, GLib.AsyncInitable, GLib.DBusInterface, GLib.Initable, Up.WakeupsGlue {
		[CCode (cname = "up_wakeups_glue_proxy_new", has_construct_function = false)]
		public async WakeupsGlueProxy (GLib.DBusConnection connection, GLib.DBusProxyFlags flags, string? name, string object_path, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "up_wakeups_glue_proxy_new_for_bus", has_construct_function = false)]
		public async WakeupsGlueProxy.for_bus (GLib.BusType bus_type, GLib.DBusProxyFlags flags, string name, string object_path, GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "up_wakeups_glue_proxy_new_for_bus_sync", has_construct_function = false, type = "UpWakeupsGlue*")]
		public WakeupsGlueProxy.for_bus_sync (GLib.BusType bus_type, GLib.DBusProxyFlags flags, string name, string object_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_wakeups_glue_proxy_new_sync", has_construct_function = false, type = "UpWakeupsGlue*")]
		public WakeupsGlueProxy.sync (GLib.DBusConnection connection, GLib.DBusProxyFlags flags, string? name, string object_path, GLib.Cancellable? cancellable = null) throws GLib.Error;
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_wakeups_glue_skeleton_get_type ()")]
	public class WakeupsGlueSkeleton : GLib.DBusInterfaceSkeleton, GLib.DBusInterface, Up.WakeupsGlue {
		[CCode (cname = "up_wakeups_glue_skeleton_new", has_construct_function = false, type = "UpWakeupsGlue*")]
		public WakeupsGlueSkeleton ();
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_client_glue_get_type ()")]
	public interface ClientGlue : GLib.Object {
		[CCode (cname = "up_client_glue_call_enumerate_devices")]
		public async bool call_enumerate_devices (GLib.Cancellable? cancellable, out string out_devices) throws GLib.Error;
		[CCode (cname = "up_client_glue_call_enumerate_devices_sync")]
		public bool call_enumerate_devices_sync (out string out_devices, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_client_glue_call_get_critical_action")]
		public async bool call_get_critical_action (GLib.Cancellable? cancellable, out string out_action) throws GLib.Error;
		[CCode (cname = "up_client_glue_call_get_critical_action_sync")]
		public bool call_get_critical_action_sync (out string out_action, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_client_glue_call_get_display_device")]
		public async bool call_get_display_device (GLib.Cancellable? cancellable, out string out_device) throws GLib.Error;
		[CCode (cname = "up_client_glue_call_get_display_device_sync")]
		public bool call_get_display_device_sync (out string out_device, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_client_glue_complete_enumerate_devices")]
		public void complete_enumerate_devices (owned GLib.DBusMethodInvocation invocation, string devices);
		[CCode (cname = "up_client_glue_complete_get_critical_action")]
		public void complete_get_critical_action (owned GLib.DBusMethodInvocation invocation, string action);
		[CCode (cname = "up_client_glue_complete_get_display_device")]
		public void complete_get_display_device (owned GLib.DBusMethodInvocation invocation, string device);
		[CCode (cname = "up_client_glue_emit_device_added")]
		public void emit_device_added (string arg_device);
		[CCode (cname = "up_client_glue_emit_device_removed")]
		public void emit_device_removed (string arg_device);
		[CCode (cname = "up_client_glue_interface_info")]
		public static unowned GLib.DBusInterfaceInfo interface_info ();
		[CCode (cname = "up_client_glue_override_properties")]
		public static uint override_properties (GLib.ObjectClass klass, uint property_id_begin);
		[NoAccessorMethod]
		public abstract string daemon_version { owned get; set; }
		[NoAccessorMethod]
		public abstract bool lid_is_closed { get; set; }
		[NoAccessorMethod]
		public abstract bool lid_is_present { get; set; }
		[NoAccessorMethod]
		public abstract bool on_battery { get; set; }
		public virtual signal void device_added (string arg_device);
		public virtual signal void device_removed (string arg_device);
		public virtual signal bool handle_enumerate_devices (GLib.DBusMethodInvocation invocation);
		public virtual signal bool handle_get_critical_action (GLib.DBusMethodInvocation invocation);
		public virtual signal bool handle_get_display_device (GLib.DBusMethodInvocation invocation);
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_device_glue_get_type ()")]
	public interface DeviceGlue : GLib.Object {
		[CCode (cname = "up_device_glue_call_get_history")]
		public async bool call_get_history (string arg_type, uint arg_timespan, uint arg_resolution, GLib.Cancellable? cancellable, out GLib.Variant out_data) throws GLib.Error;
		[CCode (cname = "up_device_glue_call_get_history_sync")]
		public bool call_get_history_sync (string arg_type, uint arg_timespan, uint arg_resolution, out GLib.Variant out_data, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_glue_call_get_statistics")]
		public async bool call_get_statistics (string arg_type, GLib.Cancellable? cancellable, out GLib.Variant out_data) throws GLib.Error;
		[CCode (cname = "up_device_glue_call_get_statistics_sync")]
		public bool call_get_statistics_sync (string arg_type, out GLib.Variant out_data, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_glue_call_refresh")]
		public async bool call_refresh (GLib.Cancellable? cancellable) throws GLib.Error;
		[CCode (cname = "up_device_glue_call_refresh_sync")]
		public bool call_refresh_sync (GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_device_glue_complete_get_history")]
		public void complete_get_history (owned GLib.DBusMethodInvocation invocation, GLib.Variant data);
		[CCode (cname = "up_device_glue_complete_get_statistics")]
		public void complete_get_statistics (owned GLib.DBusMethodInvocation invocation, GLib.Variant data);
		[CCode (cname = "up_device_glue_complete_refresh")]
		public void complete_refresh (owned GLib.DBusMethodInvocation invocation);
		[CCode (cname = "up_device_glue_interface_info")]
		public static unowned GLib.DBusInterfaceInfo interface_info ();
		[CCode (cname = "up_device_glue_override_properties")]
		public static uint override_properties (GLib.ObjectClass klass, uint property_id_begin);
		[NoAccessorMethod]
		public abstract double capacity { get; set; }
		[NoAccessorMethod]
		public abstract double energy { get; set; }
		[NoAccessorMethod]
		public abstract double energy_empty { get; set; }
		[NoAccessorMethod]
		public abstract double energy_full { get; set; }
		[NoAccessorMethod]
		public abstract double energy_full_design { get; set; }
		[NoAccessorMethod]
		public abstract double energy_rate { get; set; }
		[NoAccessorMethod]
		public abstract bool has_history { get; set; }
		[NoAccessorMethod]
		public abstract bool has_statistics { get; set; }
		[NoAccessorMethod]
		public abstract string icon_name { owned get; set; }
		[NoAccessorMethod]
		public abstract bool is_present { get; set; }
		[NoAccessorMethod]
		public abstract bool is_rechargeable { get; set; }
		[NoAccessorMethod]
		public abstract double luminosity { get; set; }
		[NoAccessorMethod]
		public abstract string model { owned get; set; }
		[NoAccessorMethod]
		public abstract string native_path { owned get; set; }
		[NoAccessorMethod]
		public abstract bool online { get; set; }
		[NoAccessorMethod]
		public abstract double percentage { get; set; }
		[NoAccessorMethod]
		public abstract bool power_supply { get; set; }
		[NoAccessorMethod]
		public abstract string serial { owned get; set; }
		[NoAccessorMethod]
		public abstract uint state { get; set; }
		[NoAccessorMethod]
		public abstract uint technology { get; set; }
		[NoAccessorMethod]
		public abstract double temperature { get; set; }
		[NoAccessorMethod]
		public abstract int64 time_to_empty { get; set; }
		[NoAccessorMethod]
		public abstract int64 time_to_full { get; set; }
		[NoAccessorMethod]
		public abstract uint type { get; set; }
		[NoAccessorMethod]
		public abstract uint64 update_time { get; set; }
		[NoAccessorMethod]
		public abstract string vendor { owned get; set; }
		[NoAccessorMethod]
		public abstract double voltage { get; set; }
		[NoAccessorMethod]
		public abstract uint warning_level { get; set; }
		public virtual signal bool handle_get_history (GLib.DBusMethodInvocation invocation, string arg_type, uint arg_timespan, uint arg_resolution);
		public virtual signal bool handle_get_statistics (GLib.DBusMethodInvocation invocation, string arg_type);
		public virtual signal bool handle_refresh (GLib.DBusMethodInvocation invocation);
	}
	[CCode (cheader_filename = "upower.h", type_id = "up_wakeups_glue_get_type ()")]
	public interface WakeupsGlue : GLib.Object {
		[CCode (cname = "up_wakeups_glue_call_get_data")]
		public async bool call_get_data (GLib.Cancellable? cancellable, out GLib.Variant out_data) throws GLib.Error;
		[CCode (cname = "up_wakeups_glue_call_get_data_sync")]
		public bool call_get_data_sync (out GLib.Variant out_data, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_wakeups_glue_call_get_total")]
		public async bool call_get_total (GLib.Cancellable? cancellable, out uint out_value) throws GLib.Error;
		[CCode (cname = "up_wakeups_glue_call_get_total_sync")]
		public bool call_get_total_sync (out uint out_value, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (cname = "up_wakeups_glue_complete_get_data")]
		public void complete_get_data (owned GLib.DBusMethodInvocation invocation, GLib.Variant data);
		[CCode (cname = "up_wakeups_glue_complete_get_total")]
		public void complete_get_total (owned GLib.DBusMethodInvocation invocation, uint value);
		[CCode (cname = "up_wakeups_glue_emit_data_changed")]
		public void emit_data_changed ();
		[CCode (cname = "up_wakeups_glue_emit_total_changed")]
		public void emit_total_changed (uint arg_value);
		[CCode (cname = "up_wakeups_glue_interface_info")]
		public static unowned GLib.DBusInterfaceInfo interface_info ();
		[CCode (cname = "up_wakeups_glue_override_properties")]
		public static uint override_properties (GLib.ObjectClass klass, uint property_id_begin);
		[NoAccessorMethod]
		public abstract bool has_capability { get; set; }
		public virtual signal void data_changed ();
		public virtual signal bool handle_get_data (GLib.DBusMethodInvocation invocation);
		public virtual signal bool handle_get_total (GLib.DBusMethodInvocation invocation);
		public virtual signal void total_changed (uint arg_value);
	}
	[CCode (cheader_filename = "upower.h", cprefix = "UP_DEVICE_KIND_", has_type_id = false)]
	public enum DeviceKind {
		UNKNOWN,
		LINE_POWER,
		BATTERY,
		UPS,
		MONITOR,
		MOUSE,
		KEYBOARD,
		PDA,
		PHONE,
		MEDIA_PLAYER,
		TABLET,
		COMPUTER,
		LAST
	}
	[CCode (cheader_filename = "upower.h", cprefix = "UP_DEVICE_LEVEL_", has_type_id = false)]
	public enum DeviceLevel {
		UNKNOWN,
		NONE,
		DISCHARGING,
		LOW,
		CRITICAL,
		ACTION,
		LAST
	}
	[CCode (cheader_filename = "upower.h", cprefix = "UP_DEVICE_STATE_", has_type_id = false)]
	public enum DeviceState {
		UNKNOWN,
		CHARGING,
		DISCHARGING,
		EMPTY,
		FULLY_CHARGED,
		PENDING_CHARGE,
		PENDING_DISCHARGE,
		LAST
	}
	[CCode (cheader_filename = "upower.h", cprefix = "UP_DEVICE_TECHNOLOGY_", has_type_id = false)]
	public enum DeviceTechnology {
		UNKNOWN,
		LITHIUM_ION,
		LITHIUM_POLYMER,
		LITHIUM_IRON_PHOSPHATE,
		LEAD_ACID,
		NICKEL_CADMIUM,
		NICKEL_METAL_HYDRIDE,
		LAST
	}
	[CCode (cheader_filename = "upower.h", cname = "UP_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "upower.h", cname = "UP_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "upower.h", cname = "UP_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "upower.h", cname = "up_client_glue_interface_info")]
	public static unowned GLib.DBusInterfaceInfo client_glue_interface_info ();
	[CCode (cheader_filename = "upower.h", cname = "up_client_glue_override_properties")]
	public static uint client_glue_override_properties (GLib.ObjectClass klass, uint property_id_begin);
	[CCode (cheader_filename = "upower.h", cname = "up_device_glue_interface_info")]
	public static unowned GLib.DBusInterfaceInfo device_glue_interface_info ();
	[CCode (cheader_filename = "upower.h", cname = "up_device_glue_override_properties")]
	public static uint device_glue_override_properties (GLib.ObjectClass klass, uint property_id_begin);
	[CCode (cheader_filename = "upower.h", cname = "up_wakeups_glue_interface_info")]
	public static unowned GLib.DBusInterfaceInfo wakeups_glue_interface_info ();
	[CCode (cheader_filename = "upower.h", cname = "up_wakeups_glue_override_properties")]
	public static uint wakeups_glue_override_properties (GLib.ObjectClass klass, uint property_id_begin);
}
