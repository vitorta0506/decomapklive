package org.threeten.bp.chrono;

import java.util.Locale;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.format.TextStyle;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public enum IsoEra implements j {
    BCE,
    CE;

    public static IsoEra of(int i9) {
        if (i9 != 0) {
            if (i9 == 1) {
                return CE;
            }
            throw new DateTimeException("Invalid era: " + i9);
        }
        return BCE;
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.ERA, getValue());
    }

    @Override // org.threeten.bp.temporal.c
    public int get(org.threeten.bp.temporal.g gVar) {
        if (gVar == ChronoField.ERA) {
            return getValue();
        }
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        return new org.threeten.bp.format.c().k(ChronoField.ERA, textStyle).w(locale).b(this);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        if (gVar == ChronoField.ERA) {
            return getValue();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.getFrom(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }

    @Override // org.threeten.bp.chrono.j
    public int getValue() {
        return ordinal();
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(org.threeten.bp.temporal.g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.ERA : gVar != null && gVar.isSupportedBy(this);
    }

    @Override // org.threeten.bp.temporal.c
    public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
        if (iVar == org.threeten.bp.temporal.h.e()) {
            return (R) ChronoUnit.ERAS;
        }
        if (iVar == org.threeten.bp.temporal.h.a() || iVar == org.threeten.bp.temporal.h.f() || iVar == org.threeten.bp.temporal.h.g() || iVar == org.threeten.bp.temporal.h.d() || iVar == org.threeten.bp.temporal.h.b() || iVar == org.threeten.bp.temporal.h.c()) {
            return null;
        }
        return iVar.a(this);
    }

    @Override // org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        if (gVar == ChronoField.ERA) {
            return gVar.range();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.rangeRefinedBy(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }
}
