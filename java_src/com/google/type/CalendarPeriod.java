package com.google.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.h2;
import com.google.protobuf.u0;
/* loaded from: classes3.dex */
public enum CalendarPeriod implements h2 {
    CALENDAR_PERIOD_UNSPECIFIED(0),
    DAY(1),
    WEEK(2),
    FORTNIGHT(3),
    MONTH(4),
    QUARTER(5),
    HALF(6),
    YEAR(7),
    UNRECOGNIZED(-1);
    
    public static final int CALENDAR_PERIOD_UNSPECIFIED_VALUE = 0;
    public static final int DAY_VALUE = 1;
    public static final int FORTNIGHT_VALUE = 3;
    public static final int HALF_VALUE = 6;
    public static final int MONTH_VALUE = 4;
    public static final int QUARTER_VALUE = 5;
    public static final int WEEK_VALUE = 2;
    public static final int YEAR_VALUE = 7;
    private final int value;
    private static final u0.d<CalendarPeriod> internalValueMap = new u0.d<CalendarPeriod>() { // from class: com.google.type.CalendarPeriod.a
        @Override // com.google.protobuf.u0.d
        /* renamed from: b */
        public CalendarPeriod a(int i9) {
            return CalendarPeriod.forNumber(i9);
        }
    };
    private static final CalendarPeriod[] VALUES = values();

    CalendarPeriod(int i9) {
        this.value = i9;
    }

    public static CalendarPeriod forNumber(int i9) {
        switch (i9) {
            case 0:
                return CALENDAR_PERIOD_UNSPECIFIED;
            case 1:
                return DAY;
            case 2:
                return WEEK;
            case 3:
                return FORTNIGHT;
            case 4:
                return MONTH;
            case 5:
                return QUARTER;
            case 6:
                return HALF;
            case 7:
                return YEAR;
            default:
                return null;
        }
    }

    public static final Descriptors.d getDescriptor() {
        return com.google.type.a.a().k().get(0);
    }

    public static u0.d<CalendarPeriod> internalGetValueMap() {
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
    public static CalendarPeriod valueOf(int i9) {
        return forNumber(i9);
    }

    public static CalendarPeriod valueOf(Descriptors.e eVar) {
        if (eVar.h() == getDescriptor()) {
            if (eVar.g() == -1) {
                return UNRECOGNIZED;
            }
            return VALUES[eVar.g()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }
}
