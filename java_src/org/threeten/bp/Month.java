package org.threeten.bp;

import com.tencent.thumbplayer.core.common.TPCodecParamers;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import java.util.Locale;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.format.TextStyle;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
import org.threeten.bp.temporal.d;
import org.threeten.bp.temporal.g;
import org.threeten.bp.temporal.h;
import org.threeten.bp.temporal.i;
/* loaded from: classes7.dex */
public enum Month implements org.threeten.bp.temporal.c, d {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;
    
    public static final i<Month> FROM = new i<Month>() { // from class: org.threeten.bp.Month.a
        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public Month a(org.threeten.bp.temporal.c cVar) {
            return Month.from(cVar);
        }
    };
    private static final Month[] ENUMS = values();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56468a;

        static {
            int[] iArr = new int[Month.values().length];
            f56468a = iArr;
            try {
                iArr[Month.FEBRUARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56468a[Month.APRIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56468a[Month.JUNE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56468a[Month.SEPTEMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56468a[Month.NOVEMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56468a[Month.JANUARY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56468a[Month.MARCH.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f56468a[Month.MAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f56468a[Month.JULY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f56468a[Month.AUGUST.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f56468a[Month.OCTOBER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f56468a[Month.DECEMBER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static Month from(org.threeten.bp.temporal.c cVar) {
        if (cVar instanceof Month) {
            return (Month) cVar;
        }
        try {
            if (!IsoChronology.INSTANCE.equals(org.threeten.bp.chrono.i.from(cVar))) {
                cVar = LocalDate.from(cVar);
            }
            return of(cVar.get(ChronoField.MONTH_OF_YEAR));
        } catch (DateTimeException e10) {
            throw new DateTimeException("Unable to obtain Month from TemporalAccessor: " + cVar + ", type " + cVar.getClass().getName(), e10);
        }
    }

    public static Month of(int i9) {
        if (i9 >= 1 && i9 <= 12) {
            return ENUMS[i9 - 1];
        }
        throw new DateTimeException("Invalid value for MonthOfYear: " + i9);
    }

    @Override // org.threeten.bp.temporal.d
    public org.threeten.bp.temporal.b adjustInto(org.threeten.bp.temporal.b bVar) {
        if (org.threeten.bp.chrono.i.from(bVar).equals(IsoChronology.INSTANCE)) {
            return bVar.with(ChronoField.MONTH_OF_YEAR, getValue());
        }
        throw new DateTimeException("Adjustment only supported on ISO date-time");
    }

    public int firstDayOfYear(boolean z10) {
        switch (b.f56468a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z10 ? 1 : 0) + 91;
            case 3:
                return (z10 ? 1 : 0) + 152;
            case 4:
                return (z10 ? 1 : 0) + TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE;
            case 5:
                return (z10 ? 1 : 0) + 305;
            case 6:
                return 1;
            case 7:
                return (z10 ? 1 : 0) + 60;
            case 8:
                return (z10 ? 1 : 0) + 121;
            case 9:
                return (z10 ? 1 : 0) + 182;
            case 10:
                return (z10 ? 1 : 0) + TPNativePlayerInitConfig.BOOL_ENABLE_MEDIA_CODEC_REUSE;
            case 11:
                return (z10 ? 1 : 0) + 274;
            default:
                return (z10 ? 1 : 0) + 335;
        }
    }

    public Month firstMonthOfQuarter() {
        return ENUMS[(ordinal() / 3) * 3];
    }

    @Override // org.threeten.bp.temporal.c
    public int get(g gVar) {
        if (gVar == ChronoField.MONTH_OF_YEAR) {
            return getValue();
        }
        return range(gVar).checkValidIntValue(getLong(gVar), gVar);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        return new org.threeten.bp.format.c().k(ChronoField.MONTH_OF_YEAR, textStyle).w(locale).b(this);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(g gVar) {
        if (gVar == ChronoField.MONTH_OF_YEAR) {
            return getValue();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.getFrom(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }

    public int getValue() {
        return ordinal() + 1;
    }

    @Override // org.threeten.bp.temporal.c
    public boolean isSupported(g gVar) {
        return gVar instanceof ChronoField ? gVar == ChronoField.MONTH_OF_YEAR : gVar != null && gVar.isSupportedBy(this);
    }

    public int length(boolean z10) {
        int i9 = b.f56468a[ordinal()];
        return i9 != 1 ? (i9 == 2 || i9 == 3 || i9 == 4 || i9 == 5) ? 30 : 31 : z10 ? 29 : 28;
    }

    public int maxLength() {
        int i9 = b.f56468a[ordinal()];
        if (i9 != 1) {
            return (i9 == 2 || i9 == 3 || i9 == 4 || i9 == 5) ? 30 : 31;
        }
        return 29;
    }

    public int minLength() {
        int i9 = b.f56468a[ordinal()];
        if (i9 != 1) {
            return (i9 == 2 || i9 == 3 || i9 == 4 || i9 == 5) ? 30 : 31;
        }
        return 28;
    }

    public Month minus(long j10) {
        return plus(-(j10 % 12));
    }

    public Month plus(long j10) {
        return ENUMS[(ordinal() + (((int) (j10 % 12)) + 12)) % 12];
    }

    @Override // org.threeten.bp.temporal.c
    public <R> R query(i<R> iVar) {
        if (iVar == h.a()) {
            return (R) IsoChronology.INSTANCE;
        }
        if (iVar == h.e()) {
            return (R) ChronoUnit.MONTHS;
        }
        if (iVar == h.b() || iVar == h.c() || iVar == h.f() || iVar == h.g() || iVar == h.d()) {
            return null;
        }
        return iVar.a(this);
    }

    @Override // org.threeten.bp.temporal.c
    public ValueRange range(g gVar) {
        if (gVar == ChronoField.MONTH_OF_YEAR) {
            return gVar.range();
        }
        if (!(gVar instanceof ChronoField)) {
            return gVar.rangeRefinedBy(this);
        }
        throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
    }
}
