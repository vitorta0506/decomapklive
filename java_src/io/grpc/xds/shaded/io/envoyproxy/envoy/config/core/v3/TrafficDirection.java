package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum TrafficDirection implements h2 {
    UNSPECIFIED(0),
    INBOUND(1),
    OUTBOUND(2),
    UNRECOGNIZED(-1);
    
    public static final int INBOUND_VALUE = 1;
    public static final int OUTBOUND_VALUE = 2;
    public static final int UNSPECIFIED_VALUE = 0;
    private final int value;
    private static final u0.d<TrafficDirection> internalValueMap = new u0.d<TrafficDirection>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.TrafficDirection.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public TrafficDirection a(int i9) {
            return TrafficDirection.forNumber(i9);
        }
    };
    private static final TrafficDirection[] VALUES = values();

    TrafficDirection(int i9) {
        this.value = i9;
    }

    public static TrafficDirection forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return OUTBOUND;
            }
            return INBOUND;
        }
        return UNSPECIFIED;
    }

    public static final Descriptors.d getDescriptor() {
        return g.a().k().get(2);
    }

    public static u0.d<TrafficDirection> internalGetValueMap() {
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
    public static TrafficDirection valueOf(int i9) {
        return forNumber(i9);
    }

    public static TrafficDirection valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
