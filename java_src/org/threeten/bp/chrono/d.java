package org.threeten.bp.chrono;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import org.threeten.bp.LocalTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.chrono.b;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.ValueRange;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class d<D extends b> extends c<D> implements Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* renamed from: a  reason: collision with root package name */
    private final D f56493a;

    /* renamed from: b  reason: collision with root package name */
    private final LocalTime f56494b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56495a;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56495a = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56495a[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56495a[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56495a[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56495a[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56495a[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56495a[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private d(D d10, LocalTime localTime) {
        jl.d.i(d10, "date");
        jl.d.i(localTime, CrashHianalyticsData.TIME);
        this.f56493a = d10;
        this.f56494b = localTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <R extends b> d<R> a(R r10, LocalTime localTime) {
        return new d<>(r10, localTime);
    }

    private d<D> d(long j10) {
        return k(this.f56493a.plus(j10, ChronoUnit.DAYS), this.f56494b);
    }

    private d<D> e(long j10) {
        return i(this.f56493a, j10, 0L, 0L, 0L);
    }

    private d<D> f(long j10) {
        return i(this.f56493a, 0L, j10, 0L, 0L);
    }

    private d<D> g(long j10) {
        return i(this.f56493a, 0L, 0L, 0L, j10);
    }

    private d<D> i(D d10, long j10, long j11, long j12, long j13) {
        if ((j10 | j11 | j12 | j13) == 0) {
            return k(d10, this.f56494b);
        }
        long nanoOfDay = this.f56494b.toNanoOfDay();
        long j14 = (j13 % 86400000000000L) + ((j12 % 86400) * 1000000000) + ((j11 % 1440) * 60000000000L) + ((j10 % 24) * 3600000000000L) + nanoOfDay;
        long e10 = (j13 / 86400000000000L) + (j12 / 86400) + (j11 / 1440) + (j10 / 24) + jl.d.e(j14, 86400000000000L);
        long h10 = jl.d.h(j14, 86400000000000L);
        return k(d10.plus(e10, ChronoUnit.DAYS), h10 == nanoOfDay ? this.f56494b : LocalTime.ofNanoOfDay(h10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c<?> j(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        return ((b) objectInput.readObject()).atTime((LocalTime) objectInput.readObject());
    }

    private d<D> k(org.threeten.bp.temporal.b bVar, LocalTime localTime) {
        D d10 = this.f56493a;
        return (d10 == bVar && this.f56494b == localTime) ? this : new d<>(d10.getChronology().ensureChronoLocalDate(bVar), localTime);
    }

    private Object writeReplace() {
        return new k((byte) 12, this);
    }

    @Override // org.threeten.bp.chrono.c
    public g<D> atZone(ZoneId zoneId) {
        return h.b(this, zoneId, null);
    }

    @Override // org.threeten.bp.chrono.c, org.threeten.bp.temporal.b
    /* renamed from: b */
    public d<D> plus(long j10, org.threeten.bp.temporal.j jVar) {
        if (jVar instanceof ChronoUnit) {
            switch (a.f56495a[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return g(j10);
                case 2:
                    return d(j10 / 86400000000L).g((j10 % 86400000000L) * 1000);
                case 3:
                    return d(j10 / 86400000).g((j10 % 86400000) * 1000000);
                case 4:
                    return h(j10);
                case 5:
                    return f(j10);
                case 6:
                    return e(j10);
                case 7:
                    return d(j10 / 256).e((j10 % 256) * 12);
                default:
                    return k(this.f56493a.plus(j10, jVar), this.f56494b);
            }
        }
        return this.f56493a.getChronology().ensureChronoLocalDateTime(jVar.addTo(this, j10));
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isTimeBased() ? this.f56494b.get(gVar) : this.f56493a.get(gVar);
        }
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isTimeBased() ? this.f56494b.getLong(gVar) : this.f56493a.getLong(gVar);
        }
        return gVar.getFrom(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<D> h(long j10) {
        return i(this.f56493a, 0L, 0L, j10, 0L);
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(org.threeten.bp.temporal.g gVar) {
        return gVar instanceof ChronoField ? gVar.isDateBased() || gVar.isTimeBased() : gVar != null && gVar.isSupportedBy(this);
    }

    @Override // org.threeten.bp.chrono.c, jl.b, org.threeten.bp.temporal.b
    /* renamed from: l */
    public d<D> with(org.threeten.bp.temporal.d dVar) {
        if (dVar instanceof b) {
            return k((b) dVar, this.f56494b);
        }
        if (dVar instanceof LocalTime) {
            return k(this.f56493a, (LocalTime) dVar);
        }
        if (dVar instanceof d) {
            return this.f56493a.getChronology().ensureChronoLocalDateTime((d) dVar);
        }
        return this.f56493a.getChronology().ensureChronoLocalDateTime((d) dVar.adjustInto(this));
    }

    @Override // org.threeten.bp.chrono.c, org.threeten.bp.temporal.b
    /* renamed from: m */
    public d<D> with(org.threeten.bp.temporal.g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            if (gVar.isTimeBased()) {
                return k(this.f56493a, this.f56494b.with(gVar, j10));
            }
            return k(this.f56493a.with(gVar, j10), this.f56494b);
        }
        return this.f56493a.getChronology().ensureChronoLocalDateTime(gVar.adjustInto(this, j10));
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            return gVar.isTimeBased() ? this.f56494b.range(gVar) : this.f56493a.range(gVar);
        }
        return gVar.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.c
    public D toLocalDate() {
        return this.f56493a;
    }

    @Override // org.threeten.bp.chrono.c
    public LocalTime toLocalTime() {
        return this.f56494b;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [org.threeten.bp.chrono.b] */
    @Override // org.threeten.bp.temporal.b
    public long until(org.threeten.bp.temporal.b bVar, org.threeten.bp.temporal.j jVar) {
        c<?> localDateTime = toLocalDate().getChronology().localDateTime(bVar);
        if (jVar instanceof ChronoUnit) {
            ChronoUnit chronoUnit = (ChronoUnit) jVar;
            if (chronoUnit.isTimeBased()) {
                ChronoField chronoField = ChronoField.EPOCH_DAY;
                long j10 = localDateTime.getLong(chronoField) - this.f56493a.getLong(chronoField);
                switch (a.f56495a[chronoUnit.ordinal()]) {
                    case 1:
                        j10 = jl.d.n(j10, 86400000000000L);
                        break;
                    case 2:
                        j10 = jl.d.n(j10, 86400000000L);
                        break;
                    case 3:
                        j10 = jl.d.n(j10, 86400000L);
                        break;
                    case 4:
                        j10 = jl.d.m(j10, 86400);
                        break;
                    case 5:
                        j10 = jl.d.m(j10, 1440);
                        break;
                    case 6:
                        j10 = jl.d.m(j10, 24);
                        break;
                    case 7:
                        j10 = jl.d.m(j10, 2);
                        break;
                }
                return jl.d.k(j10, this.f56494b.until(localDateTime.toLocalTime(), jVar));
            }
            ?? localDate = localDateTime.toLocalDate();
            b bVar2 = localDate;
            if (localDateTime.toLocalTime().isBefore(this.f56494b)) {
                bVar2 = localDate.minus(1L, ChronoUnit.DAYS);
            }
            return this.f56493a.until(bVar2, jVar);
        }
        return jVar.between(this, localDateTime);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.f56493a);
        objectOutput.writeObject(this.f56494b);
    }
}
