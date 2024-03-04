package io.grpc.alts.internal;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes5.dex */
public enum NetworkProtocol implements h2 {
    NETWORK_PROTOCOL_UNSPECIFIED(0),
    TCP(1),
    UDP(2),
    UNRECOGNIZED(-1);
    
    public static final int NETWORK_PROTOCOL_UNSPECIFIED_VALUE = 0;
    public static final int TCP_VALUE = 1;
    public static final int UDP_VALUE = 2;
    private final int value;
    private static final u0.d<NetworkProtocol> internalValueMap = new u0.d<NetworkProtocol>() { // from class: io.grpc.alts.internal.NetworkProtocol.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public NetworkProtocol a(int i9) {
            return NetworkProtocol.forNumber(i9);
        }
    };
    private static final NetworkProtocol[] VALUES = values();

    NetworkProtocol(int i9) {
        this.value = i9;
    }

    public static NetworkProtocol forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return UDP;
            }
            return TCP;
        }
        return NETWORK_PROTOCOL_UNSPECIFIED;
    }

    public static final Descriptors.d getDescriptor() {
        return r.a().k().get(1);
    }

    public static u0.d<NetworkProtocol> internalGetValueMap() {
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
    public static NetworkProtocol valueOf(int i9) {
        return forNumber(i9);
    }

    public static NetworkProtocol valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
