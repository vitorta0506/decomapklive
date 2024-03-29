package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum HealthStatus implements h2 {
    UNKNOWN(0),
    HEALTHY(1),
    UNHEALTHY(2),
    DRAINING(3),
    TIMEOUT(4),
    DEGRADED(5),
    UNRECOGNIZED(-1);
    
    public static final int DEGRADED_VALUE = 5;
    public static final int DRAINING_VALUE = 3;
    public static final int HEALTHY_VALUE = 1;
    public static final int TIMEOUT_VALUE = 4;
    public static final int UNHEALTHY_VALUE = 2;
    public static final int UNKNOWN_VALUE = 0;
    private final int value;
    private static final u0.d<HealthStatus> internalValueMap = new u0.d<HealthStatus>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.HealthStatus.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public HealthStatus a(int i9) {
            return HealthStatus.forNumber(i9);
        }
    };
    private static final HealthStatus[] VALUES = values();

    HealthStatus(int i9) {
        this.value = i9;
    }

    public static HealthStatus forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                return null;
                            }
                            return DEGRADED;
                        }
                        return TIMEOUT;
                    }
                    return DRAINING;
                }
                return UNHEALTHY;
            }
            return HEALTHY;
        }
        return UNKNOWN;
    }

    public static final Descriptors.d getDescriptor() {
        return w.a().k().get(0);
    }

    public static u0.d<HealthStatus> internalGetValueMap() {
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
    public static HealthStatus valueOf(int i9) {
        return forNumber(i9);
    }

    public static HealthStatus valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
