package org.threeten.bp.temporal;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.Year;
import org.threeten.bp.format.ResolverStyle;
/* loaded from: classes7.dex */
public final class WeekFields implements Serializable {
    private static final ConcurrentMap<String, WeekFields> CACHE = new ConcurrentHashMap(4, 0.75f, 2);
    public static final WeekFields ISO = new WeekFields(DayOfWeek.MONDAY, 4);
    public static final WeekFields SUNDAY_START = of(DayOfWeek.SUNDAY, 1);
    private static final long serialVersionUID = -1177360819670808121L;
    private final DayOfWeek firstDayOfWeek;
    private final int minimalDays;
    private final transient g dayOfWeek = a.g(this);
    private final transient g weekOfMonth = a.i(this);
    private final transient g weekOfYear = a.k(this);
    private final transient g weekOfWeekBasedYear = a.j(this);
    private final transient g weekBasedYear = a.h(this);

    /* loaded from: classes7.dex */
    static class a implements g {

        /* renamed from: f  reason: collision with root package name */
        private static final ValueRange f56630f = ValueRange.of(1, 7);

        /* renamed from: g  reason: collision with root package name */
        private static final ValueRange f56631g = ValueRange.of(0, 1, 4, 6);

        /* renamed from: h  reason: collision with root package name */
        private static final ValueRange f56632h = ValueRange.of(0, 1, 52, 54);

        /* renamed from: i  reason: collision with root package name */
        private static final ValueRange f56633i = ValueRange.of(1, 52, 53);

        /* renamed from: j  reason: collision with root package name */
        private static final ValueRange f56634j = ChronoField.YEAR.range();

        /* renamed from: a  reason: collision with root package name */
        private final String f56635a;

        /* renamed from: b  reason: collision with root package name */
        private final WeekFields f56636b;

        /* renamed from: c  reason: collision with root package name */
        private final j f56637c;

        /* renamed from: d  reason: collision with root package name */
        private final j f56638d;

        /* renamed from: e  reason: collision with root package name */
        private final ValueRange f56639e;

        private a(String str, WeekFields weekFields, j jVar, j jVar2, ValueRange valueRange) {
            this.f56635a = str;
            this.f56636b = weekFields;
            this.f56637c = jVar;
            this.f56638d = jVar2;
            this.f56639e = valueRange;
        }

        private int a(int i9, int i10) {
            return ((i9 + 7) + (i10 - 1)) / 7;
        }

        private int b(c cVar, int i9) {
            return jl.d.f(cVar.get(ChronoField.DAY_OF_WEEK) - i9, 7) + 1;
        }

        private int c(c cVar) {
            int f10 = jl.d.f(cVar.get(ChronoField.DAY_OF_WEEK) - this.f56636b.getFirstDayOfWeek().getValue(), 7) + 1;
            int i9 = cVar.get(ChronoField.YEAR);
            long f11 = f(cVar, f10);
            if (f11 == 0) {
                return i9 - 1;
            }
            if (f11 < 53) {
                return i9;
            }
            return f11 >= ((long) a(m(cVar.get(ChronoField.DAY_OF_YEAR), f10), (Year.isLeap((long) i9) ? 366 : 365) + this.f56636b.getMinimalDaysInFirstWeek())) ? i9 + 1 : i9;
        }

        private int d(c cVar) {
            int f10 = jl.d.f(cVar.get(ChronoField.DAY_OF_WEEK) - this.f56636b.getFirstDayOfWeek().getValue(), 7) + 1;
            long f11 = f(cVar, f10);
            if (f11 == 0) {
                return ((int) f(org.threeten.bp.chrono.i.from(cVar).date(cVar).minus(1L, (j) ChronoUnit.WEEKS), f10)) + 1;
            }
            if (f11 >= 53) {
                int a10 = a(m(cVar.get(ChronoField.DAY_OF_YEAR), f10), (Year.isLeap((long) cVar.get(ChronoField.YEAR)) ? 366 : 365) + this.f56636b.getMinimalDaysInFirstWeek());
                if (f11 >= a10) {
                    return (int) (f11 - (a10 - 1));
                }
            }
            return (int) f11;
        }

