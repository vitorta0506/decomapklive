package io.grpc.alts.internal;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes5.dex */
public enum HandshakeProtocol implements h2 {
    HANDSHAKE_PROTOCOL_UNSPECIFIED(0),
    TLS(1),
    ALTS(2),
    UNRECOGNIZED(-1);
    
    public static final int ALTS_VALUE = 2;
    public static final int HANDSHAKE_PROTOCOL_UNSPECIFIED_VALUE = 0;
    public static final int TLS_VALUE = 1;
    private final int value;
    private static final u0.d<HandshakeProtocol> internalValueMap = new u0.d<HandshakeProtocol>() { // from class: io.grpc.alts.internal.HandshakeProtocol.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public HandshakeProtocol a(int i9) {
            return HandshakeProtocol.forNumber(i9);
        }
    };
    private static final HandshakeProtocol[] VALUES = values();

    HandshakeProtocol(int i9) {
        this.value = i9;
    }

    public static HandshakeProtocol forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return ALTS;
            }
            return TLS;
        }
        return HANDSHAKE_PROTOCOL_UNSPECIFIED;
    }

    public static final Descriptors.d getDescriptor() {
        return r.a().k().get(0);
    }

    public static u0.d<HandshakeProtocol> internalGetValueMap() {
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
    public static HandshakeProtocol valueOf(int i9) {
        return forNumber(i9);
    }

    public static HandshakeProtocol valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
