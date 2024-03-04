package jl;

import java.util.Locale;
import org.threeten.bp.chrono.j;
import org.threeten.bp.format.TextStyle;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
/* loaded from: classes7.dex */
public abstract class a extends c implements j {
    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        return bVar.with(ChronoField.ERA, getValue());
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar == ChronoField.ERA) {
            return getValue();
        }
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        return new org.threeten.bp.format.c().k(ChronoField.ERA, textStyle).w(locale).b(this);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar == ChronoField.ERA) {
            return getValue();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.getFrom(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.ERA : gVar != null && gVar.isSupportedBy(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.e()) {
            return (R) ChronoUnit.ERAS;
        }
        if (iVar == h.a() || iVar == h.f() || iVar == h.g() || iVar == h.d() || iVar == h.b() || iVar == h.c()) {
            return null;
        }
        return iVar.a(this);
    }
}
