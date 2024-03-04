package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum RoutingPriority implements h2 {
    DEFAULT(0),
    HIGH(1),
    UNRECOGNIZED(-1);
    
    public static final int DEFAULT_VALUE = 0;
    public static final int HIGH_VALUE = 1;
    private final int value;
    private static final u0.d<RoutingPriority> internalValueMap = new u0.d<RoutingPriority>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.RoutingPriority.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public RoutingPriority a(int i9) {
            return RoutingPriority.forNumber(i9);
        }
    };
    private static final RoutingPriority[] VALUES = values();

    RoutingPriority(int i9) {
        this.value = i9;
    }

    public static RoutingPriority forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                return null;
            }
            return HIGH;
        }
        return DEFAULT;
    }

    public static final Descriptors.d getDescriptor() {
        return g.a().k().get(0);
    }

    public static u0.d<RoutingPriority> internalGetValueMap() {
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
    public static RoutingPriority valueOf(int i9) {
        return forNumber(i9);
    }

    public static RoutingPriority valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
