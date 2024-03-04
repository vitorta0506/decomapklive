package org.threeten.bp.chrono;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDate;
import org.threeten.bp.ZoneId;
import org.threeten.bp.format.ResolverStyle;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public final class ThaiBuddhistChronology extends i implements Serializable {
    public static final ThaiBuddhistChronology INSTANCE = new ThaiBuddhistChronology();
    static final int YEARS_DIFFERENCE = 543;
    private static final long serialVersionUID = 2775954514031616474L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56490a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56490a = iArr;
            try {
                iArr[ChronoField.PROLEPTIC_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56490a[ChronoField.YEAR_OF_ERA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56490a[ChronoField.YEAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private ThaiBuddhistChronology() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // org.threeten.bp.chrono.i
    public List<j> eras() {
        return Arrays.asList(ThaiBuddhistEra.values());
    }

    @Override // org.threeten.bp.chrono.i
    public String getCalendarType() {
        return "buddhist";
    }

    @Override // org.threeten.bp.chrono.i
    public String getId() {
        return "ThaiBuddhist";
    }

    @Override // org.threeten.bp.chrono.i
    public boolean isLeapYear(long j10) {
        return IsoChronology.INSTANCE.isLeapYear(j10 - 543);
    }

    @Override // org.threeten.bp.chrono.i
    public c<ThaiBuddhistDate> localDateTime(org.threeten.bp.temporal.c cVar) {
        return super.localDateTime(cVar);
    }

    @Override // org.threeten.bp.chrono.i
    public int prolepticYear(j jVar, int i9) {
        if (jVar instanceof ThaiBuddhistEra) {
            return jVar == ThaiBuddhistEra.BE ? i9 : 1 - i9;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }

    @Override // org.threeten.bp.chrono.i
    public ValueRange range(ChronoField chronoField) {
        int i9 = a.f56490a[chronoField.ordinal()];
        if (i9 == 1) {
            ValueRange range = ChronoField.PROLEPTIC_MONTH.range();
            return ValueRange.of(range.getMinimum() + 6516, range.getMaximum() + 6516);
        } else if (i9 == 2) {
            ValueRange range2 = ChronoField.YEAR.range();
            return ValueRange.of(1L, 1 + (-(range2.getMinimum() + 543)), range2.getMaximum() + 543);
        } else if (i9 != 3) {
            return chronoField.range();
        } else {
            ValueRange range3 = ChronoField.YEAR.range();
            return ValueRange.of(range3.getMinimum() + 543, range3.getMaximum() + 543);
        }
    }

    @Override // org.threeten.bp.chrono.i
    public /* bridge */ /* synthetic */ b resolveDate(Map map, ResolverStyle resolverStyle) {
        return resolveDate((Map<org.threeten.bp.temporal.g, Long>) map, resolverStyle);
    }

    @Override // org.threeten.bp.chrono.i
    public g<ThaiBuddhistDate> zonedDateTime(org.threeten.bp.temporal.c cVar) {
        return super.zonedDateTime(cVar);
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate dateEpochDay(long j10) {
        return new ThaiBuddhistDate(LocalDate.ofEpochDay(j10));
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistEra eraOf(int i9) {
        return ThaiBuddhistEra.of(i9);
    }

    /* JADX WARN: Type inference failed for: r11v20, types: [org.threeten.bp.chrono.ThaiBuddhistDate, jl.c] */
    /* JADX WARN: Type inference failed for: r11v36, types: [org.threeten.bp.chrono.ThaiBuddhistDate] */
    /* JADX WARN: Type inference failed for: r11v71, types: [org.threeten.bp.chrono.ThaiBuddhistDate] */
    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate resolveDate(Map<org.threeten.bp.temporal.g, Long> map, ResolverStyle resolverStyle) {
        ChronoField chronoField = ChronoField.EPOCH_DAY;
        if (map.containsKey(chronoField)) {
            return dateEpochDay(map.remove(chronoField).longValue());
        }
        ChronoField chronoField2 = ChronoField.PROLEPTIC_MONTH;
        Long remove = map.remove(chronoField2);
        if (remove != null) {
            if (resolverStyle != ResolverStyle.LENIENT) {
                chronoField2.checkValidValue(remove.longValue());
            }
            updateResolveMap(map, ChronoField.MONTH_OF_YEAR, jl.d.g(remove.longValue(), 12) + 1);
            updateResolveMap(map, ChronoField.YEAR, jl.d.e(remove.longValue(), 12L));
        }
        ChronoField chronoField3 = ChronoField.YEAR_OF_ERA;
        Long remove2 = map.remove(chronoField3);
        if (remove2 != null) {
            if (resolverStyle != ResolverStyle.LENIENT) {
                chronoField3.checkValidValue(remove2.longValue());
            }
            Long remove3 = map.remove(ChronoField.ERA);
            if (remove3 == null) {
                ChronoField chronoField4 = ChronoField.YEAR;
                Long l10 = map.get(chronoField4);
                if (resolverStyle != ResolverStyle.STRICT) {
                    updateResolveMap(map, chronoField4, (l10 == null || l10.longValue() > 0) ? remove2.longValue() : jl.d.p(1L, remove2.longValue()));
                } else if (l10 != null) {
                    updateResolveMap(map, chronoField4, l10.longValue() > 0 ? remove2.longValue() : jl.d.p(1L, remove2.longValue()));
                } else {
                    map.put(chronoField3, remove2);
                }
            } else if (remove3.longValue() == 1) {
                updateResolveMap(map, ChronoField.YEAR, remove2.longValue());
            } else if (remove3.longValue() == 0) {
                updateResolveMap(map, ChronoField.YEAR, jl.d.p(1L, remove2.longValue()));
            } else {
                throw new DateTimeException("Invalid value for era: " + remove3);
            }
        } else {
            ChronoField chronoField5 = ChronoField.ERA;
            if (map.containsKey(chronoField5)) {
                chronoField5.checkValidValue(map.get(chronoField5).longValue());
            }
        }
        ChronoField chronoField6 = ChronoField.YEAR;
        if (map.containsKey(chronoField6)) {
            ChronoField chronoField7 = ChronoField.MONTH_OF_YEAR;
            if (map.containsKey(chronoField7)) {
                ChronoField chronoField8 = ChronoField.DAY_OF_MONTH;
                if (map.containsKey(chronoField8)) {
                    int checkValidIntValue = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                    if (resolverStyle == ResolverStyle.LENIENT) {
                        return date(checkValidIntValue, 1, 1).plusMonths2(jl.d.p(map.remove(chronoField7).longValue(), 1L)).plusDays2(jl.d.p(map.remove(chronoField8).longValue(), 1L));
                    }
                    int checkValidIntValue2 = range(chronoField7).checkValidIntValue(map.remove(chronoField7).longValue(), chronoField7);
                    int checkValidIntValue3 = range(chronoField8).checkValidIntValue(map.remove(chronoField8).longValue(), chronoField8);
                    if (resolverStyle == ResolverStyle.SMART && checkValidIntValue3 > 28) {
                        checkValidIntValue3 = Math.min(checkValidIntValue3, date(checkValidIntValue, checkValidIntValue2, 1).lengthOfMonth());
                    }
                    return date(checkValidIntValue, checkValidIntValue2, checkValidIntValue3);
                }
                ChronoField chronoField9 = ChronoField.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(chronoField9)) {
                    ChronoField chronoField10 = ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(chronoField10)) {
                        int checkValidIntValue4 = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            long p10 = jl.d.p(map.remove(chronoField7).longValue(), 1L);
                            return date(checkValidIntValue4, 1, 1).plus(p10, (org.threeten.bp.temporal.j) ChronoUnit.MONTHS).plus(jl.d.p(map.remove(chronoField9).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField10).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                        }
                        int checkValidIntValue5 = chronoField7.checkValidIntValue(map.remove(chronoField7).longValue());
                        ThaiBuddhistDate plus = date(checkValidIntValue4, checkValidIntValue5, 1).plus(((chronoField9.checkValidIntValue(map.remove(chronoField9).longValue()) - 1) * 7) + (chronoField10.checkValidIntValue(map.remove(chronoField10).longValue()) - 1), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                        if (resolverStyle != ResolverStyle.STRICT || plus.get(chronoField7) == checkValidIntValue5) {
                            return plus;
                        }
                        throw new DateTimeException("Strict mode rejected date parsed to a different month");
                    }
                    ChronoField chronoField11 = ChronoField.DAY_OF_WEEK;
                    if (map.containsKey(chronoField11)) {
                        int checkValidIntValue6 = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            long p11 = jl.d.p(map.remove(chronoField7).longValue(), 1L);
                            return date(checkValidIntValue6, 1, 1).plus(p11, (org.threeten.bp.temporal.j) ChronoUnit.MONTHS).plus(jl.d.p(map.remove(chronoField9).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField11).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                        }
                        int checkValidIntValue7 = chronoField7.checkValidIntValue(map.remove(chronoField7).longValue());
                        ThaiBuddhistDate with = date(checkValidIntValue6, checkValidIntValue7, 1).plus(chronoField9.checkValidIntValue(map.remove(chronoField9).longValue()) - 1, (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).with(org.threeten.bp.temporal.e.a(DayOfWeek.of(chronoField11.checkValidIntValue(map.remove(chronoField11).longValue()))));
                        if (resolverStyle != ResolverStyle.STRICT || with.get(chronoField7) == checkValidIntValue7) {
                            return with;
                        }
                        throw new DateTimeException("Strict mode rejected date parsed to a different month");
                    }
                }
            }
            ChronoField chronoField12 = ChronoField.DAY_OF_YEAR;
            if (map.containsKey(chronoField12)) {
                int checkValidIntValue8 = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                if (resolverStyle == ResolverStyle.LENIENT) {
                    return dateYearDay(checkValidIntValue8, 1).plusDays2(jl.d.p(map.remove(chronoField12).longValue(), 1L));
                }
                return dateYearDay(checkValidIntValue8, chronoField12.checkValidIntValue(map.remove(chronoField12).longValue()));
            }
            ChronoField chronoField13 = ChronoField.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(chronoField13)) {
                ChronoField chronoField14 = ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(chronoField14)) {
                    int checkValidIntValue9 = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                    if (resolverStyle == ResolverStyle.LENIENT) {
                        return date(checkValidIntValue9, 1, 1).plus(jl.d.p(map.remove(chronoField13).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField14).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                    }
                    ?? plusDays2 = date(checkValidIntValue9, 1, 1).plusDays2(((chronoField13.checkValidIntValue(map.remove(chronoField13).longValue()) - 1) * 7) + (chronoField14.checkValidIntValue(map.remove(chronoField14).longValue()) - 1));
                    if (resolverStyle != ResolverStyle.STRICT || plusDays2.get(chronoField6) == checkValidIntValue9) {
                        return plusDays2;
                    }
                    throw new DateTimeException("Strict mode rejected date parsed to a different year");
                }
                ChronoField chronoField15 = ChronoField.DAY_OF_WEEK;
                if (map.containsKey(chronoField15)) {
                    int checkValidIntValue10 = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                    if (resolverStyle == ResolverStyle.LENIENT) {
                        return date(checkValidIntValue10, 1, 1).plus(jl.d.p(map.remove(chronoField13).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField15).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                    }
                    ThaiBuddhistDate with2 = date(checkValidIntValue10, 1, 1).plus(chronoField13.checkValidIntValue(map.remove(chronoField13).longValue()) - 1, (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).with(org.threeten.bp.temporal.e.a(DayOfWeek.of(chronoField15.checkValidIntValue(map.remove(chronoField15).longValue()))));
                    if (resolverStyle != ResolverStyle.STRICT || with2.get(chronoField6) == checkValidIntValue10) {
                        return with2;
                    }
                    throw new DateTimeException("Strict mode rejected date parsed to a different month");
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // org.threeten.bp.chrono.i
    public g<ThaiBuddhistDate> zonedDateTime(Instant instant, ZoneId zoneId) {
        return super.zonedDateTime(instant, zoneId);
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate dateYearDay(j jVar, int i9, int i10) {
        return (ThaiBuddhistDate) super.dateYearDay(jVar, i9, i10);
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate date(j jVar, int i9, int i10, int i11) {
        return (ThaiBuddhistDate) super.date(jVar, i9, i10, i11);
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate dateNow() {
        return (ThaiBuddhistDate) super.dateNow();
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate dateYearDay(int i9, int i10) {
        return new ThaiBuddhistDate(LocalDate.ofYearDay(i9 - 543, i10));
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate date(int i9, int i10, int i11) {
        return new ThaiBuddhistDate(LocalDate.of(i9 - 543, i10, i11));
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate dateNow(ZoneId zoneId) {
        return (ThaiBuddhistDate) super.dateNow(zoneId);
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate date(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof ThaiBuddhistDate) {
            return (ThaiBuddhistDate) cVar;
        }
        return new ThaiBuddhistDate(LocalDate.from(cVar));
    }

    @Override // org.threeten.bp.chrono.i
    public ThaiBuddhistDate dateNow(org.threeten.bp.a aVar) {
        jl.d.i(aVar, "clock");
        return (ThaiBuddhistDate) super.dateNow(aVar);
    }
}
