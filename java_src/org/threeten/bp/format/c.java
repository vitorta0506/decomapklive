package org.threeten.bp.format;

import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.ExceptionCode;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import io.jsonwebtoken.JwtParser;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import okhttp3.internal.http2.Http2Connection;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.Instant;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.format.h;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public final class c {

    /* renamed from: h  reason: collision with root package name */
    private static final org.threeten.bp.temporal.i<ZoneId> f56539h = new a();

    /* renamed from: i  reason: collision with root package name */
    private static final Map<Character, org.threeten.bp.temporal.g> f56540i;

    /* renamed from: j  reason: collision with root package name */
    static final Comparator<String> f56541j;

    /* renamed from: a  reason: collision with root package name */
    private c f56542a;

    /* renamed from: b  reason: collision with root package name */
    private final c f56543b;

    /* renamed from: c  reason: collision with root package name */
    private final List<h> f56544c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f56545d;

    /* renamed from: e  reason: collision with root package name */
    private int f56546e;

    /* renamed from: f  reason: collision with root package name */
    private char f56547f;

    /* renamed from: g  reason: collision with root package name */
    private int f56548g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements org.threeten.bp.temporal.i<ZoneId> {
        a() {
        }

        @Override // org.threeten.bp.temporal.i
        /* renamed from: b */
        public ZoneId a(org.threeten.bp.temporal.c cVar) {
            ZoneId zoneId = (ZoneId) cVar.query(org.threeten.bp.temporal.h.g());
            if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                return null;
            }
            return zoneId;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b extends org.threeten.bp.format.f {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h.b f56549b;

        b(h.b bVar) {
            this.f56549b = bVar;
        }

        @Override // org.threeten.bp.format.f
        public String c(org.threeten.bp.temporal.g gVar, long j10, TextStyle textStyle, Locale locale) {
            return this.f56549b.a(j10, textStyle);
        }

        @Override // org.threeten.bp.format.f
        public Iterator<Map.Entry<String, Long>> d(org.threeten.bp.temporal.g gVar, TextStyle textStyle, Locale locale) {
            return this.f56549b.b(textStyle);
        }
    }

    /* renamed from: org.threeten.bp.format.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class C0607c implements Comparator<String> {
        C0607c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(String str, String str2) {
            return str.length() == str2.length() ? str.compareTo(str2) : str.length() - str2.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56551a;

        static {
            int[] iArr = new int[SignStyle.values().length];
            f56551a = iArr;
            try {
                iArr[SignStyle.EXCEEDS_PAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56551a[SignStyle.ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56551a[SignStyle.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56551a[SignStyle.NOT_NEGATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class e implements h {

        /* renamed from: a  reason: collision with root package name */
        private final char f56552a;

        e(char c10) {
            this.f56552a = c10;
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            if (i9 == charSequence.length()) {
                return ~i9;
            }
            return !dVar.c(this.f56552a, charSequence.charAt(i9)) ? ~i9 : i9 + 1;
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            sb2.append(this.f56552a);
            return true;
        }

        public String toString() {
            if (this.f56552a == '\'') {
                return "''";
            }
            return "'" + this.f56552a + "'";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class f implements h {

        /* renamed from: a  reason: collision with root package name */
        private final TextStyle f56553a;

        f(TextStyle textStyle) {
            this.f56553a = textStyle;
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            if (i9 >= 0 && i9 <= charSequence.length()) {
                org.threeten.bp.chrono.i iVar = null;
                int i10 = -1;
                for (org.threeten.bp.chrono.i iVar2 : org.threeten.bp.chrono.i.getAvailableChronologies()) {
                    String id2 = iVar2.getId();
                    int length = id2.length();
                    if (length > i10 && dVar.u(charSequence, i9, id2, 0, length)) {
                        iVar = iVar2;
                        i10 = length;
                    }
                }
                if (iVar == null) {
                    return ~i9;
                }
                dVar.p(iVar);
                return i9 + i10;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            org.threeten.bp.chrono.i iVar = (org.threeten.bp.chrono.i) eVar.g(org.threeten.bp.temporal.h.a());
            if (iVar == null) {
                return false;
            }
            if (this.f56553a == null) {
                sb2.append(iVar.getId());
                return true;
            }
            try {
                sb2.append(ResourceBundle.getBundle("org.threeten.bp.format.ChronologyText", eVar.c(), c.class.getClassLoader()).getString(iVar.getId()));
                return true;
            } catch (MissingResourceException unused) {
                sb2.append(iVar.getId());
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class g implements h {

        /* renamed from: a  reason: collision with root package name */
        private final h[] f56554a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f56555b;

        g(List<h> list, boolean z10) {
            this((h[]) list.toArray(new h[list.size()]), z10);
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            if (this.f56555b) {
                dVar.t();
                int i10 = i9;
                for (h hVar : this.f56554a) {
                    i10 = hVar.a(dVar, charSequence, i10);
                    if (i10 < 0) {
                        dVar.g(false);
                        return i9;
                    }
                }
                dVar.g(true);
                return i10;
            }
            for (h hVar2 : this.f56554a) {
                i9 = hVar2.a(dVar, charSequence, i9);
                if (i9 < 0) {
                    break;
                }
            }
            return i9;
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            int length = sb2.length();
            if (this.f56555b) {
                eVar.h();
            }
            try {
                for (h hVar : this.f56554a) {
                    if (!hVar.b(eVar, sb2)) {
                        sb2.setLength(length);
                        return true;
                    }
                }
                if (this.f56555b) {
                    eVar.b();
                }
                return true;
            } finally {
                if (this.f56555b) {
                    eVar.b();
                }
            }
        }

        public g c(boolean z10) {
            return z10 == this.f56555b ? this : new g(this.f56554a, z10);
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f56554a != null) {
                sb2.append(this.f56555b ? "[" : "(");
                for (h hVar : this.f56554a) {
                    sb2.append(hVar);
                }
                sb2.append(this.f56555b ? "]" : ")");
            }
            return sb2.toString();
        }

        g(h[] hVarArr, boolean z10) {
            this.f56554a = hVarArr;
            this.f56555b = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface h {
        int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9);

        boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class i implements h {

        /* renamed from: a  reason: collision with root package name */
        private final org.threeten.bp.temporal.g f56556a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56557b;

        /* renamed from: c  reason: collision with root package name */
        private final int f56558c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f56559d;

        i(org.threeten.bp.temporal.g gVar, int i9, int i10, boolean z10) {
            jl.d.i(gVar, "field");
            if (!gVar.range().isFixed()) {
                throw new IllegalArgumentException("Field must have a fixed set of values: " + gVar);
            } else if (i9 < 0 || i9 > 9) {
                throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i9);
            } else if (i10 < 1 || i10 > 9) {
                throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i10);
            } else if (i10 >= i9) {
                this.f56556a = gVar;
                this.f56557b = i9;
                this.f56558c = i10;
                this.f56559d = z10;
            } else {
                throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i10 + " < " + i9);
            }
        }

        private long c(BigDecimal bigDecimal) {
            ValueRange range = this.f56556a.range();
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            return bigDecimal.multiply(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE)).setScale(0, RoundingMode.FLOOR).add(valueOf).longValueExact();
        }

        private BigDecimal d(long j10) {
            ValueRange range = this.f56556a.range();
            range.checkValidValue(j10, this.f56556a);
            BigDecimal valueOf = BigDecimal.valueOf(range.getMinimum());
            BigDecimal divide = BigDecimal.valueOf(j10).subtract(valueOf).divide(BigDecimal.valueOf(range.getMaximum()).subtract(valueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
            return divide.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO : divide.stripTrailingZeros();
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            int i10;
            int i11 = 0;
            int i12 = dVar.m() ? this.f56557b : 0;
            int i13 = dVar.m() ? this.f56558c : 9;
            int length = charSequence.length();
            if (i9 == length) {
                return i12 > 0 ? ~i9 : i9;
            }
            if (this.f56559d) {
                if (charSequence.charAt(i9) != dVar.k().c()) {
                    return i12 > 0 ? ~i9 : i9;
                }
                i9++;
            }
            int i14 = i9;
            int i15 = i12 + i14;
            if (i15 > length) {
                return ~i14;
            }
            int min = Math.min(i13 + i14, length);
            int i16 = i14;
            while (true) {
                if (i16 >= min) {
                    i10 = i16;
                    break;
                }
                int i17 = i16 + 1;
                int b10 = dVar.k().b(charSequence.charAt(i16));
                if (b10 >= 0) {
                    i11 = (i11 * 10) + b10;
                    i16 = i17;
                } else if (i17 < i15) {
                    return ~i14;
                } else {
                    i10 = i17 - 1;
                }
            }
            return dVar.q(this.f56556a, c(new BigDecimal(i11).movePointLeft(i10 - i14)), i14, i10);
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            Long f10 = eVar.f(this.f56556a);
            if (f10 == null) {
                return false;
            }
            org.threeten.bp.format.g d10 = eVar.d();
            BigDecimal d11 = d(f10.longValue());
            if (d11.scale() == 0) {
                if (this.f56557b > 0) {
                    if (this.f56559d) {
                        sb2.append(d10.c());
                    }
                    for (int i9 = 0; i9 < this.f56557b; i9++) {
                        sb2.append(d10.f());
                    }
                    return true;
                }
                return true;
            }
            String a10 = d10.a(d11.setScale(Math.min(Math.max(d11.scale(), this.f56557b), this.f56558c), RoundingMode.FLOOR).toPlainString().substring(2));
            if (this.f56559d) {
                sb2.append(d10.c());
            }
            sb2.append(a10);
            return true;
        }

        public String toString() {
            String str = this.f56559d ? ",DecimalPoint" : "";
            return "Fraction(" + this.f56556a + "," + this.f56557b + "," + this.f56558c + str + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class j implements h {

        /* renamed from: a  reason: collision with root package name */
        private final int f56560a;

        j(int i9) {
            this.f56560a = i9;
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            int i10;
            int i11;
            int i12;
            org.threeten.bp.format.d e10 = dVar.e();
            int i13 = this.f56560a;
            int i14 = i13 < 0 ? 0 : i13;
            if (i13 < 0) {
                i13 = 9;
            }
            c f10 = new c().a(org.threeten.bp.format.b.f56515h).f('T');
            ChronoField chronoField = ChronoField.HOUR_OF_DAY;
            c f11 = f10.m(chronoField, 2).f(':');
            ChronoField chronoField2 = ChronoField.MINUTE_OF_HOUR;
            c f12 = f11.m(chronoField2, 2).f(':');
            ChronoField chronoField3 = ChronoField.SECOND_OF_MINUTE;
            c m10 = f12.m(chronoField3, 2);
            ChronoField chronoField4 = ChronoField.NANO_OF_SECOND;
            int a10 = m10.c(chronoField4, i14, i13, true).f('Z').v().k(false).a(e10, charSequence, i9);
            if (a10 < 0) {
                return a10;
            }
            long longValue = e10.j(ChronoField.YEAR).longValue();
            int intValue = e10.j(ChronoField.MONTH_OF_YEAR).intValue();
            int intValue2 = e10.j(ChronoField.DAY_OF_MONTH).intValue();
            int intValue3 = e10.j(chronoField).intValue();
            int intValue4 = e10.j(chronoField2).intValue();
            Long j10 = e10.j(chronoField3);
            Long j11 = e10.j(chronoField4);
            int intValue5 = j10 != null ? j10.intValue() : 0;
            int intValue6 = j11 != null ? j11.intValue() : 0;
            int i15 = ((int) longValue) % 10000;
            if (intValue3 == 24 && intValue4 == 0 && intValue5 == 0 && intValue6 == 0) {
                i11 = intValue5;
                i12 = 1;
                i10 = 0;
            } else if (intValue3 == 23 && intValue4 == 59 && intValue5 == 60) {
                dVar.r();
                i10 = intValue3;
                i12 = 0;
                i11 = 59;
            } else {
                i10 = intValue3;
                i11 = intValue5;
                i12 = 0;
            }
            try {
                return dVar.q(chronoField4, intValue6, i9, dVar.q(ChronoField.INSTANT_SECONDS, jl.d.n(longValue / 10000, 315569520000L) + LocalDateTime.of(i15, intValue, intValue2, i10, intValue4, i11, 0).plusDays(i12).toEpochSecond(ZoneOffset.UTC), i9, a10));
            } catch (RuntimeException unused) {
                return ~i9;
            }
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            Long f10 = eVar.f(ChronoField.INSTANT_SECONDS);
            Long l10 = 0L;
            org.threeten.bp.temporal.c e10 = eVar.e();
            ChronoField chronoField = ChronoField.NANO_OF_SECOND;
            if (e10.isSupported(chronoField)) {
                l10 = Long.valueOf(eVar.e().getLong(chronoField));
            }
            int i9 = 0;
            if (f10 == null) {
                return false;
            }
            long longValue = f10.longValue();
            int checkValidIntValue = chronoField.checkValidIntValue(l10.longValue());
            if (longValue >= -62167219200L) {
                long j10 = (longValue - 315569520000L) + 62167219200L;
                long e11 = jl.d.e(j10, 315569520000L) + 1;
                LocalDateTime ofEpochSecond = LocalDateTime.ofEpochSecond(jl.d.h(j10, 315569520000L) - 62167219200L, 0, ZoneOffset.UTC);
                if (e11 > 0) {
                    sb2.append('+');
                    sb2.append(e11);
                }
                sb2.append(ofEpochSecond);
                if (ofEpochSecond.getSecond() == 0) {
                    sb2.append(":00");
                }
            } else {
                long j11 = longValue + 62167219200L;
                long j12 = j11 / 315569520000L;
                long j13 = j11 % 315569520000L;
                LocalDateTime ofEpochSecond2 = LocalDateTime.ofEpochSecond(j13 - 62167219200L, 0, ZoneOffset.UTC);
                int length = sb2.length();
                sb2.append(ofEpochSecond2);
                if (ofEpochSecond2.getSecond() == 0) {
                    sb2.append(":00");
                }
                if (j12 < 0) {
                    if (ofEpochSecond2.getYear() == -10000) {
                        sb2.replace(length, length + 2, Long.toString(j12 - 1));
                    } else if (j13 == 0) {
                        sb2.insert(length, j12);
                    } else {
                        sb2.insert(length + 1, Math.abs(j12));
                    }
                }
            }
            int i10 = this.f56560a;
            if (i10 == -2) {
                if (checkValidIntValue != 0) {
                    sb2.append(JwtParser.SEPARATOR_CHAR);
                    if (checkValidIntValue % 1000000 == 0) {
                        sb2.append(Integer.toString((checkValidIntValue / 1000000) + 1000).substring(1));
                    } else if (checkValidIntValue % 1000 == 0) {
                        sb2.append(Integer.toString((checkValidIntValue / 1000) + 1000000).substring(1));
                    } else {
                        sb2.append(Integer.toString(checkValidIntValue + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                    }
                }
            } else if (i10 > 0 || (i10 == -1 && checkValidIntValue > 0)) {
                sb2.append(JwtParser.SEPARATOR_CHAR);
                int i11 = 100000000;
                while (true) {
                    int i12 = this.f56560a;
                    if ((i12 != -1 || checkValidIntValue <= 0) && i9 >= i12) {
                        break;
                    }
                    int i13 = checkValidIntValue / i11;
                    sb2.append((char) (i13 + 48));
                    checkValidIntValue -= i13 * i11;
                    i11 /= 10;
                    i9++;
                }
            }
            sb2.append('Z');
            return true;
        }

        public String toString() {
            return "Instant()";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class k implements h {

        /* renamed from: f  reason: collision with root package name */
        static final int[] f56561f = {0, 10, 100, 1000, 10000, BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH, 1000000, ExceptionCode.CRASH_EXCEPTION, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};

        /* renamed from: a  reason: collision with root package name */
        final org.threeten.bp.temporal.g f56562a;

        /* renamed from: b  reason: collision with root package name */
        final int f56563b;

        /* renamed from: c  reason: collision with root package name */
        final int f56564c;

        /* renamed from: d  reason: collision with root package name */
        final SignStyle f56565d;

        /* renamed from: e  reason: collision with root package name */
        final int f56566e;

        /* synthetic */ k(org.threeten.bp.temporal.g gVar, int i9, int i10, SignStyle signStyle, int i11, a aVar) {
            this(gVar, i9, i10, signStyle, i11);
        }

        /* JADX WARN: Removed duplicated region for block: B:111:0x015d  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x017b  */
        @Override // org.threeten.bp.format.c.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int a(org.threeten.bp.format.d r20, java.lang.CharSequence r21, int r22) {
            /*
                Method dump skipped, instructions count: 389
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.threeten.bp.format.c.k.a(org.threeten.bp.format.d, java.lang.CharSequence, int):int");
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            Long f10 = eVar.f(this.f56562a);
            if (f10 == null) {
                return false;
            }
            long c10 = c(eVar, f10.longValue());
            org.threeten.bp.format.g d10 = eVar.d();
            String l10 = c10 == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(c10));
            if (l10.length() <= this.f56564c) {
                String a10 = d10.a(l10);
                if (c10 >= 0) {
                    int i9 = d.f56551a[this.f56565d.ordinal()];
                    if (i9 == 1) {
                        int i10 = this.f56563b;
                        if (i10 < 19 && c10 >= f56561f[i10]) {
                            sb2.append(d10.e());
                        }
                    } else if (i9 == 2) {
                        sb2.append(d10.e());
                    }
                } else {
                    int i11 = d.f56551a[this.f56565d.ordinal()];
                    if (i11 == 1 || i11 == 2 || i11 == 3) {
                        sb2.append(d10.d());
                    } else if (i11 == 4) {
                        throw new DateTimeException("Field " + this.f56562a + " cannot be printed as the value " + c10 + " cannot be negative according to the SignStyle");
                    }
                }
                for (int i12 = 0; i12 < this.f56563b - a10.length(); i12++) {
                    sb2.append(d10.f());
                }
                sb2.append(a10);
                return true;
            }
            throw new DateTimeException("Field " + this.f56562a + " cannot be printed as the value " + c10 + " exceeds the maximum print width of " + this.f56564c);
        }

        long c(org.threeten.bp.format.e eVar, long j10) {
            return j10;
        }

        boolean d(org.threeten.bp.format.d dVar) {
            int i9 = this.f56566e;
            return i9 == -1 || (i9 > 0 && this.f56563b == this.f56564c && this.f56565d == SignStyle.NOT_NEGATIVE);
        }

        int e(org.threeten.bp.format.d dVar, long j10, int i9, int i10) {
            return dVar.q(this.f56562a, j10, i9, i10);
        }

        k f() {
            return this.f56566e == -1 ? this : new k(this.f56562a, this.f56563b, this.f56564c, this.f56565d, -1);
        }

        k g(int i9) {
            return new k(this.f56562a, this.f56563b, this.f56564c, this.f56565d, this.f56566e + i9);
        }

        public String toString() {
            int i9 = this.f56563b;
            if (i9 == 1 && this.f56564c == 19 && this.f56565d == SignStyle.NORMAL) {
                return "Value(" + this.f56562a + ")";
            } else if (i9 == this.f56564c && this.f56565d == SignStyle.NOT_NEGATIVE) {
                return "Value(" + this.f56562a + "," + this.f56563b + ")";
            } else {
                return "Value(" + this.f56562a + "," + this.f56563b + "," + this.f56564c + "," + this.f56565d + ")";
            }
        }

        k(org.threeten.bp.temporal.g gVar, int i9, int i10, SignStyle signStyle) {
            this.f56562a = gVar;
            this.f56563b = i9;
            this.f56564c = i10;
            this.f56565d = signStyle;
            this.f56566e = 0;
        }

        private k(org.threeten.bp.temporal.g gVar, int i9, int i10, SignStyle signStyle, int i11) {
            this.f56562a = gVar;
            this.f56563b = i9;
            this.f56564c = i10;
            this.f56565d = signStyle;
            this.f56566e = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class l implements h {

        /* renamed from: c  reason: collision with root package name */
        static final String[] f56567c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

        /* renamed from: d  reason: collision with root package name */
        static final l f56568d = new l("Z", "+HH:MM:ss");

        /* renamed from: e  reason: collision with root package name */
        static final l f56569e = new l("0", "+HH:MM:ss");

        /* renamed from: a  reason: collision with root package name */
        private final String f56570a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56571b;

        l(String str, String str2) {
            jl.d.i(str, "noOffsetText");
            jl.d.i(str2, "pattern");
            this.f56570a = str;
            this.f56571b = c(str2);
        }

        private int c(String str) {
            int i9 = 0;
            while (true) {
                String[] strArr = f56567c;
                if (i9 < strArr.length) {
                    if (strArr[i9].equals(str)) {
                        return i9;
                    }
                    i9++;
                } else {
                    throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
                }
            }
        }

        private boolean d(int[] iArr, int i9, CharSequence charSequence, boolean z10) {
            int i10;
            int i11 = this.f56571b;
            if ((i11 + 3) / 2 < i9) {
                return false;
            }
            int i12 = iArr[0];
            if (i11 % 2 == 0 && i9 > 1) {
                int i13 = i12 + 1;
                if (i13 > charSequence.length() || charSequence.charAt(i12) != ':') {
                    return z10;
                }
                i12 = i13;
            }
            if (i12 + 2 > charSequence.length()) {
                return z10;
            }
            int i14 = i12 + 1;
            char charAt = charSequence.charAt(i12);
            int i15 = i14 + 1;
            char charAt2 = charSequence.charAt(i14);
            if (charAt < '0' || charAt > '9' || charAt2 < '0' || charAt2 > '9' || (i10 = ((charAt - '0') * 10) + (charAt2 - '0')) < 0 || i10 > 59) {
                return z10;
            }
            iArr[i9] = i10;
            iArr[0] = i15;
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0080  */
        @Override // org.threeten.bp.format.c.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int a(org.threeten.bp.format.d r16, java.lang.CharSequence r17, int r18) {
            /*
                r15 = this;
                r0 = r15
                r7 = r17
                r8 = r18
                int r1 = r17.length()
                java.lang.String r2 = r0.f56570a
                int r9 = r2.length()
                if (r9 != 0) goto L22
                if (r8 != r1) goto L45
                org.threeten.bp.temporal.ChronoField r2 = org.threeten.bp.temporal.ChronoField.OFFSET_SECONDS
                r3 = 0
                r1 = r16
                r5 = r18
                r6 = r18
                int r1 = r1.q(r2, r3, r5, r6)
                return r1
            L22:
                if (r8 != r1) goto L26
                int r1 = ~r8
                return r1
            L26:
                java.lang.String r4 = r0.f56570a
                r5 = 0
                r1 = r16
                r2 = r17
                r3 = r18
                r6 = r9
                boolean r1 = r1.u(r2, r3, r4, r5, r6)
                if (r1 == 0) goto L45
                org.threeten.bp.temporal.ChronoField r2 = org.threeten.bp.temporal.ChronoField.OFFSET_SECONDS
                r3 = 0
                int r6 = r8 + r9
                r1 = r16
                r5 = r18
                int r1 = r1.q(r2, r3, r5, r6)
                return r1
            L45:
                char r1 = r17.charAt(r18)
                r2 = 43
                r3 = 45
                if (r1 == r2) goto L51
                if (r1 != r3) goto La5
            L51:
                r2 = 1
                if (r1 != r3) goto L56
                r1 = -1
                goto L57
            L56:
                r1 = 1
            L57:
                r3 = 4
                int[] r3 = new int[r3]
                int r4 = r8 + 1
                r5 = 0
                r3[r5] = r4
                boolean r4 = r15.d(r3, r2, r7, r2)
                r6 = 2
                r10 = 3
                if (r4 != 0) goto L7d
                int r4 = r0.f56571b
                if (r4 < r10) goto L6d
                r4 = 1
                goto L6e
            L6d:
                r4 = 0
            L6e:
                boolean r4 = r15.d(r3, r6, r7, r4)
                if (r4 != 0) goto L7d
                boolean r4 = r15.d(r3, r10, r7, r5)
                if (r4 == 0) goto L7b
                goto L7d
            L7b:
                r4 = 0
                goto L7e
            L7d:
                r4 = 1
            L7e:
                if (r4 != 0) goto La5
                long r11 = (long) r1
                r1 = r3[r2]
                long r1 = (long) r1
                r13 = 3600(0xe10, double:1.7786E-320)
                long r1 = r1 * r13
                r4 = r3[r6]
                long r6 = (long) r4
                r13 = 60
                long r6 = r6 * r13
                long r1 = r1 + r6
                r4 = r3[r10]
                long r6 = (long) r4
                long r1 = r1 + r6
                long r6 = r11 * r1
                org.threeten.bp.temporal.ChronoField r2 = org.threeten.bp.temporal.ChronoField.OFFSET_SECONDS
                r9 = r3[r5]
                r1 = r16
                r3 = r6
                r5 = r18
                r6 = r9
                int r1 = r1.q(r2, r3, r5, r6)
                return r1
            La5:
                if (r9 != 0) goto Lb6
                org.threeten.bp.temporal.ChronoField r2 = org.threeten.bp.temporal.ChronoField.OFFSET_SECONDS
                r3 = 0
                int r6 = r8 + r9
                r1 = r16
                r5 = r18
                int r1 = r1.q(r2, r3, r5, r6)
                return r1
            Lb6:
                int r1 = ~r8
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: org.threeten.bp.format.c.l.a(org.threeten.bp.format.d, java.lang.CharSequence, int):int");
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            Long f10 = eVar.f(ChronoField.OFFSET_SECONDS);
            if (f10 == null) {
                return false;
            }
            int q10 = jl.d.q(f10.longValue());
            if (q10 == 0) {
                sb2.append(this.f56570a);
            } else {
                int abs = Math.abs((q10 / LocalCache.TIME_HOUR) % 100);
                int abs2 = Math.abs((q10 / 60) % 60);
                int abs3 = Math.abs(q10 % 60);
                int length = sb2.length();
                sb2.append(q10 < 0 ? "-" : "+");
                sb2.append((char) ((abs / 10) + 48));
                sb2.append((char) ((abs % 10) + 48));
                int i9 = this.f56571b;
                if (i9 >= 3 || (i9 >= 1 && abs2 > 0)) {
                    int i10 = i9 % 2;
                    String str = CertificateUtil.DELIMITER;
                    sb2.append(i10 == 0 ? CertificateUtil.DELIMITER : "");
                    sb2.append((char) ((abs2 / 10) + 48));
                    sb2.append((char) ((abs2 % 10) + 48));
                    abs += abs2;
                    int i11 = this.f56571b;
                    if (i11 >= 7 || (i11 >= 5 && abs3 > 0)) {
                        if (i11 % 2 != 0) {
                            str = "";
                        }
                        sb2.append(str);
                        sb2.append((char) ((abs3 / 10) + 48));
                        sb2.append((char) ((abs3 % 10) + 48));
                        abs += abs3;
                    }
                }
                if (abs == 0) {
                    sb2.setLength(length);
                    sb2.append(this.f56570a);
                }
            }
            return true;
        }

        public String toString() {
            String replace = this.f56570a.replace("'", "''");
            return "Offset(" + f56567c[this.f56571b] + ",'" + replace + "')";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class m implements h {

        /* renamed from: a  reason: collision with root package name */
        private final h f56572a;

        /* renamed from: b  reason: collision with root package name */
        private final int f56573b;

        /* renamed from: c  reason: collision with root package name */
        private final char f56574c;

        m(h hVar, int i9, char c10) {
            this.f56572a = hVar;
            this.f56573b = i9;
            this.f56574c = c10;
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            boolean m10 = dVar.m();
            boolean l10 = dVar.l();
            if (i9 <= charSequence.length()) {
                if (i9 == charSequence.length()) {
                    return ~i9;
                }
                int i10 = this.f56573b + i9;
                if (i10 > charSequence.length()) {
                    if (m10) {
                        return ~i9;
                    }
                    i10 = charSequence.length();
                }
                int i11 = i9;
                while (i11 < i10) {
                    if (!l10) {
                        if (!dVar.c(charSequence.charAt(i11), this.f56574c)) {
                            break;
                        }
                        i11++;
                    } else if (charSequence.charAt(i11) != this.f56574c) {
                        break;
                    } else {
                        i11++;
                    }
                }
                int a10 = this.f56572a.a(dVar, charSequence.subSequence(0, i10), i11);
                return (a10 == i10 || !m10) ? a10 : ~(i9 + i11);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            int length = sb2.length();
            if (this.f56572a.b(eVar, sb2)) {
                int length2 = sb2.length() - length;
                if (length2 <= this.f56573b) {
                    for (int i9 = 0; i9 < this.f56573b - length2; i9++) {
                        sb2.insert(length, this.f56574c);
                    }
                    return true;
                }
                throw new DateTimeException("Cannot print as output of " + length2 + " characters exceeds pad width of " + this.f56573b);
            }
            return false;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Pad(");
            sb2.append(this.f56572a);
            sb2.append(",");
            sb2.append(this.f56573b);
            if (this.f56574c == ' ') {
                str = ")";
            } else {
                str = ",'" + this.f56574c + "')";
            }
            sb2.append(str);
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class n extends k {

        /* renamed from: i  reason: collision with root package name */
        static final LocalDate f56575i = LocalDate.of(2000, 1, 1);

        /* renamed from: g  reason: collision with root package name */
        private final int f56576g;

        /* renamed from: h  reason: collision with root package name */
        private final org.threeten.bp.chrono.b f56577h;

        private n(org.threeten.bp.temporal.g gVar, int i9, int i10, int i11, org.threeten.bp.chrono.b bVar, int i12) {
            super(gVar, i9, i10, SignStyle.NOT_NEGATIVE, i12, null);
            this.f56576g = i11;
            this.f56577h = bVar;
        }

        @Override // org.threeten.bp.format.c.k
        long c(org.threeten.bp.format.e eVar, long j10) {
            long abs = Math.abs(j10);
            int i9 = this.f56576g;
            if (this.f56577h != null) {
                i9 = org.threeten.bp.chrono.i.from(eVar.e()).date(this.f56577h).get(this.f56562a);
            }
            if (j10 >= i9) {
                int[] iArr = k.f56561f;
                int i10 = this.f56563b;
                if (j10 < i9 + iArr[i10]) {
                    return abs % iArr[i10];
                }
            }
            return abs % k.f56561f[this.f56564c];
        }

        @Override // org.threeten.bp.format.c.k
        boolean d(org.threeten.bp.format.d dVar) {
            if (dVar.m()) {
                return super.d(dVar);
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.threeten.bp.format.c.k
        public int e(org.threeten.bp.format.d dVar, long j10, int i9, int i10) {
            int i11 = this.f56576g;
            if (this.f56577h != null) {
                i11 = dVar.h().date(this.f56577h).get(this.f56562a);
                dVar.b(this, j10, i9, i10);
            }
            int i12 = i10 - i9;
            int i13 = this.f56563b;
            if (i12 == i13 && j10 >= 0) {
                long j11 = k.f56561f[i13];
                long j12 = i11;
                long j13 = j12 - (j12 % j11);
                j10 = i11 > 0 ? j13 + j10 : j13 - j10;
                if (j10 < j12) {
                    j10 += j11;
                }
            }
            return dVar.q(this.f56562a, j10, i9, i10);
        }

        @Override // org.threeten.bp.format.c.k
        k f() {
            return this.f56566e == -1 ? this : new n(this.f56562a, this.f56563b, this.f56564c, this.f56576g, this.f56577h, -1);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // org.threeten.bp.format.c.k
        /* renamed from: h */
        public n g(int i9) {
            return new n(this.f56562a, this.f56563b, this.f56564c, this.f56576g, this.f56577h, this.f56566e + i9);
        }

        @Override // org.threeten.bp.format.c.k
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ReducedValue(");
            sb2.append(this.f56562a);
            sb2.append(",");
            sb2.append(this.f56563b);
            sb2.append(",");
            sb2.append(this.f56564c);
            sb2.append(",");
            Object obj = this.f56577h;
            if (obj == null) {
                obj = Integer.valueOf(this.f56576g);
            }
            sb2.append(obj);
            sb2.append(")");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public enum o implements h {
        SENSITIVE,
        INSENSITIVE,
        STRICT,
        LENIENT;

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            int ordinal = ordinal();
            if (ordinal == 0) {
                dVar.n(true);
            } else if (ordinal == 1) {
                dVar.n(false);
            } else if (ordinal == 2) {
                dVar.s(true);
            } else if (ordinal == 3) {
                dVar.s(false);
            }
            return i9;
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            return true;
        }

        @Override // java.lang.Enum
        public String toString() {
            int ordinal = ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            return "ParseStrict(false)";
                        }
                        throw new IllegalStateException("Unreachable");
                    }
                    return "ParseStrict(true)";
                }
                return "ParseCaseSensitive(false)";
            }
            return "ParseCaseSensitive(true)";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class p implements h {

        /* renamed from: a  reason: collision with root package name */
        private final String f56583a;

        p(String str) {
            this.f56583a = str;
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            if (i9 <= charSequence.length() && i9 >= 0) {
                String str = this.f56583a;
                return !dVar.u(charSequence, i9, str, 0, str.length()) ? ~i9 : i9 + this.f56583a.length();
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            sb2.append(this.f56583a);
            return true;
        }

        public String toString() {
            String replace = this.f56583a.replace("'", "''");
            return "'" + replace + "'";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class q implements h {

        /* renamed from: a  reason: collision with root package name */
        private final org.threeten.bp.temporal.g f56584a;

        /* renamed from: b  reason: collision with root package name */
        private final TextStyle f56585b;

        /* renamed from: c  reason: collision with root package name */
        private final org.threeten.bp.format.f f56586c;

        /* renamed from: d  reason: collision with root package name */
        private volatile k f56587d;

        q(org.threeten.bp.temporal.g gVar, TextStyle textStyle, org.threeten.bp.format.f fVar) {
            this.f56584a = gVar;
            this.f56585b = textStyle;
            this.f56586c = fVar;
        }

        private k c() {
            if (this.f56587d == null) {
                this.f56587d = new k(this.f56584a, 1, 19, SignStyle.NORMAL);
            }
            return this.f56587d;
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            int length = charSequence.length();
            if (i9 >= 0 && i9 <= length) {
                Iterator<Map.Entry<String, Long>> d10 = this.f56586c.d(this.f56584a, dVar.m() ? this.f56585b : null, dVar.i());
                if (d10 != null) {
                    while (d10.hasNext()) {
                        Map.Entry<String, Long> next = d10.next();
                        String key = next.getKey();
                        if (dVar.u(key, 0, charSequence, i9, key.length())) {
                            return dVar.q(this.f56584a, next.getValue().longValue(), i9, i9 + key.length());
                        }
                    }
                    if (dVar.m()) {
                        return ~i9;
                    }
                }
                return c().a(dVar, charSequence, i9);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            Long f10 = eVar.f(this.f56584a);
            if (f10 == null) {
                return false;
            }
            String c10 = this.f56586c.c(this.f56584a, f10.longValue(), this.f56585b, eVar.c());
            if (c10 == null) {
                return c().b(eVar, sb2);
            }
            sb2.append(c10);
            return true;
        }

        public String toString() {
            if (this.f56585b == TextStyle.FULL) {
                return "Text(" + this.f56584a + ")";
            }
            return "Text(" + this.f56584a + "," + this.f56585b + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class r implements h {

        /* renamed from: c  reason: collision with root package name */
        private static volatile Map.Entry<Integer, a> f56588c;

        /* renamed from: a  reason: collision with root package name */
        private final org.threeten.bp.temporal.i<ZoneId> f56589a;

        /* renamed from: b  reason: collision with root package name */
        private final String f56590b;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes7.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            final int f56591a;

            /* renamed from: b  reason: collision with root package name */
            private final Map<CharSequence, a> f56592b;

            /* renamed from: c  reason: collision with root package name */
            private final Map<String, a> f56593c;

            /* synthetic */ a(int i9, a aVar) {
                this(i9);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void c(String str) {
                int length = str.length();
                int i9 = this.f56591a;
                if (length == i9) {
                    this.f56592b.put(str, null);
                    this.f56593c.put(str.toLowerCase(Locale.ENGLISH), null);
                } else if (length > i9) {
                    String substring = str.substring(0, i9);
                    a aVar = this.f56592b.get(substring);
                    if (aVar == null) {
                        aVar = new a(length);
                        this.f56592b.put(substring, aVar);
                        this.f56593c.put(substring.toLowerCase(Locale.ENGLISH), aVar);
                    }
                    aVar.c(str);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public a d(CharSequence charSequence, boolean z10) {
                if (z10) {
                    return this.f56592b.get(charSequence);
                }
                return this.f56593c.get(charSequence.toString().toLowerCase(Locale.ENGLISH));
            }

            private a(int i9) {
                this.f56592b = new HashMap();
                this.f56593c = new HashMap();
                this.f56591a = i9;
            }
        }

        r(org.threeten.bp.temporal.i<ZoneId> iVar, String str) {
            this.f56589a = iVar;
            this.f56590b = str;
        }

        private ZoneId c(Set<String> set, String str, boolean z10) {
            if (str == null) {
                return null;
            }
            if (z10) {
                if (set.contains(str)) {
                    return ZoneId.of(str);
                }
                return null;
            }
            for (String str2 : set) {
                if (str2.equalsIgnoreCase(str)) {
                    return ZoneId.of(str2);
                }
            }
            return null;
        }

        private int d(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9, int i10) {
            String upperCase = charSequence.subSequence(i9, i10).toString().toUpperCase();
            org.threeten.bp.format.d e10 = dVar.e();
            if (i10 < charSequence.length() && dVar.c(charSequence.charAt(i10), 'Z')) {
                dVar.o(ZoneId.ofOffset(upperCase, ZoneOffset.UTC));
                return i10;
            }
            int a10 = l.f56568d.a(e10, charSequence, i10);
            if (a10 < 0) {
                dVar.o(ZoneId.ofOffset(upperCase, ZoneOffset.UTC));
                return i10;
            }
            dVar.o(ZoneId.ofOffset(upperCase, ZoneOffset.ofTotalSeconds((int) e10.j(ChronoField.OFFSET_SECONDS).longValue())));
            return a10;
        }

        private static a e(Set<String> set) {
            ArrayList<String> arrayList = new ArrayList(set);
            Collections.sort(arrayList, c.f56541j);
            a aVar = new a(((String) arrayList.get(0)).length(), null);
            for (String str : arrayList) {
                aVar.c(str);
            }
            return aVar;
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            int i10;
            int length = charSequence.length();
            if (i9 <= length) {
                if (i9 == length) {
                    return ~i9;
                }
                char charAt = charSequence.charAt(i9);
                if (charAt != '+' && charAt != '-') {
                    int i11 = i9 + 2;
                    if (length >= i11) {
                        char charAt2 = charSequence.charAt(i9 + 1);
                        if (dVar.c(charAt, 'U') && dVar.c(charAt2, 'T')) {
                            int i12 = i9 + 3;
                            if (length >= i12 && dVar.c(charSequence.charAt(i11), 'C')) {
                                return d(dVar, charSequence, i9, i12);
                            }
                            return d(dVar, charSequence, i9, i11);
                        } else if (dVar.c(charAt, 'G') && length >= (i10 = i9 + 3) && dVar.c(charAt2, 'M') && dVar.c(charSequence.charAt(i11), 'T')) {
                            return d(dVar, charSequence, i9, i10);
                        }
                    }
                    Set<String> a10 = org.threeten.bp.zone.f.a();
                    int size = a10.size();
                    Map.Entry<Integer, a> entry = f56588c;
                    if (entry == null || entry.getKey().intValue() != size) {
                        synchronized (this) {
                            entry = f56588c;
                            if (entry == null || entry.getKey().intValue() != size) {
                                entry = new AbstractMap.SimpleImmutableEntry<>(Integer.valueOf(size), e(a10));
                                f56588c = entry;
                            }
                        }
                    }
                    a value = entry.getValue();
                    String str = null;
                    String str2 = null;
                    while (value != null) {
                        int i13 = value.f56591a + i9;
                        if (i13 > length) {
                            break;
                        }
                        String charSequence2 = charSequence.subSequence(i9, i13).toString();
                        value = value.d(charSequence2, dVar.l());
                        str2 = str;
                        str = charSequence2;
                    }
                    ZoneId c10 = c(a10, str, dVar.l());
                    if (c10 == null) {
                        c10 = c(a10, str2, dVar.l());
                        if (c10 == null) {
                            if (dVar.c(charAt, 'Z')) {
                                dVar.o(ZoneOffset.UTC);
                                return i9 + 1;
                            }
                            return ~i9;
                        }
                        str = str2;
                    }
                    dVar.o(c10);
                    return i9 + str.length();
                }
                org.threeten.bp.format.d e10 = dVar.e();
                int a11 = l.f56568d.a(e10, charSequence, i9);
                if (a11 < 0) {
                    return a11;
                }
                dVar.o(ZoneOffset.ofTotalSeconds((int) e10.j(ChronoField.OFFSET_SECONDS).longValue()));
                return a11;
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            ZoneId zoneId = (ZoneId) eVar.g(this.f56589a);
            if (zoneId == null) {
                return false;
            }
            sb2.append(zoneId.getId());
            return true;
        }

        public String toString() {
            return this.f56590b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class s implements h {

        /* renamed from: b  reason: collision with root package name */
        private static final Comparator<String> f56594b = new a();

        /* renamed from: a  reason: collision with root package name */
        private final TextStyle f56595a;

        /* loaded from: classes7.dex */
        class a implements Comparator<String> {
            a() {
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(String str, String str2) {
                int length = str2.length() - str.length();
                return length == 0 ? str.compareTo(str2) : length;
            }
        }

        s(TextStyle textStyle) {
            this.f56595a = (TextStyle) jl.d.i(textStyle, "textStyle");
        }

        private int c(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9, String str) {
            int length = str.length();
            int i10 = i9 + length;
            if (i10 >= charSequence.length()) {
                dVar.o(ZoneId.of(str));
                return i10;
            }
            char charAt = charSequence.charAt(i10);
            if (charAt != '+' && charAt != '-') {
                dVar.o(ZoneId.of(str));
                return i10;
            }
            org.threeten.bp.format.d e10 = dVar.e();
            try {
                int a10 = l.f56569e.a(e10, charSequence, i10);
                if (a10 < 0) {
                    dVar.o(ZoneId.of(str));
                    return i10;
                }
                ZoneOffset ofTotalSeconds = ZoneOffset.ofTotalSeconds((int) e10.j(ChronoField.OFFSET_SECONDS).longValue());
                dVar.o(length == 0 ? ofTotalSeconds : ZoneId.ofOffset(str, ofTotalSeconds));
                return a10;
            } catch (DateTimeException unused) {
                return ~i9;
            }
        }

        @Override // org.threeten.bp.format.c.h
        public int a(org.threeten.bp.format.d dVar, CharSequence charSequence, int i9) {
            int length = charSequence.length();
            if (i9 <= length) {
                if (i9 == length) {
                    return ~i9;
                }
                char charAt = charSequence.charAt(i9);
                if (charAt == '+' || charAt == '-') {
                    return i9 + 6 > length ? ~i9 : c(dVar, charSequence, i9, "");
                } else if (dVar.u(charSequence, i9, "GMT", 0, 3)) {
                    return c(dVar, charSequence, i9, "GMT");
                } else {
                    if (dVar.u(charSequence, i9, "UTC", 0, 3)) {
                        return c(dVar, charSequence, i9, "UTC");
                    }
                    if (dVar.u(charSequence, i9, "UT", 0, 2)) {
                        return c(dVar, charSequence, i9, "UT");
                    }
                    TreeMap treeMap = new TreeMap(f56594b);
                    for (String str : ZoneId.getAvailableZoneIds()) {
                        treeMap.put(str, str);
                        TimeZone timeZone = TimeZone.getTimeZone(str);
                        int i10 = this.f56595a.asNormal() == TextStyle.FULL ? 1 : 0;
                        String displayName = timeZone.getDisplayName(false, i10, dVar.i());
                        if (str.startsWith("Etc/") || (!displayName.startsWith("GMT+") && !displayName.startsWith("GMT+"))) {
                            treeMap.put(displayName, str);
                        }
                        String displayName2 = timeZone.getDisplayName(true, i10, dVar.i());
                        if (str.startsWith("Etc/") || (!displayName2.startsWith("GMT+") && !displayName2.startsWith("GMT+"))) {
                            treeMap.put(displayName2, str);
                        }
                    }
                    for (Map.Entry entry : treeMap.entrySet()) {
                        String str2 = (String) entry.getKey();
                        if (dVar.u(charSequence, i9, str2, 0, str2.length())) {
                            dVar.o(ZoneId.of((String) entry.getValue()));
                            return i9 + str2.length();
                        }
                    }
                    if (charAt == 'Z') {
                        dVar.o(ZoneOffset.UTC);
                        return i9 + 1;
                    }
                    return ~i9;
                }
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // org.threeten.bp.format.c.h
        public boolean b(org.threeten.bp.format.e eVar, StringBuilder sb2) {
            ZoneId zoneId = (ZoneId) eVar.g(org.threeten.bp.temporal.h.g());
            if (zoneId == null) {
                return false;
            }
            if (zoneId.normalized() instanceof ZoneOffset) {
                sb2.append(zoneId.getId());
                return true;
            }
            org.threeten.bp.temporal.c e10 = eVar.e();
            ChronoField chronoField = ChronoField.INSTANT_SECONDS;
            sb2.append(TimeZone.getTimeZone(zoneId.getId()).getDisplayName(e10.isSupported(chronoField) ? zoneId.getRules().d(Instant.ofEpochSecond(e10.getLong(chronoField))) : false, this.f56595a.asNormal() == TextStyle.FULL ? 1 : 0, eVar.c()));
            return true;
        }

        public String toString() {
            return "ZoneText(" + this.f56595a + ")";
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f56540i = hashMap;
        hashMap.put('G', ChronoField.ERA);
        hashMap.put('y', ChronoField.YEAR_OF_ERA);
        hashMap.put('u', ChronoField.YEAR);
        org.threeten.bp.temporal.g gVar = org.threeten.bp.temporal.a.f56641b;
        hashMap.put('Q', gVar);
        hashMap.put('q', gVar);
        ChronoField chronoField = ChronoField.MONTH_OF_YEAR;
        hashMap.put('M', chronoField);
        hashMap.put('L', chronoField);
        hashMap.put('D', ChronoField.DAY_OF_YEAR);
        hashMap.put('d', ChronoField.DAY_OF_MONTH);
        hashMap.put('F', ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        ChronoField chronoField2 = ChronoField.DAY_OF_WEEK;
        hashMap.put('E', chronoField2);
        hashMap.put('c', chronoField2);
        hashMap.put('e', chronoField2);
        hashMap.put('a', ChronoField.AMPM_OF_DAY);
        hashMap.put('H', ChronoField.HOUR_OF_DAY);
        hashMap.put('k', ChronoField.CLOCK_HOUR_OF_DAY);
        hashMap.put('K', ChronoField.HOUR_OF_AMPM);
        hashMap.put('h', ChronoField.CLOCK_HOUR_OF_AMPM);
        hashMap.put('m', ChronoField.MINUTE_OF_HOUR);
        hashMap.put('s', ChronoField.SECOND_OF_MINUTE);
        ChronoField chronoField3 = ChronoField.NANO_OF_SECOND;
        hashMap.put('S', chronoField3);
        hashMap.put('A', ChronoField.MILLI_OF_DAY);
        hashMap.put('n', chronoField3);
        hashMap.put('N', ChronoField.NANO_OF_DAY);
        f56541j = new C0607c();
    }

    public c() {
        this.f56542a = this;
        this.f56544c = new ArrayList();
        this.f56548g = -1;
        this.f56543b = null;
        this.f56545d = false;
    }

    private int e(h hVar) {
        jl.d.i(hVar, "pp");
        c cVar = this.f56542a;
        int i9 = cVar.f56546e;
        if (i9 > 0) {
            if (hVar != null) {
                hVar = new m(hVar, i9, cVar.f56547f);
            }
            c cVar2 = this.f56542a;
            cVar2.f56546e = 0;
            cVar2.f56547f = (char) 0;
        }
        this.f56542a.f56544c.add(hVar);
        c cVar3 = this.f56542a;
        cVar3.f56548g = -1;
        return cVar3.f56544c.size() - 1;
    }

    private c l(k kVar) {
        k f10;
        c cVar = this.f56542a;
        int i9 = cVar.f56548g;
        if (i9 >= 0 && (cVar.f56544c.get(i9) instanceof k)) {
            c cVar2 = this.f56542a;
            int i10 = cVar2.f56548g;
            k kVar2 = (k) cVar2.f56544c.get(i10);
            int i11 = kVar.f56563b;
            int i12 = kVar.f56564c;
            if (i11 == i12 && kVar.f56565d == SignStyle.NOT_NEGATIVE) {
                f10 = kVar2.g(i12);
                e(kVar.f());
                this.f56542a.f56548g = i10;
            } else {
                f10 = kVar2.f();
                this.f56542a.f56548g = e(kVar);
            }
            this.f56542a.f56544c.set(i10, f10);
        } else {
            this.f56542a.f56548g = e(kVar);
        }
        return this;
    }

    public c a(org.threeten.bp.format.b bVar) {
        jl.d.i(bVar, "formatter");
        e(bVar.k(false));
        return this;
    }

    public c b(TextStyle textStyle) {
        jl.d.i(textStyle, "textStyle");
        e(new f(textStyle));
        return this;
    }

    public c c(org.threeten.bp.temporal.g gVar, int i9, int i10, boolean z10) {
        e(new i(gVar, i9, i10, z10));
        return this;
    }

    public c d() {
        e(new j(-2));
        return this;
    }

    public c f(char c10) {
        e(new e(c10));
        return this;
    }

    public c g(String str) {
        jl.d.i(str, "literal");
        if (str.length() > 0) {
            if (str.length() == 1) {
                e(new e(str.charAt(0)));
            } else {
                e(new p(str));
            }
        }
        return this;
    }

    public c h(String str, String str2) {
        e(new l(str2, str));
        return this;
    }

    public c i() {
        e(l.f56568d);
        return this;
    }

    public c j(org.threeten.bp.temporal.g gVar, Map<Long, String> map) {
        jl.d.i(gVar, "field");
        jl.d.i(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        TextStyle textStyle = TextStyle.FULL;
        e(new q(gVar, textStyle, new b(new h.b(Collections.singletonMap(textStyle, linkedHashMap)))));
        return this;
    }

    public c k(org.threeten.bp.temporal.g gVar, TextStyle textStyle) {
        jl.d.i(gVar, "field");
        jl.d.i(textStyle, "textStyle");
        e(new q(gVar, textStyle, org.threeten.bp.format.f.b()));
        return this;
    }

    public c m(org.threeten.bp.temporal.g gVar, int i9) {
        jl.d.i(gVar, "field");
        if (i9 >= 1 && i9 <= 19) {
            l(new k(gVar, i9, i9, SignStyle.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i9);
    }

    public c n(org.threeten.bp.temporal.g gVar, int i9, int i10, SignStyle signStyle) {
        if (i9 == i10 && signStyle == SignStyle.NOT_NEGATIVE) {
            return m(gVar, i10);
        }
        jl.d.i(gVar, "field");
        jl.d.i(signStyle, "signStyle");
        if (i9 < 1 || i9 > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i9);
        } else if (i10 < 1 || i10 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i10);
        } else if (i10 >= i9) {
            l(new k(gVar, i9, i10, signStyle));
            return this;
        } else {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i10 + " < " + i9);
        }
    }

    public c o() {
        e(new r(f56539h, "ZoneRegionId()"));
        return this;
    }

    public c p(TextStyle textStyle) {
        e(new s(textStyle));
        return this;
    }

    public c q() {
        c cVar = this.f56542a;
        if (cVar.f56543b != null) {
            if (cVar.f56544c.size() > 0) {
                c cVar2 = this.f56542a;
                g gVar = new g(cVar2.f56544c, cVar2.f56545d);
                this.f56542a = this.f56542a.f56543b;
                e(gVar);
            } else {
                this.f56542a = this.f56542a.f56543b;
            }
            return this;
        }
        throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
    }

    public c r() {
        c cVar = this.f56542a;
        cVar.f56548g = -1;
        this.f56542a = new c(cVar, true);
        return this;
    }

    public c s() {
        e(o.INSENSITIVE);
        return this;
    }

    public c t() {
        e(o.SENSITIVE);
        return this;
    }

    public c u() {
        e(o.LENIENT);
        return this;
    }

    public org.threeten.bp.format.b v() {
        return w(Locale.getDefault());
    }

    public org.threeten.bp.format.b w(Locale locale) {
        jl.d.i(locale, "locale");
        while (this.f56542a.f56543b != null) {
            q();
        }
        return new org.threeten.bp.format.b(new g(this.f56544c, false), locale, org.threeten.bp.format.g.f56620e, ResolverStyle.SMART, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public org.threeten.bp.format.b x(ResolverStyle resolverStyle) {
        return v().m(resolverStyle);
    }

    private c(c cVar, boolean z10) {
        this.f56542a = this;
        this.f56544c = new ArrayList();
        this.f56548g = -1;
        this.f56543b = cVar;
        this.f56545d = z10;
    }
}
