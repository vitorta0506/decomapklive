package com.unity3d.services.core.log;
/* loaded from: classes4.dex */
class DeviceLogEntry {
    private DeviceLogLevel _logLevel;
    private String _originalMessage;
    private StackTraceElement _stackTraceElement;

    public DeviceLogEntry(DeviceLogLevel deviceLogLevel, String str, StackTraceElement stackTraceElement) {
        this._logLevel = deviceLogLevel;
        this._originalMessage = str;
        this._stackTraceElement = stackTraceElement;
    }

    public DeviceLogLevel getLogLevel() {
        return this._logLevel;
    }

    public String getParsedMessage() {
        String str;
        String str2;
        int i9;
        String str3 = this._originalMessage;
        StackTraceElement stackTraceElement = this._stackTraceElement;
        if (stackTraceElement != null) {
            str = stackTraceElement.getClassName();
            str2 = this._stackTraceElement.getMethodName();
            i9 = this._stackTraceElement.getLineNumber();
        } else {
            str = "UnknownClass";
            str2 = "unknownMethod";
            i9 = -1;
        }
        if (str3 != null && !str3.isEmpty()) {
            str3 = " :: " + str3;
        }
        if (str3 == null) {
            str3 = "";
        }
        return str + "." + str2 + "()" + (" (line:" + i9 + ")") + str3;
    }
}
