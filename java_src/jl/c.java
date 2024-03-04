package jl;

import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
/* loaded from: classes7.dex */
public abstract class c implements org.threeten.bp.temporal.c {
    @Override // org.threeten.bp.temporal.c
    public int get(g gVar) {
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    @Override // org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.g() || iVar == h.a() || iVar == h.e()) {
            return null;
        }
        return iVar.a(this);
    }

    @Override // org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar instanceof ChronoField) {
            if (isSupported(gVar)) {
                return gVar.range();
            }
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }
        return gVar.rangeRefinedBy(this);
    }
}
