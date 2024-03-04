package org.threeten.bp.chrono;

import java.util.Iterator;
import java.util.List;
/* loaded from: classes7.dex */
public abstract class e implements org.threeten.bp.temporal.f {
    public static e between(b bVar, b bVar2) {
        jl.d.i(bVar, "startDateInclusive");
        jl.d.i(bVar2, "endDateExclusive");
        return bVar.until(bVar2);
    }

    @Override // org.threeten.bp.temporal.f
    public abstract org.threeten.bp.temporal.b addTo(org.threeten.bp.temporal.b bVar);

    public abstract boolean equals(Object obj);

    @Override // org.threeten.bp.temporal.f
    public abstract long get(org.threeten.bp.temporal.j jVar);

    public abstract i getChronology();

    @Override // org.threeten.bp.temporal.f
    public abstract List<org.threeten.bp.temporal.j> getUnits();

    public abstract int hashCode();

    public boolean isNegative() {
        Iterator<org.threeten.bp.temporal.j> it = getUnits().iterator();
        while (it.hasNext()) {
            if (get(it.next()) < 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isZero() {
        Iterator<org.threeten.bp.temporal.j> it = getUnits().iterator();
        while (it.hasNext()) {
            if (get(it.next()) != 0) {
                return false;
            }
        }
        return true;
    }

    public abstract e minus(org.threeten.bp.temporal.f fVar);

    public abstract e multipliedBy(int i9);

    public e negated() {
        return multipliedBy(-1);
    }

    public abstract e normalized();

    public abstract e plus(org.threeten.bp.temporal.f fVar);

    @Override // org.threeten.bp.temporal.f
    public abstract org.threeten.bp.temporal.b subtractFrom(org.threeten.bp.temporal.b bVar);

    public abstract String toString();
}
