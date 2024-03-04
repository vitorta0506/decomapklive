package jl;

import org.threeten.bp.temporal.f;
import org.threeten.bp.temporal.j;
/* loaded from: classes7.dex */
public abstract class b extends c implements org.threeten.bp.temporal.b {
    public org.threeten.bp.temporal.b minus(f fVar) {
        return fVar.subtractFrom(this);
    }

    public org.threeten.bp.temporal.b plus(f fVar) {
        return fVar.addTo(this);
    }

    @Override // org.threeten.bp.temporal.b
    public org.threeten.bp.temporal.b with(org.threeten.bp.temporal.d dVar) {
        return dVar.adjustInto(this);
    }

    @Override // org.threeten.bp.temporal.b
    public org.threeten.bp.temporal.b minus(long j10, j jVar) {
        return j10 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, jVar).plus(1L, jVar) : plus(-j10, jVar);
    }
}
