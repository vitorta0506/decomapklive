package org.threeten.bp;

import java.util.Locale;
import org.threeten.bp.format.TextStyle;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.d;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
/* loaded from: classes7.dex */
public enum DayOfWeek implements org.threeten.bp.temporal.c, d {
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY,
    SUNDAY;
    
    public static final i<DayOfWeek> FROM = new i<DayOfWeek>() { // from class: org.threeten.bp.DayOfWeek.a
        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public DayOfWeek a(org.threeten.bp.temporal.c cVar) {
            return DayOfWeek.from(cVar);
        }
    };
    private static final DayOfWeek[] ENUMS = values();

    public static DayOfWeek from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof DayOfWeek) {
            return (DayOfWeek) cVar;
        }
        try {
            return of(cVar.get(ChronoField.DAY_OF_WEEK));
        } catch (DateTimeException e10) {
            throw new DateTimeException("Unable to obtain DayOfWeek from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName(), e10);
        }
    }

    public static DayOfWeek of(int i9) {
        if (i9 >= 1 && i9 <= 7) {
            return ENUMS[i9 - 1];
        }
        throw new DateTimeException("Invalid value for DayOfWeek: " + i9);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.DAY_OF_WEEK, getValue());
    }

    @Override // org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar == ChronoField.DAY_OF_WEEK) {
            return getValue();
        }
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        return new org.threeten.bp.format.c().k(ChronoField.DAY_OF_WEEK, textStyle).w(locale).b(this);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar == ChronoField.DAY_OF_WEEK) {
            return getValue();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.getFrom(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }

    public int getValue() {
        return ordinal() + 1;
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.DAY_OF_WEEK : gVar != null && gVar.isSupportedBy(this);
    }

    public DayOfWeek minus(long j10) {
        return plus(-(j10 % 7));
    }

    public DayOfWeek plus(long j10) {
        return ENUMS[(ordinal() + (((int) (j10 % 7)) + 7)) % 7];
    }

    @Override // org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.e()) {
            return (R) ChronoUnit.DAYS;
        }
        if (iVar == h.b() || iVar == h.c() || iVar == h.a() || iVar == h.f() || iVar == h.g() || iVar == h.d()) {
            return null;
        }
        return iVar.a(this);
    }

    @Override // org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar == ChronoField.DAY_OF_WEEK) {
            return gVar.range();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.rangeRefinedBy(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }
}
