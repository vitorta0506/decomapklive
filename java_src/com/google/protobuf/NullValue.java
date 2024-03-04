package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.u0;
/* loaded from: classes3.dex */
public enum NullValue implements h2 {
    NULL_VALUE(0),
    UNRECOGNIZED(-1);
    
    public static final int NULL_VALUE_VALUE = 0;
    private final int value;
    private static final u0.d<NullValue> internalValueMap = new u0.d<NullValue>() { // from class: com.google.protobuf.NullValue.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public NullValue a(int i9) {
            return NullValue.forNumber(i9);
        }
    };
    private static final NullValue[] VALUES = values();

    NullValue(int i9) {
        this.value = i9;
    }

    public static NullValue forNumber(int i9) {
        if (i9 != 0) {
            return null;
        }
        return NULL_VALUE;
    }

    public static final Descriptors.d getDescriptor() {
        return v2.a().k().get(0);
    }

    public static u0.d<NullValue> internalGetValueMap() {
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
    public static NullValue valueOf(int i9) {
        return forNumber(i9);
    }

    public static NullValue valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
