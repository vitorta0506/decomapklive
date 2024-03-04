package io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum CodecClientType implements h2 {
    HTTP1(0),
    HTTP2(1),
    HTTP3(2),
    UNRECOGNIZED(-1);
    
    public static final int HTTP1_VALUE = 0;
    public static final int HTTP2_VALUE = 1;
    public static final int HTTP3_VALUE = 2;
    private final int value;
    private static final u0.d<CodecClientType> internalValueMap = new u0.d<CodecClientType>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.CodecClientType.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public CodecClientType a(int i9) {
            return CodecClientType.forNumber(i9);
        }
    };
    private static final CodecClientType[] VALUES = values();

    CodecClientType(int i9) {
        this.value = i9;
    }

    public static CodecClientType forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return HTTP3;
            }
            return HTTP2;
        }
        return HTTP1;
    }

    public static final Descriptors.d getDescriptor() {
        return c.a().k().get(0);
    }

    public static u0.d<CodecClientType> internalGetValueMap() {
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
    public static CodecClientType valueOf(int i9) {
        return forNumber(i9);
    }

    public static CodecClientType valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
