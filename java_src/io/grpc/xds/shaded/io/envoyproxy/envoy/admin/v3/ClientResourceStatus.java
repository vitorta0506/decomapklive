package io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes5.dex */
public enum ClientResourceStatus implements h2 {
    UNKNOWN(0),
    REQUESTED(1),
    DOES_NOT_EXIST(2),
    ACKED(3),
    NACKED(4),
    UNRECOGNIZED(-1);
    
    public static final int ACKED_VALUE = 3;
    public static final int DOES_NOT_EXIST_VALUE = 2;
    public static final int NACKED_VALUE = 4;
    public static final int REQUESTED_VALUE = 1;
    public static final int UNKNOWN_VALUE = 0;
    private final int value;
    private static final u0.d<ClientResourceStatus> internalValueMap = new u0.d<ClientResourceStatus>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.admin.v3.ClientResourceStatus.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public ClientResourceStatus a(int i9) {
            return ClientResourceStatus.forNumber(i9);
        }
    };
    private static final ClientResourceStatus[] VALUES = values();

    ClientResourceStatus(int i9) {
        this.value = i9;
    }

    public static ClientResourceStatus forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            return null;
                        }
                        return NACKED;
                    }
                    return ACKED;
                }
                return DOES_NOT_EXIST;
            }
            return REQUESTED;
        }
        return UNKNOWN;
    }

    public static final Descriptors.d getDescriptor() {
        return b.a().k().get(0);
    }

    public static u0.d<ClientResourceStatus> internalGetValueMap() {
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
    public static ClientResourceStatus valueOf(int i9) {
        return forNumber(i9);
    }

    public static ClientResourceStatus valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
