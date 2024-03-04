package org.threeten.bp.chrono;

import java.io.Serializable;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.chrono.b;
import org.threeten.bp.temporal.ChronoUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public abstract class a<D extends b> extends b implements Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.chrono.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class C0605a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56492a;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f56492a = iArr;
            try {
                iArr[ChronoUnit.DAYS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56492a[ChronoUnit.WEEKS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56492a[ChronoUnit.MONTHS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56492a[ChronoUnit.YEARS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56492a[ChronoUnit.DECADES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56492a[ChronoUnit.CENTURIES.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56492a[ChronoUnit.MILLENNIA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // org.threeten.bp.chrono.b
    public c<?> atTime(LocalTime localTime) {
        return d.a(this, localTime);
    }

    a<D> minusDays(long j10) {
        return j10 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j10);
    }

    a<D> minusMonths(long j10) {
        return j10 == Long.MIN_VALUE ? plusMonths(Long.MAX_VALUE).plusMonths(1L) : plusMonths(-j10);
    }

    a<D> minusWeeks(long j10) {
        return j10 == Long.MIN_VALUE ? plusWeeks(Long.MAX_VALUE).plusWeeks(1L) : plusWeeks(-j10);
    }

    a<D> minusYears(long j10) {
        return j10 == Long.MIN_VALUE ? plusYears(Long.MAX_VALUE).plusYears(1L) : plusYears(-j10);
    }

    abstract a<D> plusDays(long j10);

    abstract a<D> plusMonths(long j10);

    a<D> plusWeeks(long j10) {
        return plusDays(jl.d.m(j10, 7));
    }

    abstract a<D> plusYears(long j10);

    public long until(org.threeten.bp.temporal.b bVar, org.threeten.bp.temporal.j jVar) {
        b date = getChronology().date(bVar);
        if (jVar instanceof ChronoUnit) {
            return LocalDate.from((org.threeten.bp.temporal.c) this).until(date, jVar);
        }
        return jVar.between(this, date);
    }

    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public a<D> plus(long j10, org.threeten.bp.temporal.j jVar) {
        if (jVar instanceof ChronoUnit) {
            switch (C0605a.f56492a[((ChronoUnit) jVar).ordinal()]) {
                case 1:
                    return plusDays(j10);
                case 2:
                    return plusDays(jl.d.m(j10, 7));
                case 3:
                    return plusMonths(j10);
                case 4:
                    return plusYears(j10);
                case 5:
                    return plusYears(jl.d.m(j10, 10));
                case 6:
                    return plusYears(jl.d.m(j10, 100));
                case 7:
                    return plusYears(jl.d.m(j10, 1000));
                default:
                    throw new DateTimeException(jVar + " not valid for chronology " + getChronology().getId());
            }
        }
        return (a) getChronology().ensureChronoLocalDate(jVar.addTo(this, j10));
    }

    @Override // org.threeten.bp.chrono.b
    public e until(b bVar) {
        throw new UnsupportedOperationException("Not supported in ThreeTen backport");
    }
}
