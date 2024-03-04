package io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum ClientConfigStatus implements h2 {
    CLIENT_UNKNOWN(0),
    CLIENT_REQUESTED(1),
    CLIENT_ACKED(2),
    CLIENT_NACKED(3),
    UNRECOGNIZED(-1);
    
    public static final int CLIENT_ACKED_VALUE = 2;
    public static final int CLIENT_NACKED_VALUE = 3;
    public static final int CLIENT_REQUESTED_VALUE = 1;
    public static final int CLIENT_UNKNOWN_VALUE = 0;
    private final int value;
    private static final u0.d<ClientConfigStatus> internalValueMap = new u0.d<ClientConfigStatus>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.service.status.v3.ClientConfigStatus.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public ClientConfigStatus a(int i9) {
            return ClientConfigStatus.forNumber(i9);
        }
    };
    private static final ClientConfigStatus[] VALUES = values();

    ClientConfigStatus(int i9) {
        this.value = i9;
    }

    public static ClientConfigStatus forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return CLIENT_NACKED;
                }
                return CLIENT_ACKED;
            }
            return CLIENT_REQUESTED;
        }
        return CLIENT_UNKNOWN;
    }

    public static final Descriptors.d getDescriptor() {
        return b.a().k().get(1);
    }

    public static u0.d<ClientConfigStatus> internalGetValueMap() {
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
    public static ClientConfigStatus valueOf(int i9) {
        return forNumber(i9);
    }

    public static ClientConfigStatus valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
