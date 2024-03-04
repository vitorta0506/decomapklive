package io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum ConfigStatus implements h2 {
    UNKNOWN(0),
    SYNCED(1),
    NOT_SENT(2),
    STALE(3),
    ERROR(4),
    UNRECOGNIZED(-1);
    
    public static final int ERROR_VALUE = 4;
    public static final int NOT_SENT_VALUE = 2;
    public static final int STALE_VALUE = 3;
    public static final int SYNCED_VALUE = 1;
    public static final int UNKNOWN_VALUE = 0;
    private final int value;
    private static final u0.d<ConfigStatus> internalValueMap = new u0.d<ConfigStatus>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ConfigStatus.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public ConfigStatus a(int i9) {
            return ConfigStatus.forNumber(i9);
        }
    };
    private static final ConfigStatus[] VALUES = values();

    ConfigStatus(int i9) {
        this.value = i9;
    }

    public static ConfigStatus forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            return null;
                        }
                        return ERROR;
                    }
                    return STALE;
                }
                return NOT_SENT;
            }
            return SYNCED;
        }
        return UNKNOWN;
    }

    public static final Descriptors.d getDescriptor() {
        return b.a().k().get(0);
    }

    public static u0.d<ConfigStatus> internalGetValueMap() {
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
    public static ConfigStatus valueOf(int i9) {
        return forNumber(i9);
    }

    public static ConfigStatus valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
