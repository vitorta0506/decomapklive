package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes6.dex */
public enum ApiVersion implements h2 {
    AUTO(0),
    V2(1),
    V3(2),
    UNRECOGNIZED(-1);
    
    @Deprecated
    public static final int AUTO_VALUE = 0;
    @Deprecated
    public static final int V2_VALUE = 1;
    public static final int V3_VALUE = 2;
    private final int value;
    private static final u0.d<ApiVersion> internalValueMap = new u0.d<ApiVersion>() { // from class: io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.ApiVersion.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public ApiVersion a(int i9) {
            return ApiVersion.forNumber(i9);
        }
    };
    private static final ApiVersion[] VALUES = values();

    ApiVersion(int i9) {
        this.value = i9;
    }

    public static ApiVersion forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return V3;
            }
            return V2;
        }
        return AUTO;
    }

    public static final Descriptors.d getDescriptor() {
        return l.a().k().get(0);
    }

    public static u0.d<ApiVersion> internalGetValueMap() {
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
    public static ApiVersion valueOf(int i9) {
        return forNumber(i9);
    }

    public static ApiVersion valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
