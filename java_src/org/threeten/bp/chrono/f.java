package org.threeten.bp.chrono;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class f extends e implements Serializable {
    private static final long serialVersionUID = 275618735781L;

    /* renamed from: a  reason: collision with root package name */
    private final i f56496a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56497b;

    /* renamed from: c  reason: collision with root package name */
    private final int f56498c;

    /* renamed from: d  reason: collision with root package name */
    private final int f56499d;

    public f(i iVar, int i9, int i10, int i11) {
        this.f56496a = iVar;
        this.f56497b = i9;
        this.f56498c = i10;
        this.f56499d = i11;
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.b addTo(org.threeten.bp.temporal.b bVar) {
        jl.d.i(bVar, "temporal");
        i iVar = (i) bVar.query(org.threeten.bp.temporal.h.a());
        if (iVar != null && !this.f56496a.equals(iVar)) {
            throw new DateTimeException("Invalid chronology, required: " + this.f56496a.getId() + ", but was: " + iVar.getId());
        }
        int i9 = this.f56497b;
        if (i9 != 0) {
            bVar = bVar.plus(i9, ChronoUnit.YEARS);
        }
        int i10 = this.f56498c;
        if (i10 != 0) {
            bVar = bVar.plus(i10, ChronoUnit.MONTHS);
        }
        int i11 = this.f56499d;
        return i11 != 0 ? bVar.plus(i11, ChronoUnit.DAYS) : bVar;
    }

    @Override // org.threeten.bp.chrono.e
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return this.f56497b == fVar.f56497b && this.f56498c == fVar.f56498c && this.f56499d == fVar.f56499d && this.f56496a.equals(fVar.f56496a);
        }
        return false;
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public long get(org.threeten.bp.temporal.j jVar) {
        int i9;
        if (jVar == ChronoUnit.YEARS) {
            i9 = this.f56497b;
        } else if (jVar == ChronoUnit.MONTHS) {
            i9 = this.f56498c;
        } else if (jVar == ChronoUnit.DAYS) {
            i9 = this.f56499d;
        } else {
            throw new UnsupportedTemporalTypeException("Unsupported unit: " + jVar);
        }
        return i9;
    }

    @Override // org.threeten.bp.chrono.e
    public i getChronology() {
        return this.f56496a;
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public List<org.threeten.bp.temporal.j> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS));
    }

    @Override // org.threeten.bp.chrono.e
    public int hashCode() {
        return this.f56496a.hashCode() + Integer.rotateLeft(this.f56497b, 16) + Integer.rotateLeft(this.f56498c, 8) + this.f56499d;
    }

    @Override // org.threeten.bp.chrono.e
    public e minus(org.threeten.bp.temporal.f fVar) {
        if (fVar instanceof f) {
            f fVar2 = (f) fVar;
            if (fVar2.getChronology().equals(getChronology())) {
                return new f(this.f56496a, jl.d.o(this.f56497b, fVar2.f56497b), jl.d.o(this.f56498c, fVar2.f56498c), jl.d.o(this.f56499d, fVar2.f56499d));
            }
        }
        throw new DateTimeException("Unable to subtract amount: " + fVar);
    }

    @Override // org.threeten.bp.chrono.e
    public e multipliedBy(int i9) {
        return new f(this.f56496a, jl.d.l(this.f56497b, i9), jl.d.l(this.f56498c, i9), jl.d.l(this.f56499d, i9));
    }

    @Override // org.threeten.bp.chrono.e
    public e normalized() {
        i iVar = this.f56496a;
        ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
        if (iVar.range(chronoField).isFixed()) {
            long maximum = (this.f56496a.range(chronoField).getMaximum() - this.f56496a.range(chronoField).getMinimum()) + 1;
            long j10 = (this.f56497b * maximum) + this.f56498c;
            return new f(this.f56496a, jl.d.q(j10 / maximum), jl.d.q(j10 % maximum), this.f56499d);
        }
        return this;
    }

    @Override // org.threeten.bp.chrono.e
    public e plus(org.threeten.bp.temporal.f fVar) {
        if (fVar instanceof f) {
            f fVar2 = (f) fVar;
            if (fVar2.getChronology().equals(getChronology())) {
                return new f(this.f56496a, jl.d.j(this.f56497b, fVar2.f56497b), jl.d.j(this.f56498c, fVar2.f56498c), jl.d.j(this.f56499d, fVar2.f56499d));
            }
        }
        throw new DateTimeException("Unable to add amount: " + fVar);
    }

    @Override // org.threeten.bp.chrono.e, org.threeten.bp.temporal.f
    public org.threeten.bp.temporal.b subtractFrom(org.threeten.bp.temporal.b bVar) {
        jl.d.i(bVar, "temporal");
        i iVar = (i) bVar.query(org.threeten.bp.temporal.h.a());
        if (iVar != null && !this.f56496a.equals(iVar)) {
            throw new DateTimeException("Invalid chronology, required: " + this.f56496a.getId() + ", but was: " + iVar.getId());
        }
        int i9 = this.f56497b;
        if (i9 != 0) {
            bVar = bVar.minus(i9, ChronoUnit.YEARS);
        }
        int i10 = this.f56498c;
        if (i10 != 0) {
            bVar = bVar.minus(i10, ChronoUnit.MONTHS);
        }
        int i11 = this.f56499d;
        return i11 != 0 ? bVar.minus(i11, ChronoUnit.DAYS) : bVar;
    }

    @Override // org.threeten.bp.chrono.e
    public String toString() {
        if (isZero()) {
            return this.f56496a + " P0D";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f56496a);
        sb2.append(' ');
        sb2.append('P');
        int i9 = this.f56497b;
        if (i9 != 0) {
            sb2.append(i9);
            sb2.append('Y');
        }
        int i10 = this.f56498c;
        if (i10 != 0) {
            sb2.append(i10);
            sb2.append('M');
        }
        int i11 = this.f56499d;
        if (i11 != 0) {
            sb2.append(i11);
            sb2.append('D');
        }
        return sb2.toString();
    }
}
