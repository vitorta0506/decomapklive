package com.google.logging.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes2.dex */
public enum LogSeverity implements h2 {
    DEFAULT(0),
    DEBUG(100),
    INFO(200),
    NOTICE(300),
    WARNING(400),
    ERROR(500),
    CRITICAL(600),
    ALERT(700),
    EMERGENCY(800),
    UNRECOGNIZED(-1);
    
    public static final int ALERT_VALUE = 700;
    public static final int CRITICAL_VALUE = 600;
    public static final int DEBUG_VALUE = 100;
    public static final int DEFAULT_VALUE = 0;
    public static final int EMERGENCY_VALUE = 800;
    public static final int ERROR_VALUE = 500;
    public static final int INFO_VALUE = 200;
    public static final int NOTICE_VALUE = 300;
    public static final int WARNING_VALUE = 400;
    private final int value;
    private static final u0.d<LogSeverity> internalValueMap = new u0.d<LogSeverity>() { // from class: com.google.logging.type.LogSeverity.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public LogSeverity a(int i9) {
            return LogSeverity.forNumber(i9);
        }
    };
    private static final LogSeverity[] VALUES = values();

    LogSeverity(int i9) {
        this.value = i9;
    }

    public static LogSeverity forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 100) {
                if (i9 != 200) {
                    if (i9 != 300) {
                        if (i9 != 400) {
                            if (i9 != 500) {
                                if (i9 != 600) {
                                    if (i9 != 700) {
                                        if (i9 != 800) {
                                            return null;
                                        }
                                        return EMERGENCY;
                                    }
                                    return ALERT;
                                }
                                return CRITICAL;
                            }
                            return ERROR;
                        }
                        return WARNING;
                    }
                    return NOTICE;
                }
                return INFO;
            }
            return DEBUG;
        }
        return DEFAULT;
    }

    public static final Descriptors.d getDescriptor() {
        return b.a().k().get(0);
    }

    public static u0.d<LogSeverity> internalGetValueMap() {
        return internalValueMap;
    }

    public final Descriptors.d getDescriptorForType() {
        return getDescriptor();
    }

    @Override // com.google.protobuf.u0.c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public final Descriptors.e getValueDescriptor() {
        if (this != UNRECOGNIZED) {
            return getDescriptor().k().get(ordinal());
        }
        throw new IllegalStateException("Can't get the descriptor of an unrecognized enum value.");
    }

    @Deprecated
    public static LogSeverity valueOf(int i9) {
        return forNumber(i9);
    }

    public static LogSeverity valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
