package io.grpc.alts.internal;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes5.dex */
public enum SecurityLevel implements h2 {
    SECURITY_NONE(0),
    INTEGRITY_ONLY(1),
    INTEGRITY_AND_PRIVACY(2),
    UNRECOGNIZED(-1);
    
    public static final int INTEGRITY_AND_PRIVACY_VALUE = 2;
    public static final int INTEGRITY_ONLY_VALUE = 1;
    public static final int SECURITY_NONE_VALUE = 0;
    private final int value;
    private static final u0.d<SecurityLevel> internalValueMap = new u0.d<SecurityLevel>() { // from class: io.grpc.alts.internal.SecurityLevel.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public SecurityLevel a(int i9) {
            return SecurityLevel.forNumber(i9);
        }
    };
    private static final SecurityLevel[] VALUES = values();

    SecurityLevel(int i9) {
        this.value = i9;
    }

    public static SecurityLevel forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    return null;
                }
                return INTEGRITY_AND_PRIVACY;
            }
            return INTEGRITY_ONLY;
        }
        return SECURITY_NONE;
    }

    public static final Descriptors.d getDescriptor() {
        return d0.a().k().get(0);
    }

    public static u0.d<SecurityLevel> internalGetValueMap() {
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
    public static SecurityLevel valueOf(int i9) {
        return forNumber(i9);
    }

    public static SecurityLevel valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
