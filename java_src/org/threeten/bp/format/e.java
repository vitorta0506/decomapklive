package org.threeten.bp.format;

import java.util.Locale;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.Instant;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.chrono.i;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ValueRange;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private org.threeten.bp.temporal.c f56610a;

    /* renamed from: b  reason: collision with root package name */
    private Locale f56611b;

    /* renamed from: c  reason: collision with root package name */
    private g f56612c;

    /* renamed from: d  reason: collision with root package name */
    private int f56613d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a extends jl.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ org.threeten.bp.chrono.b f56614a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ org.threeten.bp.temporal.c f56615b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ i f56616c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ZoneId f56617d;

        a(org.threeten.bp.chrono.b bVar, org.threeten.bp.temporal.c cVar, i iVar, ZoneId zoneId) {
            this.f56614a = bVar;
            this.f56615b = cVar;
            this.f56616c = iVar;
            this.f56617d = zoneId;
        }

        @Override // org.threeten.bp.temporal.c
        public long getLong(org.threeten.bp.temporal.g gVar) {
            if (this.f56614a != null && gVar.isDateBased()) {
                return this.f56614a.getLong(gVar);
            }
            return this.f56615b.getLong(gVar);
        }

        @Override // org.threeten.bp.temporal.c
        public boolean isSupported(org.threeten.bp.temporal.g gVar) {
            if (this.f56614a != null && gVar.isDateBased()) {
                return this.f56614a.isSupported(gVar);
            }
            return this.f56615b.isSupported(gVar);
        }

        @Override // jl.c, org.threeten.bp.temporal.c
        public <R> R query(org.threeten.bp.temporal.i<R> iVar) {
            if (iVar == org.threeten.bp.temporal.h.a()) {
                return (R) this.f56616c;
            }
            if (iVar == org.threeten.bp.temporal.h.g()) {
                return (R) this.f56617d;
            }
            if (iVar == org.threeten.bp.temporal.h.e()) {
                return (R) this.f56615b.query(iVar);
            }
            return iVar.a(this);
        }

        @Override // jl.c, org.threeten.bp.temporal.c
        public ValueRange range(org.threeten.bp.temporal.g gVar) {
            if (this.f56614a != null && gVar.isDateBased()) {
                return this.f56614a.range(gVar);
            }
            return this.f56615b.range(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(org.threeten.bp.temporal.c cVar, b bVar) {
        this.f56610a = a(cVar, bVar);
        this.f56611b = bVar.f();
        this.f56612c = bVar.e();
    }

    private static org.threeten.bp.temporal.c a(org.threeten.bp.temporal.c cVar, b bVar) {
        ChronoField[] values;
        i d10 = bVar.d();
        ZoneId g10 = bVar.g();
        if (d10 == null && g10 == null) {
            return cVar;
        }
        i iVar = (i) cVar.query(org.threeten.bp.temporal.h.a());
        ZoneId zoneId = (ZoneId) cVar.query(org.threeten.bp.temporal.h.g());
        org.threeten.bp.chrono.b bVar2 = null;
        if (jl.d.c(iVar, d10)) {
            d10 = null;
        }
        if (jl.d.c(zoneId, g10)) {
            g10 = null;
        }
        if (d10 == null && g10 == null) {
            return cVar;
        }
        i iVar2 = d10 != null ? d10 : iVar;
        if (g10 != null) {
            zoneId = g10;
        }
        if (g10 != null) {
            if (cVar.isSupported(ChronoField.INSTANT_SECONDS)) {
                if (iVar2 == null) {
                    iVar2 = IsoChronology.INSTANCE;
                }
                return iVar2.zonedDateTime(Instant.from(cVar), g10);
            }
            ZoneId normalized = g10.normalized();
            ZoneOffset zoneOffset = (ZoneOffset) cVar.query(org.threeten.bp.temporal.h.d());
            if ((normalized instanceof ZoneOffset) && zoneOffset != null && !normalized.equals(zoneOffset)) {
                throw new DateTimeException("Invalid override zone for temporal: " + g10 + " " + cVar);
            }
        }
        if (d10 != null) {
            if (cVar.isSupported(ChronoField.EPOCH_DAY)) {
                bVar2 = iVar2.date(cVar);
            } else if (d10 != IsoChronology.INSTANCE || iVar != null) {
                for (ChronoField chronoField : ChronoField.values()) {
                    if (chronoField.isDateBased() && cVar.isSupported(chronoField)) {
                        throw new DateTimeException("Invalid override chronology for temporal: " + d10 + " " + cVar);
                    }
                }
            }
        }
        return new a(bVar2, cVar, iVar2, zoneId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f56613d--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Locale c() {
        return this.f56611b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g d() {
        return this.f56612c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.threeten.bp.temporal.c e() {
        return this.f56610a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long f(org.threeten.bp.temporal.g gVar) {
        try {
            return Long.valueOf(this.f56610a.getLong(gVar));
        } catch (DateTimeException e10) {
            if (this.f56613d > 0) {
                return null;
            }
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <R> R g(org.threeten.bp.temporal.i<R> iVar) {
        R r10 = (R) this.f56610a.query(iVar);
        if (r10 == null && this.f56613d == 0) {
            throw new DateTimeException("Unable to extract value: " + this.f56610a.getClass());
        }
        return r10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f56613d++;
    }

    public String toString() {
        return this.f56610a.toString();
    }
}
