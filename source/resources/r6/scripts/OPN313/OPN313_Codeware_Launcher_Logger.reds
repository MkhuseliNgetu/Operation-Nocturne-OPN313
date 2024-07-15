module OPN313.Logger

public static func OPNLog(value: script_ref<String>) -> Void {
  FTLog(s"[OPN313] \(value)");
}

public static func OPNLogWarn(value: script_ref<String>) -> Void {
  FTLogWarning(s"[OPN313] \(value)");
}

public static func OPNLogError(value: script_ref<String>) -> Void {
  FTLogError(s"[OPN313] \(value)");
}