        private long e(c cVar, int i9) {
            int i10 = cVar.get(ChronoField.DAY_OF_MONTH);
            return a(m(i10, i9), i10);
        }

        private long f(c cVar, int i9) {
            int i10 = cVar.get(ChronoField.DAY_OF_YEAR);
            return a(m(i10, i9), i10);
        }

        static a g(WeekFields weekFields) {
            return new a("DayOfWeek", weekFields, ChronoUnit.DAYS, ChronoUnit.WEEKS, f56630f);
        }

        static a h(WeekFields weekFields) {
            return new a("WeekBasedYear", weekFields, org.threeten.bp.temporal.a.f56644e, ChronoUnit.FOREVER, f56634j);
        }

        static a i(WeekFields weekFields) {
            return new a("WeekOfMonth", weekFields, ChronoUnit.WEEKS, ChronoUnit.MONTHS, f56631g);
        }

        static a j(WeekFields weekFields) {
            return new a("WeekOfWeekBasedYear", weekFields, ChronoUnit.WEEKS, org.threeten.bp.temporal.a.f56644e, f56633i);
        }

        static a k(WeekFields weekFields) {
            return new a("WeekOfYear", weekFields, ChronoUnit.WEEKS, ChronoUnit.YEARS, f56632h);
        }

        private ValueRange l(c cVar) {
            int f10 = jl.d.f(cVar.get(ChronoField.DAY_OF_WEEK) - this.f56636b.getFirstDayOfWeek().getValue(), 7) + 1;
            long f11 = f(cVar, f10);
            if (f11 == 0) {
                return l(org.threeten.bp.chrono.i.from(cVar).date(cVar).minus(2L, (j) ChronoUnit.WEEKS));
            }
            int a10 = a(m(cVar.get(ChronoField.DAY_OF_YEAR), f10), (Year.isLeap((long) cVar.get(ChronoField.YEAR)) ? 366 : 365) + this.f56636b.getMinimalDaysInFirstWeek());
            if (f11 >= a10) {
                return l(org.threeten.bp.chrono.i.from(cVar).date(cVar).plus(2L, (j) ChronoUnit.WEEKS));
            }
            return ValueRange.of(1L, a10 - 1);
        }

        private int m(int i9, int i10) {
            int f10 = jl.d.f(i9 - i10, 7);
            return f10 + 1 > this.f56636b.getMinimalDaysInFirstWeek() ? 7 - f10 : -f10;
        }

        @Override // org.threeten.bp.temporal.g
        public <R extends b> R adjustInto(R r10, long j10) {
            int checkValidIntValue = this.f56639e.checkValidIntValue(j10, this);
            int i9 = r10.get(this);
            if (checkValidIntValue == i9) {
                return r10;
            }
            if (this.f56638d == ChronoUnit.FOREVER) {
                int i10 = r10.get(this.f56636b.weekOfWeekBasedYear);
                ChronoUnit chronoUnit = ChronoUnit.WEEKS;
                b plus = r10.plus((long) ((j10 - i9) * 52.1775d), chronoUnit);
                if (plus.get(this) > checkValidIntValue) {
                    return (R) plus.minus(plus.get(this.f56636b.weekOfWeekBasedYear), chronoUnit);
                }
                if (plus.get(this) < checkValidIntValue) {
                    plus = plus.plus(2L, chronoUnit);
                }
                R r11 = (R) plus.plus(i10 - plus.get(this.f56636b.weekOfWeekBasedYear), chronoUnit);
                return r11.get(this) > checkValidIntValue ? (R) r11.minus(1L, chronoUnit) : r11;
            }
            return (R) r10.plus(checkValidIntValue - i9, this.f56637c);
        }

