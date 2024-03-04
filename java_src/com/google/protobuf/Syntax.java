package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.u0;
/* loaded from: classes3.dex */
public enum Syntax implements h2 {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    UNRECOGNIZED(-1);
    
    public static final int SYNTAX_PROTO2_VALUE = 0;
    public static final int SYNTAX_PROTO3_VALUE = 1;
    private final int value;
    private static final u0.d<Syntax> internalValueMap = new u0.d<Syntax>() { // from class: com.google.protobuf.Syntax.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public Syntax a(int i9) {
            return Syntax.forNumber(i9);
        }
    };
    private static final Syntax[] VALUES = values();

    Syntax(int i9) {
        this.value = i9;
    }

    public static Syntax forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                return null;
            }
            return SYNTAX_PROTO3;
        }
        return SYNTAX_PROTO2;
    }

    public static final Descriptors.d getDescriptor() {
        return c3.a().k().get(0);
    }

    public static u0.d<Syntax> internalGetValueMap() {
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
    public static Syntax valueOf(int i9) {
        return forNumber(i9);
    }

    public static Syntax valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
