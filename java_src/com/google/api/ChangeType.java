package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes2.dex */
public enum ChangeType implements h2 {
    CHANGE_TYPE_UNSPECIFIED(0),
    ADDED(1),
    REMOVED(2),
    MODIFIED(3),
    UNRECOGNIZED(-1);
    
    public static final int ADDED_VALUE = 1;
    public static final int CHANGE_TYPE_UNSPECIFIED_VALUE = 0;
    public static final int MODIFIED_VALUE = 3;
    public static final int REMOVED_VALUE = 2;
    private final int value;
    private static final u0.d<ChangeType> internalValueMap = new u0.d<ChangeType>() { // from class: com.google.api.ChangeType.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public ChangeType a(int i9) {
            return ChangeType.forNumber(i9);
        }
    };
    private static final ChangeType[] VALUES = values();

    ChangeType(int i9) {
        this.value = i9;
    }

    public static ChangeType forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return MODIFIED;
                }
                return REMOVED;
            }
            return ADDED;
        }
        return CHANGE_TYPE_UNSPECIFIED;
    }

    public static final Descriptors.d getDescriptor() {
        return n.a().k().get(0);
    }

    public static u0.d<ChangeType> internalGetValueMap() {
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
    public static ChangeType valueOf(int i9) {
        return forNumber(i9);
    }

    public static ChangeType valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
