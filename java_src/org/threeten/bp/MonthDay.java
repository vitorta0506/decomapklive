package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.d;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
/* loaded from: classes7.dex */
public final class MonthDay extends jl.c implements d, Comparable<MonthDay>, Serializable {
    public static final i<MonthDay> FROM = new a();
    private static final org.threeten.bp.format.b PARSER = new org.threeten.bp.format.c().g("--").m(ChronoField.MONTH_OF_YEAR, 2).f('-').m(ChronoField.DAY_OF_MONTH, 2).v();
    private static final long serialVersionUID = -939150713474957432L;
    private final int day;
    private final int month;

    /* loaded from: classes7.dex */
    class a implements i<MonthDay> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public MonthDay a(org.threeten.bp.temporal.c cVar) {
            return MonthDay.from(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56469a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56469a = iArr;
            try {
                iArr[ChronoField.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56469a[ChronoField.MONTH_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private MonthDay(int i9, int i10) {
        this.month = i9;
        this.day = i10;
    }

    public static MonthDay from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof MonthDay) {
            return (MonthDay) cVar;
        }
        try {
            if (!IsoChronology.INSTANCE.equals(org.threeten.bp.chrono.i.from(cVar))) {
                cVar = LocalDate.from(cVar);
            }
            return of(cVar.get(ChronoField.MONTH_OF_YEAR), cVar.get(ChronoField.DAY_OF_MONTH));
        } catch (DateTimeException unused) {
            throw new DateTimeException("Unable to obtain MonthDay from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName());
        }
    }

    public static MonthDay now() {
        return now(org.threeten.bp.a.d());
    }

    public static MonthDay of(Month month, int i9) {
        jl.d.i(month, "month");
        ChronoField.DAY_OF_MONTH.checkValidValue(i9);
        if (i9 <= month.maxLength()) {
            return new MonthDay(month.getValue(), i9);
        }
        throw new DateTimeException("Illegal value for DayOfMonth field, value " + i9 + " is not valid for month " + month.name());
    }

    public static MonthDay parse(CharSequence charSequence) {
        return parse(charSequence, PARSER);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MonthDay readExternal(DataInput dataInput) throws IOException {
        return of(dataInput.readByte(), dataInput.readByte());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new org.threeten.bp.b((byte) 64, this);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        if (org.threeten.bp.chrono.i.from(bVar).equals(IsoChronology.INSTANCE)) {
            org.threeten.bp.temporal.b with = bVar.with(ChronoField.MONTH_OF_YEAR, this.month);
            ChronoField chronoField = ChronoField.DAY_OF_MONTH;
            return with.with(chronoField, Math.min(with.range(chronoField).getMaximum(), this.day));
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public LocalDate atYear(int i9) {
        return LocalDate.of(i9, this.month, isValidYear(i9) ? this.day : 28);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MonthDay) {
            MonthDay monthDay = (MonthDay) obj;
            return this.month == monthDay.month && this.day == monthDay.day;
        }
        return false;
    }

    public String format(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return bVar.b(this);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public int get(g gVar) {
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    public int getDayOfMonth() {
        return this.day;
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        int i9;
        if (gVar instanceof ChronoField) {
            int i10 = b.f56469a[((ChronoField) gVar).ordinal()];
            if (i10 == 1) {
                i9 = this.day;
            } else if (i10 == 2) {
                i9 = this.month;
            } else {
                throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            }
            return i9;
        }
        return gVar.getFrom(this);
    }

    public Month getMonth() {
        return Month.of(this.month);
    }

    public int getMonthValue() {
        return this.month;
    }

    public int hashCode() {
        return (this.month << 6) + this.day;
    }

    public boolean isAfter(MonthDay monthDay) {
        return compareTo(monthDay) > 0;
    }

    public boolean isBefore(MonthDay monthDay) {
        return compareTo(monthDay) < 0;
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.MONTH_OF_YEAR || gVar == ChronoField.DAY_OF_MONTH : gVar != null && gVar.isSupportedBy(this);
    }

    public boolean isValidYear(int i9) {
        return !(this.day == 29 && this.month == 2 && !Year.isLeap((long) i9));
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.a()) {
            return (R) IsoChronology.INSTANCE;
        }
        return (R) super.query(iVar);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar == ChronoField.MONTH_OF_YEAR) {
            return gVar.range();
        }
        if (gVar == ChronoField.DAY_OF_MONTH) {
            return ValueRange.of(1L, getMonth().minLength(), getMonth().maxLength());
        }
        return super.range(gVar);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(10);
        sb2.append("--");
        sb2.append(this.month < 10 ? "0" : "");
        sb2.append(this.month);
        sb2.append(this.day < 10 ? "-0" : "-");
        sb2.append(this.day);
        return sb2.toString();
    }

    public MonthDay with(Month month) {
        jl.d.i(month, "month");
        if (month.getValue() == this.month) {
            return this;
        }
        return new MonthDay(month.getValue(), Math.min(this.day, month.maxLength()));
    }

    public MonthDay withDayOfMonth(int i9) {
        return i9 == this.day ? this : of(this.month, i9);
    }

    public MonthDay withMonth(int i9) {
        return with(Month.of(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(this.month);
        dataOutput.writeByte(this.day);
    }

    public static MonthDay now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    public static MonthDay parse(CharSequence charSequence, org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        return (MonthDay) bVar.h(charSequence, FROM);
    }

    @Override // java.lang.Comparable
    public int compareTo(MonthDay monthDay) {
        int i9 = this.month - monthDay.month;
        return i9 == 0 ? this.day - monthDay.day : i9;
    }

    public static MonthDay now(org.threeten.bp.a aVar) {
        LocalDate now = LocalDate.now(aVar);
        return of(now.getMonth(), now.getDayOfMonth());
    }

    public static MonthDay of(int i9, int i10) {
        return of(Month.of(i9), i10);
    }
}
