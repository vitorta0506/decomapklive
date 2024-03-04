package com.google.cloud;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes2.dex */
public enum OperationResponseMapping implements h2 {
    UNDEFINED(0),
    NAME(1),
    STATUS(2),
    ERROR_CODE(3),
    ERROR_MESSAGE(4),
    UNRECOGNIZED(-1);
    
    public static final int ERROR_CODE_VALUE = 3;
    public static final int ERROR_MESSAGE_VALUE = 4;
    public static final int NAME_VALUE = 1;
    public static final int STATUS_VALUE = 2;
    public static final int UNDEFINED_VALUE = 0;
    private final int value;
    private static final u0.d<OperationResponseMapping> internalValueMap = new u0.d<OperationResponseMapping>() { // from class: com.google.cloud.OperationResponseMapping.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public OperationResponseMapping a(int i9) {
            return OperationResponseMapping.forNumber(i9);
        }
    };
    private static final OperationResponseMapping[] VALUES = values();

    OperationResponseMapping(int i9) {
        this.value = i9;
    }

    public static OperationResponseMapping forNumber(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            return null;
                        }
                        return ERROR_MESSAGE;
                    }
                    return ERROR_CODE;
                }
                return STATUS;
            }
            return NAME;
        }
        return UNDEFINED;
    }

    public static final Descriptors.d getDescriptor() {
        return t5.a.a().k().get(0);
    }

    public static u0.d<OperationResponseMapping> internalGetValueMap() {
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
    public static OperationResponseMapping valueOf(int i9) {
        return forNumber(i9);
    }

    public static OperationResponseMapping valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
