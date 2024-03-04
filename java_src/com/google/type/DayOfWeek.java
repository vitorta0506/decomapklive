package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes3.dex */
public enum DayOfWeek implements h2 {
    DAY_OF_WEEK_UNSPECIFIED(0),
    MONDAY(1),
    TUESDAY(2),
    WEDNESDAY(3),
    THURSDAY(4),
    FRIDAY(5),
    SATURDAY(6),
    SUNDAY(7),
    UNRECOGNIZED(-1);
    
    public static final int DAY_OF_WEEK_UNSPECIFIED_VALUE = 0;
    public static final int FRIDAY_VALUE = 5;
    public static final int MONDAY_VALUE = 1;
    public static final int SATURDAY_VALUE = 6;
    public static final int SUNDAY_VALUE = 7;
    public static final int THURSDAY_VALUE = 4;
    public static final int TUESDAY_VALUE = 2;
    public static final int WEDNESDAY_VALUE = 3;
    private final int value;
    private static final u0.d<DayOfWeek> internalValueMap = new u0.d<DayOfWeek>() { // from class: com.google.type.DayOfWeek.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public DayOfWeek a(int i9) {
            return DayOfWeek.forNumber(i9);
        }
    };
    private static final DayOfWeek[] VALUES = values();

    DayOfWeek(int i9) {
        this.value = i9;
    }

    public static DayOfWeek forNumber(int i9) {
        switch (i9) {
            case 0:
                return DAY_OF_WEEK_UNSPECIFIED;
            case 1:
                return MONDAY;
            case 2:
                return TUESDAY;
            case 3:
                return WEDNESDAY;
            case 4:
                return THURSDAY;
            case 5:
                return FRIDAY;
            case 6:
                return SATURDAY;
            case 7:
                return SUNDAY;
            default:
                return null;
        }
    }

    public static final Descriptors.d getDescriptor() {
        return e.a().k().get(0);
    }

    public static u0.d<DayOfWeek> internalGetValueMap() {
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
    public static DayOfWeek valueOf(int i9) {
        return forNumber(i9);
    }

    public static DayOfWeek valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
