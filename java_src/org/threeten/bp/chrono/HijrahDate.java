package org.threeten.bp.chrono;

import com.tencent.imsdk.BaseConstants;
import java.io.BufferedReader;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.light.utils.IOUtils;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public final class HijrahDate extends org.threeten.bp.chrono.a<HijrahDate> {
    private static final Long[] ADJUSTED_CYCLES;
    private static final HashMap<Integer, Integer[]> ADJUSTED_CYCLE_YEARS;
    private static final Integer[] ADJUSTED_LEAST_MAX_VALUES;
    private static final Integer[] ADJUSTED_MAX_VALUES;
    private static final Integer[] ADJUSTED_MIN_VALUES;
    private static final HashMap<Integer, Integer[]> ADJUSTED_MONTH_DAYS;
    private static final HashMap<Integer, Integer[]> ADJUSTED_MONTH_LENGTHS;
    private static final String DEFAULT_CONFIG_FILENAME = "hijrah_deviation.cfg";
    private static final String DEFAULT_CONFIG_PATH;
    private static final Integer[] DEFAULT_CYCLE_YEARS;
    private static final Integer[] DEFAULT_LEAP_MONTH_DAYS;
    private static final Integer[] DEFAULT_LEAP_MONTH_LENGTHS;
    private static final Integer[] DEFAULT_MONTH_DAYS;
    private static final Integer[] DEFAULT_MONTH_LENGTHS;
    private static final char FILE_SEP;
    private static final int HIJRAH_JAN_1_1_GREGORIAN_DAY = -492148;
    private static final int MAX_ADJUSTED_CYCLE = 334;
    public static final int MIN_VALUE_OF_ERA = 1;
    private static final int[] NUM_DAYS;
    private static final String PATH_SEP;
    private static final int POSITION_DAY_OF_MONTH = 5;
    private static final int POSITION_DAY_OF_YEAR = 6;
    private static final long serialVersionUID = -5207853542612002020L;
    private final transient int dayOfMonth;
    private final transient DayOfWeek dayOfWeek;
    private final transient int dayOfYear;
    private final transient HijrahEra era;
    private final long gregorianEpochDay;
    private final transient boolean isLeapYear;
    private final transient int monthOfYear;
    private final transient int yearOfEra;
    private static final int[] LEAP_NUM_DAYS = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
    private static final int[] MONTH_LENGTH = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 29};
    private static final int[] LEAP_MONTH_LENGTH = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 30};
    private static final int[] MIN_VALUES = {0, 1, 0, 1, 0, 1, 1};
    public static final int MAX_VALUE_OF_ERA = 9999;
    private static final int[] LEAST_MAX_VALUES = {1, MAX_VALUE_OF_ERA, 11, 51, 5, 29, 354};
    private static final int[] MAX_VALUES = {1, MAX_VALUE_OF_ERA, 11, 52, 6, 30, 355};
    private static final int[] CYCLEYEAR_START_DATE = {0, 354, 709, 1063, 1417, 1772, 2126, 2481, 2835, 3189, 3544, 3898, 4252, 4607, 4961, 5315, 5670, BaseConstants.ERR_TLSSDK_NOT_INITIALIZED, 6379, 6733, 7087, 7442, 7796, 8150, BaseConstants.ERR_SDK_GROUP_INVALID_FACE_URL, 8859, 9214, 9568, 9922, 10277};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56485a;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f56485a = iArr;
            try {
                iArr[ChronoField.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56485a[ChronoField.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56485a[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56485a[ChronoField.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f56485a[ChronoField.DAY_OF_WEEK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f56485a[ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f56485a[ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f56485a[ChronoField.EPOCH_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f56485a[ChronoField.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f56485a[ChronoField.MONTH_OF_YEAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f56485a[ChronoField.YEAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f56485a[ChronoField.ERA.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
        int[] iArr = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
        NUM_DAYS = iArr;
        char c10 = File.separatorChar;
        FILE_SEP = c10;
        PATH_SEP = File.pathSeparator;
        DEFAULT_CONFIG_PATH = "org" + c10 + "threeten" + c10 + "bp" + c10 + "chrono";
        ADJUSTED_MONTH_DAYS = new HashMap<>();
        ADJUSTED_MONTH_LENGTHS = new HashMap<>();
        ADJUSTED_CYCLE_YEARS = new HashMap<>();
        DEFAULT_MONTH_DAYS = new Integer[iArr.length];
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int[] iArr2 = NUM_DAYS;
            if (i10 >= iArr2.length) {
                break;
            }
            DEFAULT_MONTH_DAYS[i10] = Integer.valueOf(iArr2[i10]);
            i10++;
        }
        DEFAULT_LEAP_MONTH_DAYS = new Integer[LEAP_NUM_DAYS.length];
        int i11 = 0;
        while (true) {
            int[] iArr3 = LEAP_NUM_DAYS;
            if (i11 >= iArr3.length) {
                break;
            }
            DEFAULT_LEAP_MONTH_DAYS[i11] = Integer.valueOf(iArr3[i11]);
            i11++;
        }
        DEFAULT_MONTH_LENGTHS = new Integer[MONTH_LENGTH.length];
        int i12 = 0;
        while (true) {
            int[] iArr4 = MONTH_LENGTH;
            if (i12 >= iArr4.length) {
                break;
            }
            DEFAULT_MONTH_LENGTHS[i12] = Integer.valueOf(iArr4[i12]);
            i12++;
        }
        DEFAULT_LEAP_MONTH_LENGTHS = new Integer[LEAP_MONTH_LENGTH.length];
        int i13 = 0;
        while (true) {
            int[] iArr5 = LEAP_MONTH_LENGTH;
            if (i13 >= iArr5.length) {
                break;
            }
            DEFAULT_LEAP_MONTH_LENGTHS[i13] = Integer.valueOf(iArr5[i13]);
            i13++;
        }
        DEFAULT_CYCLE_YEARS = new Integer[CYCLEYEAR_START_DATE.length];
        int i14 = 0;
        while (true) {
            int[] iArr6 = CYCLEYEAR_START_DATE;
            if (i14 >= iArr6.length) {
                break;
            }
            DEFAULT_CYCLE_YEARS[i14] = Integer.valueOf(iArr6[i14]);
            i14++;
        }
        ADJUSTED_CYCLES = new Long[MAX_ADJUSTED_CYCLE];
        int i15 = 0;
        while (true) {
            Long[] lArr = ADJUSTED_CYCLES;
            if (i15 >= lArr.length) {
                break;
            }
            lArr[i15] = Long.valueOf(i15 * 10631);
            i15++;
        }
        ADJUSTED_MIN_VALUES = new Integer[MIN_VALUES.length];
        int i16 = 0;
        while (true) {
            int[] iArr7 = MIN_VALUES;
            if (i16 >= iArr7.length) {
                break;
            }
            ADJUSTED_MIN_VALUES[i16] = Integer.valueOf(iArr7[i16]);
            i16++;
        }
        ADJUSTED_LEAST_MAX_VALUES = new Integer[LEAST_MAX_VALUES.length];
        int i17 = 0;
        while (true) {
            int[] iArr8 = LEAST_MAX_VALUES;
            if (i17 >= iArr8.length) {
                break;
            }
            ADJUSTED_LEAST_MAX_VALUES[i17] = Integer.valueOf(iArr8[i17]);
            i17++;
        }
        ADJUSTED_MAX_VALUES = new Integer[MAX_VALUES.length];
        while (true) {
            int[] iArr9 = MAX_VALUES;
            if (i9 < iArr9.length) {
                ADJUSTED_MAX_VALUES[i9] = Integer.valueOf(iArr9[i9]);
                i9++;
            } else {
                try {
                    readDeviationConfig();
                    return;
                } catch (IOException | ParseException unused) {
                    return;
                }
            }
        }
    }

    private HijrahDate(long j10) {
        int[] hijrahDateInfo = getHijrahDateInfo(j10);
        checkValidYearOfEra(hijrahDateInfo[1]);
        checkValidMonth(hijrahDateInfo[2]);
        checkValidDayOfMonth(hijrahDateInfo[3]);
        checkValidDayOfYear(hijrahDateInfo[4]);
        this.era = HijrahEra.of(hijrahDateInfo[0]);
        int i9 = hijrahDateInfo[1];
        this.yearOfEra = i9;
        this.monthOfYear = hijrahDateInfo[2];
        this.dayOfMonth = hijrahDateInfo[3];
        this.dayOfYear = hijrahDateInfo[4];
        this.dayOfWeek = DayOfWeek.of(hijrahDateInfo[5]);
        this.gregorianEpochDay = j10;
        this.isLeapYear = isLeapYear(i9);
    }

    private static void addDeviationAsHijrah(int i9, int i10, int i11, int i12, int i13) {
        if (i9 < 1) {
            throw new IllegalArgumentException("startYear < 1");
        }
        if (i11 < 1) {
            throw new IllegalArgumentException("endYear < 1");
        }
        if (i10 < 0 || i10 > 11) {
            throw new IllegalArgumentException("startMonth < 0 || startMonth > 11");
        }
        if (i12 < 0 || i12 > 11) {
            throw new IllegalArgumentException("endMonth < 0 || endMonth > 11");
        }
        if (i11 > 9999) {
            throw new IllegalArgumentException("endYear > 9999");
        }
        if (i11 < i9) {
            throw new IllegalArgumentException("startYear > endYear");
        }
        if (i11 == i9 && i12 < i10) {
            throw new IllegalArgumentException("startYear == endYear && endMonth < startMonth");
        }
        boolean isLeapYear = isLeapYear(i9);
        Integer[] numArr = ADJUSTED_MONTH_DAYS.get(Integer.valueOf(i9));
        if (numArr == null) {
            if (isLeapYear) {
                numArr = new Integer[LEAP_NUM_DAYS.length];
                int i14 = 0;
                while (true) {
                    int[] iArr = LEAP_NUM_DAYS;
                    if (i14 >= iArr.length) {
                        break;
                    }
                    numArr[i14] = Integer.valueOf(iArr[i14]);
                    i14++;
                }
            } else {
                numArr = new Integer[NUM_DAYS.length];
                int i15 = 0;
                while (true) {
                    int[] iArr2 = NUM_DAYS;
                    if (i15 >= iArr2.length) {
                        break;
                    }
                    numArr[i15] = Integer.valueOf(iArr2[i15]);
                    i15++;
                }
            }
        }
        Integer[] numArr2 = new Integer[numArr.length];
        for (int i16 = 0; i16 < 12; i16++) {
            if (i16 > i10) {
                numArr2[i16] = Integer.valueOf(numArr[i16].intValue() - i13);
            } else {
                numArr2[i16] = Integer.valueOf(numArr[i16].intValue());
            }
        }
        ADJUSTED_MONTH_DAYS.put(Integer.valueOf(i9), numArr2);
        Integer[] numArr3 = ADJUSTED_MONTH_LENGTHS.get(Integer.valueOf(i9));
        if (numArr3 == null) {
            if (isLeapYear) {
                numArr3 = new Integer[LEAP_MONTH_LENGTH.length];
                int i17 = 0;
                while (true) {
                    int[] iArr3 = LEAP_MONTH_LENGTH;
                    if (i17 >= iArr3.length) {
                        break;
                    }
                    numArr3[i17] = Integer.valueOf(iArr3[i17]);
                    i17++;
                }
            } else {
                numArr3 = new Integer[MONTH_LENGTH.length];
                int i18 = 0;
                while (true) {
                    int[] iArr4 = MONTH_LENGTH;
                    if (i18 >= iArr4.length) {
                        break;
                    }
                    numArr3[i18] = Integer.valueOf(iArr4[i18]);
                    i18++;
                }
            }
        }
        Integer[] numArr4 = new Integer[numArr3.length];
        for (int i19 = 0; i19 < 12; i19++) {
            if (i19 == i10) {
                numArr4[i19] = Integer.valueOf(numArr3[i19].intValue() - i13);
            } else {
                numArr4[i19] = Integer.valueOf(numArr3[i19].intValue());
            }
        }
        ADJUSTED_MONTH_LENGTHS.put(Integer.valueOf(i9), numArr4);
        if (i9 != i11) {
            int i20 = i9 - 1;
            int i21 = i20 / 30;
            int i22 = i20 % 30;
            Integer[] numArr5 = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i21));
            if (numArr5 == null) {
                int length = CYCLEYEAR_START_DATE.length;
                Integer[] numArr6 = new Integer[length];
                for (int i23 = 0; i23 < length; i23++) {
                    numArr6[i23] = Integer.valueOf(CYCLEYEAR_START_DATE[i23]);
                }
                numArr5 = numArr6;
            }
            for (int i24 = i22 + 1; i24 < CYCLEYEAR_START_DATE.length; i24++) {
                numArr5[i24] = Integer.valueOf(numArr5[i24].intValue() - i13);
            }
            ADJUSTED_CYCLE_YEARS.put(Integer.valueOf(i21), numArr5);
            int i25 = i11 - 1;
            int i26 = i25 / 30;
            if (i21 != i26) {
                int i27 = i21 + 1;
                while (true) {
                    Long[] lArr = ADJUSTED_CYCLES;
                    if (i27 >= lArr.length) {
                        break;
                    }
                    lArr[i27] = Long.valueOf(lArr[i27].longValue() - i13);
                    i27++;
                }
                int i28 = i26 + 1;
                while (true) {
                    Long[] lArr2 = ADJUSTED_CYCLES;
                    if (i28 >= lArr2.length) {
                        break;
                    }
                    lArr2[i28] = Long.valueOf(lArr2[i28].longValue() + i13);
                    i28++;
                    i26 = i26;
                }
            }
            int i29 = i26;
            int i30 = i25 % 30;
            Integer[] numArr7 = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i29));
            if (numArr7 == null) {
                int length2 = CYCLEYEAR_START_DATE.length;
                Integer[] numArr8 = new Integer[length2];
                for (int i31 = 0; i31 < length2; i31++) {
                    numArr8[i31] = Integer.valueOf(CYCLEYEAR_START_DATE[i31]);
                }
                numArr7 = numArr8;
            }
            for (int i32 = i30 + 1; i32 < CYCLEYEAR_START_DATE.length; i32++) {
                numArr7[i32] = Integer.valueOf(numArr7[i32].intValue() + i13);
            }
            ADJUSTED_CYCLE_YEARS.put(Integer.valueOf(i29), numArr7);
        }
        boolean isLeapYear2 = isLeapYear(i11);
        Integer[] numArr9 = ADJUSTED_MONTH_DAYS.get(Integer.valueOf(i11));
        if (numArr9 == null) {
            if (isLeapYear2) {
                numArr9 = new Integer[LEAP_NUM_DAYS.length];
                int i33 = 0;
                while (true) {
                    int[] iArr5 = LEAP_NUM_DAYS;
                    if (i33 >= iArr5.length) {
                        break;
                    }
                    numArr9[i33] = Integer.valueOf(iArr5[i33]);
                    i33++;
                }
            } else {
                numArr9 = new Integer[NUM_DAYS.length];
                int i34 = 0;
                while (true) {
                    int[] iArr6 = NUM_DAYS;
                    if (i34 >= iArr6.length) {
                        break;
                    }
                    numArr9[i34] = Integer.valueOf(iArr6[i34]);
                    i34++;
                }
            }
        }
        Integer[] numArr10 = new Integer[numArr9.length];
        for (int i35 = 0; i35 < 12; i35++) {
            if (i35 > i12) {
                numArr10[i35] = Integer.valueOf(numArr9[i35].intValue() + i13);
            } else {
                numArr10[i35] = Integer.valueOf(numArr9[i35].intValue());
            }
        }
        ADJUSTED_MONTH_DAYS.put(Integer.valueOf(i11), numArr10);
        Integer[] numArr11 = ADJUSTED_MONTH_LENGTHS.get(Integer.valueOf(i11));
        if (numArr11 == null) {
            if (isLeapYear2) {
                numArr11 = new Integer[LEAP_MONTH_LENGTH.length];
                int i36 = 0;
                while (true) {
                    int[] iArr7 = LEAP_MONTH_LENGTH;
                    if (i36 >= iArr7.length) {
                        break;
                    }
                    numArr11[i36] = Integer.valueOf(iArr7[i36]);
                    i36++;
                }
            } else {
                numArr11 = new Integer[MONTH_LENGTH.length];
                int i37 = 0;
                while (true) {
                    int[] iArr8 = MONTH_LENGTH;
                    if (i37 >= iArr8.length) {
                        break;
                    }
                    numArr11[i37] = Integer.valueOf(iArr8[i37]);
                    i37++;
                }
            }
        }
        Integer[] numArr12 = new Integer[numArr11.length];
        for (int i38 = 0; i38 < 12; i38++) {
            if (i38 == i12) {
                numArr12[i38] = Integer.valueOf(numArr11[i38].intValue() + i13);
            } else {
                numArr12[i38] = Integer.valueOf(numArr11[i38].intValue());
            }
        }
        HashMap<Integer, Integer[]> hashMap = ADJUSTED_MONTH_LENGTHS;
        hashMap.put(Integer.valueOf(i11), numArr12);
        Integer[] numArr13 = hashMap.get(Integer.valueOf(i9));
        Integer[] numArr14 = hashMap.get(Integer.valueOf(i11));
        HashMap<Integer, Integer[]> hashMap2 = ADJUSTED_MONTH_DAYS;
        int intValue = numArr13[i10].intValue();
        int intValue2 = numArr14[i12].intValue();
        int intValue3 = hashMap2.get(Integer.valueOf(i9))[11].intValue() + numArr13[11].intValue();
        int intValue4 = hashMap2.get(Integer.valueOf(i11))[11].intValue() + numArr14[11].intValue();
        Integer[] numArr15 = ADJUSTED_MAX_VALUES;
        int intValue5 = numArr15[5].intValue();
        Integer[] numArr16 = ADJUSTED_LEAST_MAX_VALUES;
        int intValue6 = numArr16[5].intValue();
        if (intValue5 < intValue) {
            intValue5 = intValue;
        }
        if (intValue5 < intValue2) {
            intValue5 = intValue2;
        }
        numArr15[5] = Integer.valueOf(intValue5);
        if (intValue6 <= intValue) {
            intValue = intValue6;
        }
        if (intValue <= intValue2) {
            intValue2 = intValue;
        }
        numArr16[5] = Integer.valueOf(intValue2);
        int intValue7 = numArr15[6].intValue();
        int intValue8 = numArr16[6].intValue();
        if (intValue7 < intValue3) {
            intValue7 = intValue3;
        }
        if (intValue7 < intValue4) {
            intValue7 = intValue4;
        }
        numArr15[6] = Integer.valueOf(intValue7);
        if (intValue8 <= intValue3) {
            intValue3 = intValue8;
        }
        if (intValue3 <= intValue4) {
            intValue4 = intValue3;
        }
        numArr16[6] = Integer.valueOf(intValue4);
    }

    private static void checkValidDayOfMonth(int i9) {
        if (i9 < 1 || i9 > getMaximumDayOfMonth()) {
            throw new DateTimeException("Invalid day of month of Hijrah date, day " + i9 + " greater than " + getMaximumDayOfMonth() + " or less than 1");
        }
    }

    private static void checkValidDayOfYear(int i9) {
        if (i9 < 1 || i9 > getMaximumDayOfYear()) {
            throw new DateTimeException("Invalid day of year of Hijrah date");
        }
    }

    private static void checkValidMonth(int i9) {
        if (i9 < 1 || i9 > 12) {
            throw new DateTimeException("Invalid month of Hijrah date");
        }
    }

    private static void checkValidYearOfEra(int i9) {
        if (i9 < 1 || i9 > 9999) {
            throw new DateTimeException("Invalid year of Hijrah Era");
        }
    }

    public static HijrahDate from(org.threeten.bp.temporal.c cVar) {
        return HijrahChronology.INSTANCE.date(cVar);
    }

    private static Integer[] getAdjustedCycle(int i9) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i9));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        return numArr == null ? DEFAULT_CYCLE_YEARS : numArr;
    }

    private static Integer[] getAdjustedMonthDays(int i9) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_MONTH_DAYS.get(Integer.valueOf(i9));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        if (numArr == null) {
            if (isLeapYear(i9)) {
                return DEFAULT_LEAP_MONTH_DAYS;
            }
            return DEFAULT_MONTH_DAYS;
        }
        return numArr;
    }

    private static Integer[] getAdjustedMonthLength(int i9) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_MONTH_LENGTHS.get(Integer.valueOf(i9));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        if (numArr == null) {
            if (isLeapYear(i9)) {
                return DEFAULT_LEAP_MONTH_LENGTHS;
            }
            return DEFAULT_MONTH_LENGTHS;
        }
        return numArr;
    }

    private static InputStream getConfigFileInputStream() throws IOException {
        ZipFile zipFile;
        String property = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigFile");
        if (property == null) {
            property = DEFAULT_CONFIG_FILENAME;
        }
        String property2 = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigDir");
        if (property2 != null) {
            if (property2.length() != 0 || !property2.endsWith(System.getProperty("file.separator"))) {
                property2 = property2 + System.getProperty("file.separator");
            }
            File file = new File(property2 + FILE_SEP + property);
            if (file.exists()) {
                try {
                    return new FileInputStream(file);
                } catch (IOException e10) {
                    throw e10;
                }
            }
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(System.getProperty("java.class.path"), PATH_SEP);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            File file2 = new File(nextToken);
            if (file2.exists()) {
                if (file2.isDirectory()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(nextToken);
                    char c10 = FILE_SEP;
                    sb2.append(c10);
                    String str = DEFAULT_CONFIG_PATH;
                    sb2.append(str);
                    if (new File(sb2.toString(), property).exists()) {
                        try {
                            return new FileInputStream(nextToken + c10 + str + c10 + property);
                        } catch (IOException e11) {
                            throw e11;
                        }
                    }
                } else {
                    try {
                        zipFile = new ZipFile(file2);
                    } catch (IOException unused) {
                        zipFile = null;
                    }
                    if (zipFile != null) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(DEFAULT_CONFIG_PATH);
                        char c11 = FILE_SEP;
                        sb3.append(c11);
                        sb3.append(property);
                        String sb4 = sb3.toString();
                        ZipEntry entry = zipFile.getEntry(sb4);
                        if (entry == null) {
                            if (c11 == '/') {
                                sb4 = sb4.replace(IOUtils.DIR_SEPARATOR_UNIX, IOUtils.DIR_SEPARATOR_WINDOWS);
                            } else if (c11 == '\\') {
                                sb4 = sb4.replace(IOUtils.DIR_SEPARATOR_WINDOWS, IOUtils.DIR_SEPARATOR_UNIX);
                            }
                            entry = zipFile.getEntry(sb4);
                        }
                        if (entry != null) {
                            try {
                                return zipFile.getInputStream(entry);
                            } catch (IOException e12) {
                                throw e12;
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    private static int getCycleNumber(long j10) {
        Long[] lArr = ADJUSTED_CYCLES;
        for (int i9 = 0; i9 < lArr.length; i9++) {
            try {
                if (j10 < lArr[i9].longValue()) {
                    return i9 - 1;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                return ((int) j10) / 10631;
            }
        }
        return ((int) j10) / 10631;
    }

    private static int getDayOfCycle(long j10, int i9) {
        Long l10;
        try {
            l10 = ADJUSTED_CYCLES[i9];
        } catch (ArrayIndexOutOfBoundsException unused) {
            l10 = null;
        }
        if (l10 == null) {
            l10 = Long.valueOf(i9 * 10631);
        }
        return (int) (j10 - l10.longValue());
    }

    private static int getDayOfMonth(int i9, int i10, int i11) {
        int intValue;
        Integer[] adjustedMonthDays = getAdjustedMonthDays(i11);
        if (i9 < 0) {
            i9 = isLeapYear((long) i11) ? i9 + 355 : i9 + 354;
            if (i10 <= 0) {
                return i9;
            }
            intValue = adjustedMonthDays[i10].intValue();
        } else if (i10 <= 0) {
            return i9;
        } else {
            intValue = adjustedMonthDays[i10].intValue();
        }
        return i9 - intValue;
    }

    private static int getDayOfYear(int i9, int i10, int i11) {
        Integer[] adjustedCycle = getAdjustedCycle(i9);
        if (i10 > 0) {
            return i10 - adjustedCycle[i11].intValue();
        }
        return adjustedCycle[i11].intValue() + i10;
    }

    private static long getGregorianEpochDay(int i9, int i10, int i11) {
        return yearToGregorianEpochDay(i9) + getMonthDays(i10 - 1, i9) + i11;
    }

    private static int[] getHijrahDateInfo(long j10) {
        int monthOfYear;
        int dayOfMonth;
        int value;
        int i9;
        int i10;
        long j11 = j10 - (-492148);
        if (j11 >= 0) {
            int cycleNumber = getCycleNumber(j11);
            int dayOfCycle = getDayOfCycle(j11, cycleNumber);
            int yearInCycle = getYearInCycle(cycleNumber, dayOfCycle);
            i9 = getDayOfYear(cycleNumber, dayOfCycle, yearInCycle);
            i10 = (cycleNumber * 30) + yearInCycle + 1;
            monthOfYear = getMonthOfYear(i9, i10);
            dayOfMonth = getDayOfMonth(i9, monthOfYear, i10) + 1;
            value = HijrahEra.AH.getValue();
        } else {
            int i11 = (int) j11;
            int i12 = i11 / 10631;
            int i13 = i11 % 10631;
            if (i13 == 0) {
                i13 = -10631;
                i12++;
            }
            int yearInCycle2 = getYearInCycle(i12, i13);
            int dayOfYear = getDayOfYear(i12, i13, yearInCycle2);
            int i14 = 1 - ((i12 * 30) - yearInCycle2);
            int i15 = isLeapYear((long) i14) ? dayOfYear + 355 : dayOfYear + 354;
            monthOfYear = getMonthOfYear(i15, i14);
            dayOfMonth = getDayOfMonth(i15, monthOfYear, i14) + 1;
            value = HijrahEra.BEFORE_AH.getValue();
            i9 = i15;
            i10 = i14;
        }
        int i16 = (int) ((j11 + 5) % 7);
        return new int[]{value, i10, monthOfYear + 1, dayOfMonth, i9 + 1, i16 + (i16 <= 0 ? 7 : 0)};
    }

    static int getMaximumDayOfMonth() {
        return ADJUSTED_MAX_VALUES[5].intValue();
    }

    static int getMaximumDayOfYear() {
        return ADJUSTED_MAX_VALUES[6].intValue();
    }

    private static int getMonthDays(int i9, int i10) {
        return getAdjustedMonthDays(i10)[i9].intValue();
    }

    static int getMonthLength(int i9, int i10) {
        return getAdjustedMonthLength(i10)[i9].intValue();
    }

    private static int getMonthOfYear(int i9, int i10) {
        Integer[] adjustedMonthDays = getAdjustedMonthDays(i10);
        int i11 = 0;
        if (i9 >= 0) {
            while (i11 < adjustedMonthDays.length) {
                if (i9 < adjustedMonthDays[i11].intValue()) {
                    return i11 - 1;
                }
                i11++;
            }
            return 11;
        }
        int i12 = isLeapYear((long) i10) ? i9 + 355 : i9 + 354;
        while (i11 < adjustedMonthDays.length) {
            if (i12 < adjustedMonthDays[i11].intValue()) {
                return i11 - 1;
            }
            i11++;
        }
        return 11;
    }

    static int getSmallestMaximumDayOfMonth() {
        return ADJUSTED_LEAST_MAX_VALUES[5].intValue();
    }

    static int getSmallestMaximumDayOfYear() {
        return ADJUSTED_LEAST_MAX_VALUES[6].intValue();
    }

    private static int getYearInCycle(int i9, long j10) {
        Integer[] adjustedCycle = getAdjustedCycle(i9);
        int i10 = 0;
        int i11 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i11 == 0) {
            return 0;
        }
        if (i11 > 0) {
            while (i10 < adjustedCycle.length) {
                if (j10 < adjustedCycle[i10].intValue()) {
                    return i10 - 1;
                }
                i10++;
            }
            return 29;
        }
        long j11 = -j10;
        while (i10 < adjustedCycle.length) {
            if (j11 <= adjustedCycle[i10].intValue()) {
                return i10 - 1;
            }
            i10++;
        }
        return 29;
    }

    static int getYearLength(int i9) {
        Integer[] numArr;
        int i10 = i9 - 1;
        int i11 = i10 / 30;
        try {
            numArr = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i11));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        if (numArr == null) {
            return isLeapYear((long) i9) ? 355 : 354;
        }
        int i12 = i10 % 30;
        if (i12 == 29) {
            Long[] lArr = ADJUSTED_CYCLES;
            return (lArr[i11 + 1].intValue() - lArr[i11].intValue()) - numArr[i12].intValue();
        }
        return numArr[i12 + 1].intValue() - numArr[i12].intValue();
    }

    public static HijrahDate now() {
        return now(org.threeten.bp.a.d());
    }

    public static HijrahDate of(int i9, int i10, int i11) {
        if (i9 >= 1) {
            return of(HijrahEra.AH, i9, i10, i11);
        }
        return of(HijrahEra.BEFORE_AH, 1 - i9, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HijrahDate ofEpochDay(long j10) {
        return new HijrahDate(j10);
    }

    private static void parseLine(String str, int i9) throws ParseException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ";");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(58);
            if (indexOf != -1) {
                try {
                    int parseInt = Integer.parseInt(nextToken.substring(indexOf + 1, nextToken.length()));
                    int indexOf2 = nextToken.indexOf(45);
                    if (indexOf2 != -1) {
                        String substring = nextToken.substring(0, indexOf2);
                        String substring2 = nextToken.substring(indexOf2 + 1, indexOf);
                        int indexOf3 = substring.indexOf(47);
                        int indexOf4 = substring2.indexOf(47);
                        if (indexOf3 != -1) {
                            String substring3 = substring.substring(0, indexOf3);
                            String substring4 = substring.substring(indexOf3 + 1, substring.length());
                            try {
                                int parseInt2 = Integer.parseInt(substring3);
                                try {
                                    int parseInt3 = Integer.parseInt(substring4);
                                    if (indexOf4 != -1) {
                                        String substring5 = substring2.substring(0, indexOf4);
                                        String substring6 = substring2.substring(indexOf4 + 1, substring2.length());
                                        try {
                                            int parseInt4 = Integer.parseInt(substring5);
                                            try {
                                                int parseInt5 = Integer.parseInt(substring6);
                                                if (parseInt2 != -1 && parseInt3 != -1 && parseInt4 != -1 && parseInt5 != -1) {
                                                    addDeviationAsHijrah(parseInt2, parseInt3, parseInt4, parseInt5, parseInt);
                                                } else {
                                                    throw new ParseException("Unknown error at line " + i9 + ".", i9);
                                                }
                                            } catch (NumberFormatException unused) {
                                                throw new ParseException("End month is not properly set at line " + i9 + ".", i9);
                                            }
                                        } catch (NumberFormatException unused2) {
                                            throw new ParseException("End year is not properly set at line " + i9 + ".", i9);
                                        }
                                    } else {
                                        throw new ParseException("End year/month has incorrect format at line " + i9 + ".", i9);
                                    }
                                } catch (NumberFormatException unused3) {
                                    throw new ParseException("Start month is not properly set at line " + i9 + ".", i9);
                                }
                            } catch (NumberFormatException unused4) {
                                throw new ParseException("Start year is not properly set at line " + i9 + ".", i9);
                            }
                        } else {
                            throw new ParseException("Start year/month has incorrect format at line " + i9 + ".", i9);
                        }
                    } else {
                        throw new ParseException("Start and end year/month has incorrect format at line " + i9 + ".", i9);
                    }
                } catch (NumberFormatException unused5) {
                    throw new ParseException("Offset is not properly set at line " + i9 + ".", i9);
                }
            } else {
                throw new ParseException("Offset has incorrect format at line " + i9 + ".", i9);
            }
        }
    }

    private static void readDeviationConfig() throws IOException, ParseException {
        InputStream configFileInputStream = getConfigFileInputStream();
        if (configFileInputStream == null) {
            return;
        }
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(configFileInputStream));
            int i9 = 0;
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine != null) {
                        i9++;
                        parseLine(readLine.trim(), i9);
                    } else {
                        bufferedReader2.close();
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b readExternal(DataInput dataInput) throws IOException {
        return HijrahChronology.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private Object readResolve() {
        return new HijrahDate(this.gregorianEpochDay);
    }

    private static HijrahDate resolvePreviousValid(int i9, int i10, int i11) {
        int monthDays = getMonthDays(i10 - 1, i9);
        if (i11 > monthDays) {
            i11 = monthDays;
        }
        return of(i9, i10, i11);
    }

    private Object writeReplace() {
        return new k((byte) 3, this);
    }

    private static long yearToGregorianEpochDay(int i9) {
        Long l10;
        int i10 = i9 - 1;
        int i11 = i10 / 30;
        int i12 = i10 % 30;
        int intValue = getAdjustedCycle(i11)[Math.abs(i12)].intValue();
        if (i12 < 0) {
            intValue = -intValue;
        }
        try {
            l10 = ADJUSTED_CYCLES[i11];
        } catch (ArrayIndexOutOfBoundsException unused) {
            l10 = null;
        }
        if (l10 == null) {
            l10 = Long.valueOf(i11 * 10631);
        }
        return ((l10.longValue() + intValue) - 492148) - 1;
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public final c<HijrahDate> atTime(LocalTime localTime) {
        return super.atTime(localTime);
    }

    @Override // org.threeten.bp.temporal.c
    public long getLong(org.threeten.bp.temporal.g gVar) {
        int i9;
        int i10;
        if (gVar instanceof ChronoField) {
            switch (a.f56485a[((ChronoField) gVar).ordinal()]) {
                case 1:
                    i9 = this.dayOfMonth;
                    break;
                case 2:
                    i9 = this.dayOfYear;
                    break;
                case 3:
                    i10 = (this.dayOfMonth - 1) / 7;
                    i9 = i10 + 1;
                    break;
                case 4:
                    i9 = this.yearOfEra;
                    break;
                case 5:
                    i9 = this.dayOfWeek.getValue();
                    break;
                case 6:
                    i10 = (this.dayOfMonth - 1) % 7;
                    i9 = i10 + 1;
                    break;
                case 7:
                    i10 = (this.dayOfYear - 1) % 7;
                    i9 = i10 + 1;
                    break;
                case 8:
                    return toEpochDay();
                case 9:
                    i10 = (this.dayOfYear - 1) / 7;
                    i9 = i10 + 1;
                    break;
                case 10:
                    i9 = this.monthOfYear;
                    break;
                case 11:
                    i9 = this.yearOfEra;
                    break;
                case 12:
                    i9 = this.era.getValue();
                    break;
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            }
            return i9;
        }
        return gVar.getFrom(this);
    }

    @Override // org.threeten.bp.chrono.b
    public boolean isLeapYear() {
        return this.isLeapYear;
    }

    @Override // org.threeten.bp.chrono.b
    public int lengthOfMonth() {
        return getMonthLength(this.monthOfYear - 1, this.yearOfEra);
    }

    @Override // org.threeten.bp.chrono.b
    public int lengthOfYear() {
        return getYearLength(this.yearOfEra);
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        if (gVar instanceof ChronoField) {
            if (isSupported(gVar)) {
                ChronoField chronoField = (ChronoField) gVar;
                int i9 = a.f56485a[chronoField.ordinal()];
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            if (i9 != 4) {
                                return getChronology().range(chronoField);
                            }
                            return ValueRange.of(1L, 1000L);
                        }
                        return ValueRange.of(1L, 5L);
                    }
                    return ValueRange.of(1L, lengthOfYear());
                }
                return ValueRange.of(1L, lengthOfMonth());
            }
            throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
        }
        return gVar.rangeRefinedBy(this);
    }

    @Override // org.threeten.bp.chrono.b
    public long toEpochDay() {
        return getGregorianEpochDay(this.yearOfEra, this.monthOfYear, this.dayOfMonth);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLeapYear(long j10) {
        if (j10 <= 0) {
            j10 = -j10;
        }
        return ((j10 * 11) + 14) % 30 < 11;
    }

    public static HijrahDate now(ZoneId zoneId) {
        return now(org.threeten.bp.a.c(zoneId));
    }

    @Override // org.threeten.bp.chrono.b
    public HijrahChronology getChronology() {
        return HijrahChronology.INSTANCE;
    }

    @Override // org.threeten.bp.chrono.b
    public HijrahEra getEra() {
        return this.era;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusDays */
    public org.threeten.bp.chrono.a<HijrahDate> plusDays2(long j10) {
        return new HijrahDate(this.gregorianEpochDay + j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusMonths */
    public org.threeten.bp.chrono.a<HijrahDate> plusMonths2(long j10) {
        if (j10 == 0) {
            return this;
        }
        int i9 = (this.monthOfYear - 1) + ((int) j10);
        int i10 = i9 / 12;
        int i11 = i9 % 12;
        while (i11 < 0) {
            i11 += 12;
            i10 = jl.d.o(i10, 1);
        }
        return of(this.era, jl.d.j(this.yearOfEra, i10), i11 + 1, this.dayOfMonth);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.chrono.a
    /* renamed from: plusYears */
    public org.threeten.bp.chrono.a<HijrahDate> plusYears2(long j10) {
        if (j10 == 0) {
            return this;
        }
        return of(this.era, jl.d.j(this.yearOfEra, (int) j10), this.monthOfYear, this.dayOfMonth);
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b
    public /* bridge */ /* synthetic */ e until(b bVar) {
        return super.until(bVar);
    }

    public static HijrahDate now(org.threeten.bp.a aVar) {
        return HijrahChronology.INSTANCE.dateNow(aVar);
    }

    static HijrahDate of(HijrahEra hijrahEra, int i9, int i10, int i11) {
        jl.d.i(hijrahEra, "era");
        checkValidYearOfEra(i9);
        checkValidMonth(i10);
        checkValidDayOfMonth(i11);
        return new HijrahDate(getGregorianEpochDay(hijrahEra.prolepticYear(i9), i10, i11));
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public HijrahDate minus(org.threeten.bp.temporal.f fVar) {
        return (HijrahDate) super.minus(fVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public HijrahDate with(org.threeten.bp.temporal.d dVar) {
        return (HijrahDate) super.with(dVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b, org.threeten.bp.temporal.b
    public HijrahDate minus(long j10, org.threeten.bp.temporal.j jVar) {
        return (HijrahDate) super.minus(j10, jVar);
    }

    @Override // org.threeten.bp.chrono.b, jl.b
    public HijrahDate plus(org.threeten.bp.temporal.f fVar) {
        return (HijrahDate) super.plus(fVar);
    }

    /* JADX WARN: Type inference failed for: r6v14, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v16, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v18, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v21, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v8, types: [org.threeten.bp.chrono.HijrahDate] */
    @Override // org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public HijrahDate with(org.threeten.bp.temporal.g gVar, long j10) {
        if (gVar instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) gVar;
            chronoField.checkValidValue(j10);
            int i9 = (int) j10;
            switch (a.f56485a[chronoField.ordinal()]) {
                case 1:
                    return resolvePreviousValid(this.yearOfEra, this.monthOfYear, i9);
                case 2:
                    int i10 = i9 - 1;
                    return resolvePreviousValid(this.yearOfEra, (i10 / 30) + 1, (i10 % 30) + 1);
                case 3:
                    return plusDays2((j10 - getLong(ChronoField.ALIGNED_WEEK_OF_MONTH)) * 7);
                case 4:
                    if (this.yearOfEra < 1) {
                        i9 = 1 - i9;
                    }
                    return resolvePreviousValid(i9, this.monthOfYear, this.dayOfMonth);
                case 5:
                    return plusDays2(j10 - this.dayOfWeek.getValue());
                case 6:
                    return plusDays2(j10 - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return plusDays2(j10 - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return new HijrahDate(i9);
                case 9:
                    return plusDays2((j10 - getLong(ChronoField.ALIGNED_WEEK_OF_YEAR)) * 7);
                case 10:
                    return resolvePreviousValid(this.yearOfEra, i9, this.dayOfMonth);
                case 11:
                    return resolvePreviousValid(i9, this.monthOfYear, this.dayOfMonth);
                case 12:
                    return resolvePreviousValid(1 - this.yearOfEra, this.monthOfYear, this.dayOfMonth);
                default:
                    throw new UnsupportedTemporalTypeException("Unsupported field: " + gVar);
            }
        }
        return (HijrahDate) gVar.adjustInto(this, j10);
    }

    @Override // org.threeten.bp.chrono.a, org.threeten.bp.chrono.b, org.threeten.bp.temporal.b
    public HijrahDate plus(long j10, org.threeten.bp.temporal.j jVar) {
        return (HijrahDate) super.plus(j10, jVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HijrahDate of(LocalDate localDate) {
        return new HijrahDate(localDate.toEpochDay());
    }
}
