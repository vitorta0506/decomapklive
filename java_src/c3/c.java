package c3;

import android.graphics.Color;
import android.graphics.PointF;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.google.common.primitives.f;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final String f1589a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1590b;
    @Nullable
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    public final Integer f1591c;
    @Nullable
    @ColorInt

    /* renamed from: d  reason: collision with root package name */
    public final Integer f1592d;

    /* renamed from: e  reason: collision with root package name */
    public final float f1593e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f1594f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f1595g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f1596h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f1597i;

    /* renamed from: j  reason: collision with root package name */
    public final int f1598j;

    /* loaded from: classes.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f1599a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1600b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1601c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1602d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1603e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1604f;

        /* renamed from: g  reason: collision with root package name */
        public final int f1605g;

        /* renamed from: h  reason: collision with root package name */
        public final int f1606h;

        /* renamed from: i  reason: collision with root package name */
        public final int f1607i;

        /* renamed from: j  reason: collision with root package name */
        public final int f1608j;

        /* renamed from: k  reason: collision with root package name */
        public final int f1609k;

        private a(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
            this.f1599a = i9;
            this.f1600b = i10;
            this.f1601c = i11;
            this.f1602d = i12;
            this.f1603e = i13;
            this.f1604f = i14;
            this.f1605g = i15;
            this.f1606h = i16;
            this.f1607i = i17;
            this.f1608j = i18;
            this.f1609k = i19;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Nullable
        public static a a(String str) {
            char c10;
            String[] split = TextUtils.split(str.substring(7), ",");
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            for (int i19 = 0; i19 < split.length; i19++) {
                String f10 = com.google.common.base.c.f(split[i19].trim());
                f10.hashCode();
                switch (f10.hashCode()) {
                    case -1178781136:
                        if (f10.equals("italic")) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1026963764:
                        if (f10.equals("underline")) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -192095652:
                        if (f10.equals("strikeout")) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -70925746:
                        if (f10.equals("primarycolour")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3029637:
                        if (f10.equals("bold")) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3373707:
                        if (f10.equals("name")) {
                            c10 = 5;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 366554320:
                        if (f10.equals("fontsize")) {
                            c10 = 6;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 767321349:
                        if (f10.equals("borderstyle")) {
                            c10 = 7;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1767875043:
                        if (f10.equals("alignment")) {
                            c10 = '\b';
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1988365454:
                        if (f10.equals("outlinecolour")) {
                            c10 = '\t';
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                switch (c10) {
                    case 0:
                        i15 = i19;
                        break;
                    case 1:
                        i16 = i19;
                        break;
                    case 2:
                        i17 = i19;
                        break;
                    case 3:
                        i11 = i19;
                        break;
                    case 4:
                        i14 = i19;
                        break;
                    case 5:
                        i9 = i19;
                        break;
                    case 6:
                        i13 = i19;
                        break;
                    case 7:
                        i18 = i19;
                        break;
                    case '\b':
                        i10 = i19;
                        break;
                    case '\t':
                        i12 = i19;
                        break;
                }
            }
            if (i9 != -1) {
                return new a(i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, split.length);
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    static final class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Pattern f1610c = Pattern.compile("\\{([^}]*)\\}");

        /* renamed from: d  reason: collision with root package name */
        private static final Pattern f1611d = Pattern.compile(l0.z("\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: e  reason: collision with root package name */
        private static final Pattern f1612e = Pattern.compile(l0.z("\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));

        /* renamed from: f  reason: collision with root package name */
        private static final Pattern f1613f = Pattern.compile("\\\\an(\\d+)");

        /* renamed from: a  reason: collision with root package name */
        public final int f1614a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final PointF f1615b;

        private b(int i9, @Nullable PointF pointF) {
            this.f1614a = i9;
            this.f1615b = pointF;
        }

        private static int a(String str) {
            Matcher matcher = f1613f.matcher(str);
            if (matcher.find()) {
                return c.e((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            }
            return -1;
        }

        public static b b(String str) {
            Matcher matcher = f1610c.matcher(str);
            PointF pointF = null;
            int i9 = -1;
            while (matcher.find()) {
                String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
                try {
                    PointF c10 = c(str2);
                    if (c10 != null) {
                        pointF = c10;
                    }
                } catch (RuntimeException unused) {
                }
                try {
                    int a10 = a(str2);
                    if (a10 != -1) {
                        i9 = a10;
                    }
                } catch (RuntimeException unused2) {
                }
            }
            return new b(i9, pointF);
        }

        @Nullable
        private static PointF c(String str) {
            String group;
            String group2;
            Matcher matcher = f1611d.matcher(str);
            Matcher matcher2 = f1612e.matcher(str);
            boolean find = matcher.find();
            boolean find2 = matcher2.find();
            if (find) {
                if (find2) {
                    r.f("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
                }
                group = matcher.group(1);
                group2 = matcher.group(2);
            } else if (!find2) {
                return null;
            } else {
                group = matcher2.group(1);
                group2 = matcher2.group(2);
            }
            return new PointF(Float.parseFloat(((String) com.google.android.exoplayer2.util.a.e(group)).trim()), Float.parseFloat(((String) com.google.android.exoplayer2.util.a.e(group2)).trim()));
        }

        public static String d(String str) {
            return f1610c.matcher(str).replaceAll("");
        }
    }

    private c(String str, int i9, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, float f10, boolean z10, boolean z11, boolean z12, boolean z13, int i10) {
        this.f1589a = str;
        this.f1590b = i9;
        this.f1591c = num;
        this.f1592d = num2;
        this.f1593e = f10;
        this.f1594f = z10;
        this.f1595g = z11;
        this.f1596h = z12;
        this.f1597i = z13;
        this.f1598j = i10;
    }

    @Nullable
    public static c b(String str, a aVar) {
        com.google.android.exoplayer2.util.a.a(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i9 = aVar.f1609k;
        if (length != i9) {
            r.i("SsaStyle", l0.z("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i9), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            String trim = split[aVar.f1599a].trim();
            int i10 = aVar.f1600b;
            int e10 = i10 != -1 ? e(split[i10].trim()) : -1;
            int i11 = aVar.f1601c;
            Integer h10 = i11 != -1 ? h(split[i11].trim()) : null;
            int i12 = aVar.f1602d;
            Integer h11 = i12 != -1 ? h(split[i12].trim()) : null;
            int i13 = aVar.f1603e;
            float i14 = i13 != -1 ? i(split[i13].trim()) : -3.4028235E38f;
            int i15 = aVar.f1604f;
            boolean z10 = i15 != -1 && f(split[i15].trim());
            int i16 = aVar.f1605g;
            boolean z11 = i16 != -1 && f(split[i16].trim());
            int i17 = aVar.f1606h;
            boolean z12 = i17 != -1 && f(split[i17].trim());
            int i18 = aVar.f1607i;
            boolean z13 = i18 != -1 && f(split[i18].trim());
            int i19 = aVar.f1608j;
            return new c(trim, e10, h10, h11, i14, z10, z11, z12, z13, i19 != -1 ? g(split[i19].trim()) : -1);
        } catch (RuntimeException e11) {
            r.j("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e11);
            return null;
        }
    }

    private static boolean c(int i9) {
        switch (i9) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    private static boolean d(int i9) {
        return i9 == 1 || i9 == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int e(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (c(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        r.i("SsaStyle", "Ignoring unknown alignment: " + str);
        return -1;
    }

    private static boolean f(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e10) {
            r.j("SsaStyle", "Failed to parse boolean value: '" + str + "'", e10);
            return false;
        }
    }

    private static int g(String str) {
        try {
            int parseInt = Integer.parseInt(str.trim());
            if (d(parseInt)) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        r.i("SsaStyle", "Ignoring unknown BorderStyle: " + str);
        return -1;
    }

    @Nullable
    @ColorInt
    public static Integer h(String str) {
        long parseLong;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            com.google.android.exoplayer2.util.a.a(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(f.d(((parseLong >> 24) & 255) ^ 255), f.d(parseLong & 255), f.d((parseLong >> 8) & 255), f.d((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e10) {
            r.j("SsaStyle", "Failed to parse color expression: '" + str + "'", e10);
            return null;
        }
    }

    private static float i(String str) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e10) {
            r.j("SsaStyle", "Failed to parse font size: '" + str + "'", e10);
            return -3.4028235E38f;
        }
    }
}
