package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes2.dex */
public enum FieldBehavior implements h2 {
    FIELD_BEHAVIOR_UNSPECIFIED(0),
    OPTIONAL(1),
    REQUIRED(2),
    OUTPUT_ONLY(3),
    INPUT_ONLY(4),
    IMMUTABLE(5),
    UNORDERED_LIST(6),
    NON_EMPTY_DEFAULT(7),
    UNRECOGNIZED(-1);
    
    public static final int FIELD_BEHAVIOR_UNSPECIFIED_VALUE = 0;
    public static final int IMMUTABLE_VALUE = 5;
    public static final int INPUT_ONLY_VALUE = 4;
    public static final int NON_EMPTY_DEFAULT_VALUE = 7;
    public static final int OPTIONAL_VALUE = 1;
    public static final int OUTPUT_ONLY_VALUE = 3;
    public static final int REQUIRED_VALUE = 2;
    public static final int UNORDERED_LIST_VALUE = 6;
    private final int value;
    private static final u0.d<FieldBehavior> internalValueMap = new u0.d<FieldBehavior>() { // from class: com.google.api.FieldBehavior.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public FieldBehavior a(int i9) {
            return FieldBehavior.forNumber(i9);
        }
    };
    private static final FieldBehavior[] VALUES = values();

    FieldBehavior(int i9) {
        this.value = i9;
    }

    public static FieldBehavior forNumber(int i9) {
        switch (i9) {
            case 0:
                return FIELD_BEHAVIOR_UNSPECIFIED;
            case 1:
                return OPTIONAL;
            case 2:
                return REQUIRED;
            case 3:
                return OUTPUT_ONLY;
            case 4:
                return INPUT_ONLY;
            case 5:
                return IMMUTABLE;
            case 6:
                return UNORDERED_LIST;
            case 7:
                return NON_EMPTY_DEFAULT;
            default:
                return null;
        }
    }

    public static final Descriptors.d getDescriptor() {
        return c0.a().k().get(0);
    }

    public static u0.d<FieldBehavior> internalGetValueMap() {
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
    public static FieldBehavior valueOf(int i9) {
        return forNumber(i9);
    }

    public static FieldBehavior valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