        @Override // org.threeten.bp.temporal.g
        public long getFrom(c cVar) {
            int c10;
            int f10 = jl.d.f(cVar.get(ChronoField.DAY_OF_WEEK) - this.f56636b.getFirstDayOfWeek().getValue(), 7) + 1;
            j jVar = this.f56638d;
            if (jVar == ChronoUnit.WEEKS) {
                return f10;
            }
            if (jVar == ChronoUnit.MONTHS) {
                int i9 = cVar.get(ChronoField.DAY_OF_MONTH);
                c10 = a(m(i9, f10), i9);
            } else if (jVar == ChronoUnit.YEARS) {
                int i10 = cVar.get(ChronoField.DAY_OF_YEAR);
                c10 = a(m(i10, f10), i10);
            } else if (jVar == org.threeten.bp.temporal.a.f56644e) {
                c10 = d(cVar);
            } else if (jVar == ChronoUnit.FOREVER) {
                c10 = c(cVar);
            } else {
                throw new IllegalStateException("unreachable");
            }
            return c10;
        }

        @Override // org.threeten.bp.temporal.g
        public boolean isDateBased() {
            return true;
        }

        @Override // org.threeten.bp.temporal.g
        public boolean isSupportedBy(c cVar) {
            if (cVar.isSupported(ChronoField.DAY_OF_WEEK)) {
                j jVar = this.f56638d;
                if (jVar == ChronoUnit.WEEKS) {
                    return true;
                }
                if (jVar == ChronoUnit.MONTHS) {
                    return cVar.isSupported(ChronoField.DAY_OF_MONTH);
                }
                if (jVar == ChronoUnit.YEARS) {
                    return cVar.isSupported(ChronoField.DAY_OF_YEAR);
                }
                if (jVar == org.threeten.bp.temporal.a.f56644e) {
                    return cVar.isSupported(ChronoField.EPOCH_DAY);
                }
                if (jVar == ChronoUnit.FOREVER) {
                    return cVar.isSupported(ChronoField.EPOCH_DAY);
                }
                return false;
            }
            return false;
        }

        @Override // org.threeten.bp.temporal.g
        public boolean isTimeBased() {
            return false;
        }

        @Override // org.threeten.bp.temporal.g
        public ValueRange range() {
            return this.f56639e;
        }

        @Override // org.threeten.bp.temporal.g
        public ValueRange rangeRefinedBy(c cVar) {
            ChronoField chronoField;
            j jVar = this.f56638d;
            if (jVar == ChronoUnit.WEEKS) {
                return this.f56639e;
            }
            if (jVar == ChronoUnit.MONTHS) {
                chronoField = ChronoField.DAY_OF_MONTH;
            } else if (jVar == ChronoUnit.YEARS) {
                chronoField = ChronoField.DAY_OF_YEAR;
            } else if (jVar == org.threeten.bp.temporal.a.f56644e) {
                return l(cVar);
            } else {
                if (jVar == ChronoUnit.FOREVER) {
                    return cVar.range(ChronoField.YEAR);
                }
                throw new IllegalStateException("unreachable");
            }
            int value = this.f56636b.getFirstDayOfWeek().getValue();
            int m10 = m(cVar.get(chronoField), jl.d.f(cVar.get(ChronoField.DAY_OF_WEEK) - value, 7) + 1);
            ValueRange range = cVar.range(chronoField);
            return ValueRange.of(a(m10, (int) range.getMinimum()), a(m10, (int) range.getMaximum()));
        }

