package org.threeten.bp.chrono;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.Period;
import org.threeten.bp.ZoneId;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public final class MinguoDate extends org.threeten.bp.chrono.a<MinguoDate> {
    private static final long serialVersionUID = 1300372329181994526L;
    private final LocalDate isoDate;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56489a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56489a = iArr;
            try {
                iArr[ChronoField.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56489a[ChronoField.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56489a[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56489a[ChronoField.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56489a[ChronoField.PROLEPTIC_MONTH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56489a[ChronoField.YEAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56489a[ChronoField.ERA.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MinguoDate(LocalDate localDate) {
        jl.d.i(localDate, "date");
        this.isoDate = localDate;
    }

    public static MinguoDate from(org.threeten.bp.temporal.c cVar) {
        return MinguoChronology.INSTANCE.date(cVar);
    }

    private long getProlepticMonth() {
        return ((getProlepticYear() * 12) + this.isoDate.getMonthValue()) - 1;
    }

    private int getProlepticYear() {
        return this.isoDate.getYear() - 1911;
    }

    public static MinguoDate now() {
        return now(org.threeten.bp.a.d());
    }

    public static MinguoDate of(int i9, int i10, int i11) {
        return MinguoChronology.INSTANCE.date(i9, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b readExternal(DataInput dataInput) throws IOException {
        return MinguoChronology.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private Object writeReplace() {
        return new k((byte) 5, this);
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public final c<MinguoDate> atTime(LocalTime localTime) {
        return super.atTime(localTime);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MinguoDate) {
            return this.isoDate.equals(((MinguoDate) obj).isoDate);
        }
        return false;
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            int i9 = a.f56489a[((ChronoField) gVar).ordinal()];
            if (i9 == 4) {
                int prolepticYear = getProlepticYear();
                if (prolepticYear < 1) {
                    prolepticYear = 1 - prolepticYear;
                }
                return prolepticYear;
            } else if (i9 != 5) {
                if (i9 != 6) {
                    if (i9 != 7) {
                        return this.isoDate.getLong(gVar);
                    }
                    return getProlepticYear() < 1 ? 0 : 1;
                }
                return getProlepticYear();
            } else {
                return getProlepticMonth();
            }
        }
        return gVar.getFrom(this);
    }

    @Override // org.threeten.bp.chrono.b
    public int hashCode() {
        return getChronology().getId().hashCode() ^ this.isoDate.hashCode();
    }

    @Override // org.threeten.bp.chrono.b
    public int lengthOfMonth() {
        return this.isoDate.lengthOfMonth();
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            if (isSupported(gVar)) {
                ChronoField chronoField = (ChronoField) gVar;
                int i9 = a.f56489a[chronoField.ordinal()];
                if (i9 == 1 || i9 == 2 || i9 == 3) {
                    return this.isoDate.range(gVar);
                }
                if (i9 != 4) {
                    return getChronology().range(chronoField);
                }
                ValueRange range = ChronoField.YEAR.range();
                return ValueRange.of(1L, getProlepticYear() <= 0 ? (-range.getMinimum()) + 1 + 1911 : range.getMaximum() - 1911);
            }
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }
        return gVar.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.b
    public long toEpochDay() {
        return this.isoDate.toEpochDay();
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.temporal.b
    public /* bridge */ /* synthetic */ long until(org.threeten.bp.temporal.b bVar, org.threeten.bp.temporal.j jVar) {
        return super.until(bVar, jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(get(ChronoField.YEAR));
        dataOutput.writeByte(get(ChronoField.MONTH_OF_YEAR));
        dataOutput.writeByte(get(ChronoField.DAY_OF_MONTH));
    }

    public static MinguoDate now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    @Override // org.threeten.bp.chrono.b
    public MinguoChronology getChronology() {
        return MinguoChronology.INSTANCE;
    }

    @Override // org.threeten.bp.chrono.b
    public MinguoEra getEra() {
        return (MinguoEra) super.getEra();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusDays */
    public org.threeten.bp.chrono.a<MinguoDate> plusDays2(long j10) {
        return with(this.isoDate.plusDays(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusMonths */
    public org.threeten.bp.chrono.a<MinguoDate> plusMonths2(long j10) {
        return with(this.isoDate.plusMonths(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusYears */
    public org.threeten.bp.chrono.a<MinguoDate> plusYears2(long j10) {
        return with(this.isoDate.plusYears(j10));
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public e until(b bVar) {
        Period until = this.isoDate.until(bVar);
        return getChronology().period(until.getYears(), until.getMonths(), until.getDays());
    }

    public static MinguoDate now(org.threeten.bp.a aVar) {
        return new MinguoDate(LocalDate.now(aVar));
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public MinguoDate minus(org.threeten.bp.temporal.f fVar) {
        return (MinguoDate) super.minus(fVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public MinguoDate with(org.threeten.bp.temporal.d dVar) {
        return (MinguoDate) super.with(dVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public MinguoDate minus(long j10, org.threeten.bp.temporal.j jVar) {
        return (MinguoDate) super.minus(j10, jVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public MinguoDate plus(org.threeten.bp.temporal.f fVar) {
        return (MinguoDate) super.plus(fVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
        if (r2 != 7) goto L13;
     */
    /* JADX WARN: Type inference failed for: r8v16, types: [org.threeten.bp.chrono.MinguoDate] */
    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.threeten.bp.chrono.MinguoDate with(org.threeten.bp.temporal.g r8, long r9) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof org.threeten.bp.temporal.ChronoField
            if (r0 == 0) goto L94
            r0 = r8
            org.threeten.bp.temporal.ChronoField r0 = (org.threeten.bp.temporal.ChronoField) r0
            long r1 = r7.getLong(r0)
            int r3 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r3 != 0) goto L10
            return r7
        L10:
            int[] r1 = org.threeten.bp.chrono.MinguoDate.a.f56489a
            int r2 = r0.ordinal()
            r2 = r1[r2]
            r3 = 7
            r4 = 6
            r5 = 4
            if (r2 == r5) goto L3a
            r6 = 5
            if (r2 == r6) goto L25
            if (r2 == r4) goto L3a
            if (r2 == r3) goto L3a
            goto L53
        L25:
            org.threeten.bp.chrono.MinguoChronology r8 = r7.getChronology()
            org.threeten.bp.temporal.ValueRange r8 = r8.range(r0)
            r8.checkValidValue(r9, r0)
            long r0 = r7.getProlepticMonth()
            long r9 = r9 - r0
            org.threeten.bp.chrono.MinguoDate r8 = r7.plusMonths2(r9)
            return r8
        L3a:
            org.threeten.bp.chrono.MinguoChronology r2 = r7.getChronology()
            org.threeten.bp.temporal.ValueRange r2 = r2.range(r0)
            int r2 = r2.checkValidIntValue(r9, r0)
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            if (r0 == r5) goto L7d
            if (r0 == r4) goto L70
            if (r0 == r3) goto L5e
        L53:
            org.threeten.bp.LocalDate r0 = r7.isoDate
            org.threeten.bp.LocalDate r8 = r0.with(r8, r9)
            org.threeten.bp.chrono.MinguoDate r8 = r7.with(r8)
            return r8
        L5e:
            org.threeten.bp.LocalDate r8 = r7.isoDate
            int r9 = r7.getProlepticYear()
            int r1 = r1 - r9
            int r1 = r1 + 1911
            org.threeten.bp.LocalDate r8 = r8.withYear(r1)
            org.threeten.bp.chrono.MinguoDate r8 = r7.with(r8)
            return r8
        L70:
            org.threeten.bp.LocalDate r8 = r7.isoDate
            int r2 = r2 + 1911
            org.threeten.bp.LocalDate r8 = r8.withYear(r2)
            org.threeten.bp.chrono.MinguoDate r8 = r7.with(r8)
            return r8
        L7d:
            org.threeten.bp.LocalDate r8 = r7.isoDate
            int r9 = r7.getProlepticYear()
            if (r9 < r1) goto L88
            int r2 = r2 + 1911
            goto L8b
        L88:
            int r1 = r1 - r2
            int r2 = r1 + 1911
        L8b:
            org.threeten.bp.LocalDate r8 = r8.withYear(r2)
            org.threeten.bp.chrono.MinguoDate r8 = r7.with(r8)
            return r8
        L94:
            org.threeten.bp.temporal.b r8 = r8.adjustInto(r7, r9)
            org.threeten.bp.chrono.MinguoDate r8 = (org.threeten.bp.chrono.MinguoDate) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.bp.chrono.MinguoDate.with(org.threeten.bp.temporal.g, long):org.threeten.bp.chrono.MinguoDate");
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public MinguoDate plus(long j10, org.threeten.bp.temporal.j jVar) {
        return (MinguoDate) super.plus(j10, jVar);
    }

    private MinguoDate with(LocalDate localDate) {
        return localDate.equals(this.isoDate) ? this : new MinguoDate(localDate);
    }
}
