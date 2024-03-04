package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes3.dex */
public enum Month implements h2 {
    MONTH_UNSPECIFIED(0),
    JANUARY(1),
    FEBRUARY(2),
    MARCH(3),
    APRIL(4),
    MAY(5),
    JUNE(6),
    JULY(7),
    AUGUST(8),
    SEPTEMBER(9),
    OCTOBER(10),
    NOVEMBER(11),
    DECEMBER(12),
    UNRECOGNIZED(-1);
    
    public static final int APRIL_VALUE = 4;
    public static final int AUGUST_VALUE = 8;
    public static final int DECEMBER_VALUE = 12;
    public static final int FEBRUARY_VALUE = 2;
    public static final int JANUARY_VALUE = 1;
    public static final int JULY_VALUE = 7;
    public static final int JUNE_VALUE = 6;
    public static final int MARCH_VALUE = 3;
    public static final int MAY_VALUE = 5;
    public static final int MONTH_UNSPECIFIED_VALUE = 0;
    public static final int NOVEMBER_VALUE = 11;
    public static final int OCTOBER_VALUE = 10;
    public static final int SEPTEMBER_VALUE = 9;
    private final int value;
    private static final u0.d<Month> internalValueMap = new u0.d<Month>() { // from class: com.google.type.Month.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public Month a(int i9) {
            return Month.forNumber(i9);
        }
    };
    private static final Month[] VALUES = values();

    Month(int i9) {
        this.value = i9;
    }

    public static Month forNumber(int i9) {
        switch (i9) {
            case 0:
                return MONTH_UNSPECIFIED;
            case 1:
                return JANUARY;
            case 2:
                return FEBRUARY;
            case 3:
                return MARCH;
            case 4:
                return APRIL;
            case 5:
                return MAY;
            case 6:
                return JUNE;
            case 7:
                return JULY;
            case 8:
                return AUGUST;
            case 9:
                return SEPTEMBER;
            case 10:
                return OCTOBER;
            case 11:
                return NOVEMBER;
            case 12:
                return DECEMBER;
            default:
                return null;
        }
    }

    public static final Descriptors.d getDescriptor() {
        return n.a().k().get(0);
    }

    public static u0.d<Month> internalGetValueMap() {
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
    public static Month valueOf(int i9) {
        return forNumber(i9);
    }

    public static Month valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