        @Override // org.threeten.bp.temporal.g
        public c resolve(Map<g, Long> map, c cVar, ResolverStyle resolverStyle) {
            long j10;
            int b10;
            long checkValidIntValue;
            org.threeten.bp.chrono.b date;
            int b11;
            long checkValidIntValue2;
            int b12;
            org.threeten.bp.chrono.b date2;
            long checkValidIntValue3;
            int b13;
            long f10;
            int value = this.f56636b.getFirstDayOfWeek().getValue();
            if (this.f56638d == ChronoUnit.WEEKS) {
                map.put(ChronoField.DAY_OF_WEEK, Long.valueOf(jl.d.f((value - 1) + (this.f56639e.checkValidIntValue(map.remove(this).longValue(), this) - 1), 7) + 1));
                return null;
            }
            ChronoField chronoField = ChronoField.DAY_OF_WEEK;
            if (map.containsKey(chronoField)) {
                if (this.f56638d == ChronoUnit.FOREVER) {
                    if (map.containsKey(this.f56636b.weekOfWeekBasedYear)) {
                        org.threeten.bp.chrono.i from = org.threeten.bp.chrono.i.from(cVar);
                        int f11 = jl.d.f(chronoField.checkValidIntValue(map.get(chronoField).longValue()) - value, 7) + 1;
                        int checkValidIntValue4 = range().checkValidIntValue(map.get(this).longValue(), this);
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            date2 = from.date(checkValidIntValue4, 1, this.f56636b.getMinimalDaysInFirstWeek());
                            checkValidIntValue3 = map.get(this.f56636b.weekOfWeekBasedYear).longValue();
                            b13 = b(date2, value);
                            f10 = f(date2, b13);
                        } else {
                            date2 = from.date(checkValidIntValue4, 1, this.f56636b.getMinimalDaysInFirstWeek());
                            checkValidIntValue3 = this.f56636b.weekOfWeekBasedYear.range().checkValidIntValue(map.get(this.f56636b.weekOfWeekBasedYear).longValue(), this.f56636b.weekOfWeekBasedYear);
                            b13 = b(date2, value);
                            f10 = f(date2, b13);
                        }
                        org.threeten.bp.chrono.b plus = date2.plus(((checkValidIntValue3 - f10) * 7) + (f11 - b13), (j) ChronoUnit.DAYS);
                        if (resolverStyle == ResolverStyle.STRICT && plus.getLong(this) != map.get(this).longValue()) {
                            throw new DateTimeException("Strict mode rejected date parsed to a different year");
                        }
                        map.remove(this);
                        map.remove(this.f56636b.weekOfWeekBasedYear);
                        map.remove(chronoField);
                        return plus;
                    }
                    return null;
                }
                ChronoField chronoField2 = ChronoField.YEAR;
                if (map.containsKey(chronoField2)) {
                    int f12 = jl.d.f(chronoField.checkValidIntValue(map.get(chronoField).longValue()) - value, 7) + 1;
                    int checkValidIntValue5 = chronoField2.checkValidIntValue(map.get(chronoField2).longValue());
                    org.threeten.bp.chrono.i from2 = org.threeten.bp.chrono.i.from(cVar);
                    j jVar = this.f56638d;
                    ChronoUnit chronoUnit = ChronoUnit.MONTHS;
                    if (jVar == chronoUnit) {
                        ChronoField chronoField3 = ChronoField.MONTH_OF_YEAR;
                        if (map.containsKey(chronoField3)) {
                            long longValue = map.remove(this).longValue();
                            if (resolverStyle == ResolverStyle.LENIENT) {
                                date = from2.date(checkValidIntValue5, 1, 1).plus(map.get(chronoField3).longValue() - 1, (j) chronoUnit);
                                checkValidIntValue2 = ((longValue - e(date, b(date, value))) * 7) + (f12 - b12);
                            } else {
                                date = from2.date(checkValidIntValue5, chronoField3.checkValidIntValue(map.get(chronoField3).longValue()), 8);
                                checkValidIntValue2 = (f12 - b11) + ((this.f56639e.checkValidIntValue(longValue, this) - e(date, b(date, value))) * 7);
                            }
                            org.threeten.bp.chrono.b plus2 = date.plus(checkValidIntValue2, (j) ChronoUnit.DAYS);
                            if (resolverStyle == ResolverStyle.STRICT && plus2.getLong(chronoField3) != map.get(chronoField3).longValue()) {
                                throw new DateTimeException("Strict mode rejected date parsed to a different month");
                            }
                            map.remove(this);
                            map.remove(chronoField2);
                            map.remove(chronoField3);
                            map.remove(chronoField);
                            return plus2;
                        }
                        return null;
                    } else if (jVar == ChronoUnit.YEARS) {
                        long longValue2 = map.remove(this).longValue();
                        org.threeten.bp.chrono.b date3 = from2.date(checkValidIntValue5, 1, 1);
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            b10 = b(date3, value);
                            checkValidIntValue = longValue2 - f(date3, b10);
                            j10 = 7;
                        } else {
                            j10 = 7;
                            b10 = b(date3, value);
                            checkValidIntValue = this.f56639e.checkValidIntValue(longValue2, this) - f(date3, b10);
                        }
                        org.threeten.bp.chrono.b plus3 = date3.plus((checkValidIntValue * j10) + (f12 - b10), (j) ChronoUnit.DAYS);
                        if (resolverStyle == ResolverStyle.STRICT && plus3.getLong(chronoField2) != map.get(chronoField2).longValue()) {
                            throw new DateTimeException("Strict mode rejected date parsed to a different year");
                        }
                        map.remove(this);
                        map.remove(chronoField2);
                        map.remove(chronoField);
                        return plus3;
                    } else {
                        throw new IllegalStateException("unreachable");
                    }
                }
                return null;
            }
            return null;
        }

        public String toString() {
            return this.f56635a + "[" + this.f56636b.toString() + "]";
        }
    }

    private WeekFields(DayOfWeek dayOfWeek, int i9) {
        jl.d.i(dayOfWeek, "firstDayOfWeek");
        if (i9 >= 1 && i9 <= 7) {
            this.firstDayOfWeek = dayOfWeek;
            this.minimalDays = i9;
            return;
        }
        throw new IllegalArgumentException("Minimal number of days is invalid");
    }

    public static WeekFields of(Locale locale) {
        jl.d.i(locale, "locale");
        GregorianCalendar gregorianCalendar = new GregorianCalendar(new Locale(locale.getLanguage(), locale.getCountry()));
        return of(DayOfWeek.SUNDAY.plus(gregorianCalendar.getFirstDayOfWeek() - 1), gregorianCalendar.getMinimalDaysInFirstWeek());
    }

    private Object readResolve() throws InvalidObjectException {
        try {
            return of(this.firstDayOfWeek, this.minimalDays);
        } catch (IllegalArgumentException e10) {
            throw new InvalidObjectException("Invalid WeekFields" + e10.getMessage());
        }
    }

    public g dayOfWeek() {
        return this.dayOfWeek;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WeekFields) && hashCode() == obj.hashCode();
    }

    public DayOfWeek getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    public int getMinimalDaysInFirstWeek() {
        return this.minimalDays;
    }

    public int hashCode() {
        return (this.firstDayOfWeek.ordinal() * 7) + this.minimalDays;
    }

    public String toString() {
        return "WeekFields[" + this.firstDayOfWeek + ',' + this.minimalDays + ']';
    }

    public g weekBasedYear() {
        return this.weekBasedYear;
    }

    public g weekOfMonth() {
        return this.weekOfMonth;
    }

    public g weekOfWeekBasedYear() {
        return this.weekOfWeekBasedYear;
    }

    public g weekOfYear() {
        return this.weekOfYear;
    }

    public static WeekFields of(DayOfWeek dayOfWeek, int i9) {
        String str = dayOfWeek.toString() + i9;
        ConcurrentMap<String, WeekFields> concurrentMap = CACHE;
        WeekFields weekFields = concurrentMap.get(str);
        if (weekFields == null) {
            concurrentMap.putIfAbsent(str, new WeekFields(dayOfWeek, i9));
            return concurrentMap.get(str);
        }
        return weekFields;
    }
}
