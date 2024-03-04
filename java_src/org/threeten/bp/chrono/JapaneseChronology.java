package org.threeten.bp.chrono;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.AnalyticsEvents;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
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
public final class JapaneseChronology extends i implements Serializable {
    private static final Map<String, String[]> ERA_FULL_NAMES;
    private static final Map<String, String[]> ERA_NARROW_NAMES;
    private static final Map<String, String[]> ERA_SHORT_NAMES;
    private static final String FALLBACK_LANGUAGE = "en";
    private static final String TARGET_LANGUAGE = "ja";
    private static final long serialVersionUID = 459996390165777884L;
    static final Locale LOCALE = new Locale("ja", "JP", "JP");
    public static final JapaneseChronology INSTANCE = new JapaneseChronology();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56486a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56486a = iArr;
            try {
                iArr[ChronoField.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56486a[ChronoField.DAY_OF_WEEK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56486a[ChronoField.MICRO_OF_DAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56486a[ChronoField.MICRO_OF_SECOND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56486a[ChronoField.HOUR_OF_DAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56486a[ChronoField.HOUR_OF_AMPM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56486a[ChronoField.MINUTE_OF_DAY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f56486a[ChronoField.MINUTE_OF_HOUR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f56486a[ChronoField.SECOND_OF_DAY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f56486a[ChronoField.SECOND_OF_MINUTE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f56486a[ChronoField.MILLI_OF_DAY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f56486a[ChronoField.MILLI_OF_SECOND.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f56486a[ChronoField.NANO_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f56486a[ChronoField.NANO_OF_SECOND.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f56486a[ChronoField.CLOCK_HOUR_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f56486a[ChronoField.CLOCK_HOUR_OF_AMPM.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f56486a[ChronoField.EPOCH_DAY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f56486a[ChronoField.PROLEPTIC_MONTH.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f56486a[ChronoField.ERA.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f56486a[ChronoField.YEAR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f56486a[ChronoField.YEAR_OF_ERA.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f56486a[ChronoField.MONTH_OF_YEAR.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f56486a[ChronoField.DAY_OF_YEAR.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        ERA_NARROW_NAMES = hashMap;
        HashMap hashMap2 = new HashMap();
        ERA_SHORT_NAMES = hashMap2;
        HashMap hashMap3 = new HashMap();
        ERA_FULL_NAMES = hashMap3;
        hashMap.put("en", new String[]{AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "K", "M", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH, "H"});
        hashMap.put("ja", new String[]{AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "K", "M", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH, "H"});
        hashMap2.put("en", new String[]{AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "K", "M", ExifInterface.GPS_DIRECTION_TRUE, ExifInterface.LATITUDE_SOUTH, "H"});
        hashMap2.put("ja", new String[]{AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "慶", "明", "大", "昭", "平"});
        hashMap3.put("en", new String[]{AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "Keio", "Meiji", "Taisho", "Showa", "Heisei"});
        hashMap3.put("ja", new String[]{AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "慶応", "明治", "大正", "昭和", "平成"});
    }

    private JapaneseChronology() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    private JapaneseDate resolveEYD(Map<org.threeten.bp.temporal.g, Long> map, ResolverStyle resolverStyle, JapaneseEra japaneseEra, int i9) {
        if (resolverStyle == ResolverStyle.LENIENT) {
            return dateYearDay((japaneseEra.startDate().getYear() + i9) - 1, 1).plus(jl.d.p(map.remove(ChronoField.DAY_OF_YEAR).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
        }
        ChronoField chronoField = ChronoField.DAY_OF_YEAR;
        return dateYearDay((j) japaneseEra, i9, range(chronoField).checkValidIntValue(map.remove(chronoField).longValue(), chronoField));
    }

    private JapaneseDate resolveEYMD(Map<org.threeten.bp.temporal.g, Long> map, ResolverStyle resolverStyle, JapaneseEra japaneseEra, int i9) {
        if (resolverStyle == ResolverStyle.LENIENT) {
            long p10 = jl.d.p(map.remove(ChronoField.MONTH_OF_YEAR).longValue(), 1L);
            return date((japaneseEra.startDate().getYear() + i9) - 1, 1, 1).plus(p10, (org.threeten.bp.temporal.j) ChronoUnit.MONTHS).plus(jl.d.p(map.remove(ChronoField.DAY_OF_MONTH).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
        }
        ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
        int checkValidIntValue = range(chronoField).checkValidIntValue(map.remove(chronoField).longValue(), chronoField);
        ChronoField chronoField2 = ChronoField.DAY_OF_MONTH;
        int checkValidIntValue2 = range(chronoField2).checkValidIntValue(map.remove(chronoField2).longValue(), chronoField2);
        if (resolverStyle == ResolverStyle.SMART) {
            if (i9 >= 1) {
                int year = (japaneseEra.startDate().getYear() + i9) - 1;
                if (checkValidIntValue2 > 28) {
                    checkValidIntValue2 = Math.min(checkValidIntValue2, date(year, checkValidIntValue, 1).lengthOfMonth());
                }
                JapaneseDate date = date(year, checkValidIntValue, checkValidIntValue2);
                if (date.getEra() != japaneseEra) {
                    if (Math.abs(date.getEra().getValue() - japaneseEra.getValue()) <= 1) {
                        if (date.get(ChronoField.YEAR_OF_ERA) != 1 && i9 != 1) {
                            throw new DateTimeException("Invalid Era/YearOfEra: " + japaneseEra + " " + i9);
                        }
                    } else {
                        throw new DateTimeException("Invalid Era/YearOfEra: " + japaneseEra + " " + i9);
                    }
                }
                return date;
            }
            throw new DateTimeException("Invalid YearOfEra: " + i9);
        }
        return date((j) japaneseEra, i9, checkValidIntValue, checkValidIntValue2);
    }

    @Override // org.threeten.bp.chrono.i
    public List<j> eras() {
        return Arrays.asList(JapaneseEra.values());
    }

    @Override // org.threeten.bp.chrono.i
    public String getCalendarType() {
        return "japanese";
    }

    @Override // org.threeten.bp.chrono.i
    public String getId() {
        return "Japanese";
    }

    @Override // org.threeten.bp.chrono.i
    public boolean isLeapYear(long j10) {
        return IsoChronology.INSTANCE.isLeapYear(j10);
    }

    @Override // org.threeten.bp.chrono.i
    public c<JapaneseDate> localDateTime(org.threeten.bp.temporal.c cVar) {
        return super.localDateTime(cVar);
    }

    @Override // org.threeten.bp.chrono.i
    public int prolepticYear(j jVar, int i9) {
        JapaneseEra japaneseEra;
        if (jVar instanceof JapaneseEra) {
            int year = (((JapaneseEra) jVar).startDate().getYear() + i9) - 1;
            ValueRange.of(1L, (japaneseEra.endDate().getYear() - japaneseEra.startDate().getYear()) + 1).checkValidValue(i9, ChronoField.YEAR_OF_ERA);
            return year;
        }
        throw new ClassCastException("Era must be JapaneseEra");
    }

    @Override // org.threeten.bp.chrono.i
    public ValueRange range(ChronoField chronoField) {
        int[] iArr = a.f56486a;
        switch (iArr[chronoField.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                return chronoField.range();
            default:
                Calendar calendar = Calendar.getInstance(LOCALE);
                int i9 = 0;
                switch (iArr[chronoField.ordinal()]) {
                    case 19:
                        JapaneseEra[] values = JapaneseEra.values();
                        return ValueRange.of(values[0].getValue(), values[values.length - 1].getValue());
                    case 20:
                        JapaneseEra[] values2 = JapaneseEra.values();
                        return ValueRange.of(JapaneseDate.MIN_DATE.getYear(), values2[values2.length - 1].endDate().getYear());
                    case 21:
                        JapaneseEra[] values3 = JapaneseEra.values();
                        int year = (values3[values3.length - 1].endDate().getYear() - values3[values3.length - 1].startDate().getYear()) + 1;
                        int i10 = Integer.MAX_VALUE;
                        while (i9 < values3.length) {
                            i10 = Math.min(i10, (values3[i9].endDate().getYear() - values3[i9].startDate().getYear()) + 1);
                            i9++;
                        }
                        return ValueRange.of(1L, 6L, i10, year);
                    case 22:
                        return ValueRange.of(calendar.getMinimum(2) + 1, calendar.getGreatestMinimum(2) + 1, calendar.getLeastMaximum(2) + 1, calendar.getMaximum(2) + 1);
                    case 23:
                        JapaneseEra[] values4 = JapaneseEra.values();
                        int i11 = 366;
                        while (i9 < values4.length) {
                            i11 = Math.min(i11, (values4[i9].startDate().lengthOfYear() - values4[i9].startDate().getDayOfYear()) + 1);
                            i9++;
                        }
                        return ValueRange.of(1L, i11, 366L);
                    default:
                        throw new UnsupportedOperationException("Unimplementable field: " + chronoField);
                }
        }
    }

    @Override // org.threeten.bp.chrono.i
    public /* bridge */ /* synthetic */ b resolveDate(Map map, ResolverStyle resolverStyle) {
        return resolveDate((Map<org.threeten.bp.temporal.g, Long>) map, resolverStyle);
    }

    @Override // org.threeten.bp.chrono.i
    public g<JapaneseDate> zonedDateTime(org.threeten.bp.temporal.c cVar) {
        return super.zonedDateTime(cVar);
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate dateEpochDay(long j10) {
        return new JapaneseDate(LocalDate.ofEpochDay(j10));
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseEra eraOf(int i9) {
        return JapaneseEra.of(i9);
    }

    /* JADX WARN: Type inference failed for: r12v17, types: [org.threeten.bp.chrono.JapaneseDate, jl.c] */
    /* JADX WARN: Type inference failed for: r12v33, types: [org.threeten.bp.chrono.JapaneseDate] */
    /* JADX WARN: Type inference failed for: r12v68, types: [org.threeten.bp.chrono.JapaneseDate] */
    @Override // org.threeten.bp.chrono.i
    public JapaneseDate resolveDate(Map<org.threeten.bp.temporal.g, Long> map, ResolverStyle resolverStyle) {
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
        ChronoField chronoField3 = ChronoField.ERA;
        Long l10 = map.get(chronoField3);
        JapaneseEra eraOf = l10 != null ? eraOf(range(chronoField3).checkValidIntValue(l10.longValue(), chronoField3)) : null;
        ChronoField chronoField4 = ChronoField.YEAR_OF_ERA;
        Long l11 = map.get(chronoField4);
        if (l11 != null) {
            int checkValidIntValue = range(chronoField4).checkValidIntValue(l11.longValue(), chronoField4);
            if (eraOf == null && resolverStyle != ResolverStyle.STRICT && !map.containsKey(ChronoField.YEAR)) {
                List<j> eras = eras();
                eraOf = (JapaneseEra) eras.get(eras.size() - 1);
            }
            if (eraOf != null && map.containsKey(ChronoField.MONTH_OF_YEAR) && map.containsKey(ChronoField.DAY_OF_MONTH)) {
                map.remove(chronoField3);
                map.remove(chronoField4);
                return resolveEYMD(map, resolverStyle, eraOf, checkValidIntValue);
            } else if (eraOf != null && map.containsKey(ChronoField.DAY_OF_YEAR)) {
                map.remove(chronoField3);
                map.remove(chronoField4);
                return resolveEYD(map, resolverStyle, eraOf, checkValidIntValue);
            }
        }
        ChronoField chronoField5 = ChronoField.YEAR;
        if (map.containsKey(chronoField5)) {
            ChronoField chronoField6 = ChronoField.MONTH_OF_YEAR;
            if (map.containsKey(chronoField6)) {
                ChronoField chronoField7 = ChronoField.DAY_OF_MONTH;
                if (map.containsKey(chronoField7)) {
                    int checkValidIntValue2 = chronoField5.checkValidIntValue(map.remove(chronoField5).longValue());
                    if (resolverStyle == ResolverStyle.LENIENT) {
                        return date(checkValidIntValue2, 1, 1).plusMonths2(jl.d.p(map.remove(chronoField6).longValue(), 1L)).plusDays2(jl.d.p(map.remove(chronoField7).longValue(), 1L));
                    }
                    int checkValidIntValue3 = range(chronoField6).checkValidIntValue(map.remove(chronoField6).longValue(), chronoField6);
                    int checkValidIntValue4 = range(chronoField7).checkValidIntValue(map.remove(chronoField7).longValue(), chronoField7);
                    if (resolverStyle == ResolverStyle.SMART && checkValidIntValue4 > 28) {
                        checkValidIntValue4 = Math.min(checkValidIntValue4, date(checkValidIntValue2, checkValidIntValue3, 1).lengthOfMonth());
                    }
                    return date(checkValidIntValue2, checkValidIntValue3, checkValidIntValue4);
                }
                ChronoField chronoField8 = ChronoField.ALIGNED_WEEK_OF_MONTH;
                if (map.containsKey(chronoField8)) {
                    ChronoField chronoField9 = ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                    if (map.containsKey(chronoField9)) {
                        int checkValidIntValue5 = chronoField5.checkValidIntValue(map.remove(chronoField5).longValue());
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            long p10 = jl.d.p(map.remove(chronoField6).longValue(), 1L);
                            return date(checkValidIntValue5, 1, 1).plus(p10, (org.threeten.bp.temporal.j) ChronoUnit.MONTHS).plus(jl.d.p(map.remove(chronoField8).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField9).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                        }
                        int checkValidIntValue6 = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                        JapaneseDate plus = date(checkValidIntValue5, checkValidIntValue6, 1).plus(((chronoField8.checkValidIntValue(map.remove(chronoField8).longValue()) - 1) * 7) + (chronoField9.checkValidIntValue(map.remove(chronoField9).longValue()) - 1), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                        if (resolverStyle != ResolverStyle.STRICT || plus.get(chronoField6) == checkValidIntValue6) {
                            return plus;
                        }
                        throw new DateTimeException("Strict mode rejected date parsed to a different month");
                    }
                    ChronoField chronoField10 = ChronoField.DAY_OF_WEEK;
                    if (map.containsKey(chronoField10)) {
                        int checkValidIntValue7 = chronoField5.checkValidIntValue(map.remove(chronoField5).longValue());
                        if (resolverStyle == ResolverStyle.LENIENT) {
                            long p11 = jl.d.p(map.remove(chronoField6).longValue(), 1L);
                            return date(checkValidIntValue7, 1, 1).plus(p11, (org.threeten.bp.temporal.j) ChronoUnit.MONTHS).plus(jl.d.p(map.remove(chronoField8).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField10).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                        }
                        int checkValidIntValue8 = chronoField6.checkValidIntValue(map.remove(chronoField6).longValue());
                        JapaneseDate with = date(checkValidIntValue7, checkValidIntValue8, 1).plus(chronoField8.checkValidIntValue(map.remove(chronoField8).longValue()) - 1, (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).with(org.threeten.bp.temporal.e.a(DayOfWeek.of(chronoField10.checkValidIntValue(map.remove(chronoField10).longValue()))));
                        if (resolverStyle != ResolverStyle.STRICT || with.get(chronoField6) == checkValidIntValue8) {
                            return with;
                        }
                        throw new DateTimeException("Strict mode rejected date parsed to a different month");
                    }
                }
            }
            ChronoField chronoField11 = ChronoField.DAY_OF_YEAR;
            if (map.containsKey(chronoField11)) {
                int checkValidIntValue9 = chronoField5.checkValidIntValue(map.remove(chronoField5).longValue());
                if (resolverStyle == ResolverStyle.LENIENT) {
                    return dateYearDay(checkValidIntValue9, 1).plusDays2(jl.d.p(map.remove(chronoField11).longValue(), 1L));
                }
                return dateYearDay(checkValidIntValue9, chronoField11.checkValidIntValue(map.remove(chronoField11).longValue()));
            }
            ChronoField chronoField12 = ChronoField.ALIGNED_WEEK_OF_YEAR;
            if (map.containsKey(chronoField12)) {
                ChronoField chronoField13 = ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR;
                if (map.containsKey(chronoField13)) {
                    int checkValidIntValue10 = chronoField5.checkValidIntValue(map.remove(chronoField5).longValue());
                    if (resolverStyle == ResolverStyle.LENIENT) {
                        return date(checkValidIntValue10, 1, 1).plus(jl.d.p(map.remove(chronoField12).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField13).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                    }
                    ?? plusDays2 = date(checkValidIntValue10, 1, 1).plusDays2(((chronoField12.checkValidIntValue(map.remove(chronoField12).longValue()) - 1) * 7) + (chronoField13.checkValidIntValue(map.remove(chronoField13).longValue()) - 1));
                    if (resolverStyle != ResolverStyle.STRICT || plusDays2.get(chronoField5) == checkValidIntValue10) {
                        return plusDays2;
                    }
                    throw new DateTimeException("Strict mode rejected date parsed to a different year");
                }
                ChronoField chronoField14 = ChronoField.DAY_OF_WEEK;
                if (map.containsKey(chronoField14)) {
                    int checkValidIntValue11 = chronoField5.checkValidIntValue(map.remove(chronoField5).longValue());
                    if (resolverStyle == ResolverStyle.LENIENT) {
                        return date(checkValidIntValue11, 1, 1).plus(jl.d.p(map.remove(chronoField12).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).plus(jl.d.p(map.remove(chronoField14).longValue(), 1L), (org.threeten.bp.temporal.j) ChronoUnit.DAYS);
                    }
                    JapaneseDate with2 = date(checkValidIntValue11, 1, 1).plus(chronoField12.checkValidIntValue(map.remove(chronoField12).longValue()) - 1, (org.threeten.bp.temporal.j) ChronoUnit.WEEKS).with(org.threeten.bp.temporal.e.a(DayOfWeek.of(chronoField14.checkValidIntValue(map.remove(chronoField14).longValue()))));
                    if (resolverStyle != ResolverStyle.STRICT || with2.get(chronoField5) == checkValidIntValue11) {
                        return with2;
                    }
                    throw new DateTimeException("Strict mode rejected date parsed to a different month");
                }
            }
        }
        return null;
    }

    @Override // org.threeten.bp.chrono.i
    public g<JapaneseDate> zonedDateTime(Instant instant, ZoneId zoneId) {
        return super.zonedDateTime(instant, zoneId);
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate dateYearDay(j jVar, int i9, int i10) {
        if (jVar instanceof JapaneseEra) {
            return JapaneseDate.ofYearDay((JapaneseEra) jVar, i9, i10);
        }
        throw new ClassCastException("Era must be JapaneseEra");
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate date(j jVar, int i9, int i10, int i11) {
        if (jVar instanceof JapaneseEra) {
            return JapaneseDate.of((JapaneseEra) jVar, i9, i10, i11);
        }
        throw new ClassCastException("Era must be JapaneseEra");
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate dateNow() {
        return (JapaneseDate) super.dateNow();
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate dateNow(ZoneId zoneId) {
        return (JapaneseDate) super.dateNow(zoneId);
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate dateNow(org.threeten.bp.a aVar) {
        jl.d.i(aVar, "clock");
        return (JapaneseDate) super.dateNow(aVar);
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate dateYearDay(int i9, int i10) {
        LocalDate ofYearDay = LocalDate.ofYearDay(i9, i10);
        return date(i9, ofYearDay.getMonthValue(), ofYearDay.getDayOfMonth());
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate date(int i9, int i10, int i11) {
        return new JapaneseDate(LocalDate.of(i9, i10, i11));
    }

    @Override // org.threeten.bp.chrono.i
    public JapaneseDate date(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof JapaneseDate) {
            return (JapaneseDate) cVar;
        }
        return new JapaneseDate(LocalDate.from(cVar));
    }
}
