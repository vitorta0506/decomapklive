package g3;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.vk.api.sdk.exceptions.VKApiCodes;
import g3.f;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
import x2.b;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f39919a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f39920b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Integer> f39921c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, Integer> f39922d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<b> f39923c = new Comparator() { // from class: g3.g
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int e10;
                e10 = f.b.e((f.b) obj, (f.b) obj2);
                return e10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final c f39924a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39925b;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(b bVar, b bVar2) {
            return Integer.compare(bVar.f39924a.f39927b, bVar2.f39924a.f39927b);
        }

        private b(c cVar, int i9) {
            this.f39924a = cVar;
            this.f39925b = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f39926a;

        /* renamed from: b  reason: collision with root package name */
        public final int f39927b;

        /* renamed from: c  reason: collision with root package name */
        public final String f39928c;

        /* renamed from: d  reason: collision with root package name */
        public final Set<String> f39929d;

        private c(String str, int i9, String str2, Set<String> set) {
            this.f39927b = i9;
            this.f39926a = str;
            this.f39928c = str2;
            this.f39929d = set;
        }

        public static c a(String str, int i9) {
            String str2;
            String trim = str.trim();
            com.google.android.exoplayer2.util.a.a(!trim.isEmpty());
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                String trim2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
                str2 = trim2;
            }
            String[] G0 = l0.G0(trim, "\\.");
            String str3 = G0[0];
            HashSet hashSet = new HashSet();
            for (int i10 = 1; i10 < G0.length; i10++) {
                hashSet.add(G0[i10]);
            }
            return new c(str3, i9, str2, hashSet);
        }

        public static c b() {
            return new c("", 0, "", Collections.emptySet());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        public final int f39930a;

        /* renamed from: b  reason: collision with root package name */
        public final g3.d f39931b;

        public d(int i9, g3.d dVar) {
            this.f39930a = i9;
            this.f39931b = dVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            return Integer.compare(this.f39930a, dVar.f39930a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f39934c;

        /* renamed from: a  reason: collision with root package name */
        public long f39932a = 0;

        /* renamed from: b  reason: collision with root package name */
        public long f39933b = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f39935d = 2;

        /* renamed from: e  reason: collision with root package name */
        public float f39936e = -3.4028235E38f;

        /* renamed from: f  reason: collision with root package name */
        public int f39937f = 1;

        /* renamed from: g  reason: collision with root package name */
        public int f39938g = 0;

        /* renamed from: h  reason: collision with root package name */
        public float f39939h = -3.4028235E38f;

        /* renamed from: i  reason: collision with root package name */
        public int f39940i = Integer.MIN_VALUE;

        /* renamed from: j  reason: collision with root package name */
        public float f39941j = 1.0f;

        /* renamed from: k  reason: collision with root package name */
        public int f39942k = Integer.MIN_VALUE;

        private static float b(float f10, int i9) {
            int i10 = (f10 > (-3.4028235E38f) ? 1 : (f10 == (-3.4028235E38f) ? 0 : -1));
            if (i10 == 0 || i9 != 0 || (f10 >= 0.0f && f10 <= 1.0f)) {
                return i10 != 0 ? f10 : i9 == 0 ? 1.0f : -3.4028235E38f;
            }
            return 1.0f;
        }

        @Nullable
        private static Layout.Alignment c(int i9) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 != 4) {
                            if (i9 != 5) {
                                r.i("WebvttCueParser", "Unknown textAlignment: " + i9);
                                return null;
                            }
                        }
                    }
                    return Layout.Alignment.ALIGN_OPPOSITE;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        private static float d(int i9, float f10) {
            if (i9 != 0) {
                if (i9 == 1) {
                    return f10 <= 0.5f ? f10 * 2.0f : (1.0f - f10) * 2.0f;
                } else if (i9 == 2) {
                    return f10;
                } else {
                    throw new IllegalStateException(String.valueOf(i9));
                }
            }
            return 1.0f - f10;
        }

        private static float e(int i9) {
            if (i9 != 4) {
                return i9 != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static int f(int i9) {
            if (i9 != 1) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return i9 != 5 ? 1 : 2;
                    }
                    return 0;
                }
                return 2;
            }
            return 0;
        }

        public g3.e a() {
            return new g3.e(g().a(), this.f39932a, this.f39933b);
        }

        public b.C0686b g() {
            float f10 = this.f39939h;
            if (f10 == -3.4028235E38f) {
                f10 = e(this.f39935d);
            }
            int i9 = this.f39940i;
            if (i9 == Integer.MIN_VALUE) {
                i9 = f(this.f39935d);
            }
            b.C0686b r10 = new b.C0686b().p(c(this.f39935d)).h(b(this.f39936e, this.f39937f), this.f39937f).i(this.f39938g).k(f10).l(i9).n(Math.min(this.f39941j, d(i9, f10))).r(this.f39942k);
            CharSequence charSequence = this.f39934c;
            if (charSequence != null) {
                r10.o(charSequence);
            }
            return r10;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f39921c = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f39922d = Collections.unmodifiableMap(hashMap2);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i9, int i10) {
        for (String str : set) {
            Map<String, Integer> map = f39921c;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i9, i10, 33);
            } else {
                Map<String, Integer> map2 = f39922d;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i9, i10, 33);
                }
            }
        }
    }

    private static void b(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3309:
                if (str.equals("gt")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3464:
                if (str.equals("lt")) {
                    c10 = 1;
                    break;
                }
                break;
            case 96708:
                if (str.equals("amp")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3374865:
                if (str.equals("nbsp")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                spannableStringBuilder.append(Typography.greater);
                return;
            case 1:
                spannableStringBuilder.append(Typography.less);
                return;
            case 2:
                spannableStringBuilder.append(Typography.amp);
                return;
            case 3:
                spannableStringBuilder.append(' ');
                return;
            default:
                r.i("WebvttCueParser", "ignoring unsupported entity: '&" + str + ";'");
                return;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, @Nullable String str, c cVar, List<b> list, List<g3.d> list2) {
        int i9 = i(list2, str, cVar);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, b.f39923c);
        int i10 = cVar.f39927b;
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if ("rt".equals(((b) arrayList.get(i12)).f39924a.f39926a)) {
                b bVar = (b) arrayList.get(i12);
                int g10 = g(i(list2, str, bVar.f39924a), i9, 1);
                int i13 = bVar.f39924a.f39927b - i11;
                int i14 = bVar.f39925b - i11;
                CharSequence subSequence = spannableStringBuilder.subSequence(i13, i14);
                spannableStringBuilder.delete(i13, i14);
                spannableStringBuilder.setSpan(new b3.c(subSequence.toString(), g10), i10, i13, 33);
                i11 += subSequence.length();
                i10 = i13;
            }
        }
    }

    private static void d(@Nullable String str, c cVar, List<b> list, SpannableStringBuilder spannableStringBuilder, List<g3.d> list2) {
        int i9 = cVar.f39927b;
        int length = spannableStringBuilder.length();
        String str2 = cVar.f39926a;
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c10 = 0;
                    break;
                }
                break;
            case 98:
                if (str2.equals("b")) {
                    c10 = 1;
                    break;
                }
                break;
            case 99:
                if (str2.equals(com.huawei.hms.opendevice.c.f27627a)) {
                    c10 = 2;
                    break;
                }
                break;
            case 105:
                if (str2.equals(com.huawei.hms.opendevice.i.TAG)) {
                    c10 = 3;
                    break;
                }
                break;
            case 117:
                if (str2.equals("u")) {
                    c10 = 4;
                    break;
                }
                break;
            case 118:
                if (str2.equals(NotifyType.VIBRATE)) {
                    c10 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str2.equals(VKApiCodes.PARAM_LANG)) {
                    c10 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str2.equals("ruby")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 5:
            case 6:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i9, length, 33);
                break;
            case 2:
                a(spannableStringBuilder, cVar.f39929d, i9, length);
                break;
            case 3:
                spannableStringBuilder.setSpan(new StyleSpan(2), i9, length, 33);
                break;
            case 4:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i9, length, 33);
                break;
            case 7:
                c(spannableStringBuilder, str, cVar, list, list2);
                break;
            default:
                return;
        }
        List<d> h10 = h(list2, str, cVar);
        for (int i10 = 0; i10 < h10.size(); i10++) {
            e(spannableStringBuilder, h10.get(i10).f39931b, i9, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, g3.d dVar, int i9, int i10) {
        if (dVar == null) {
            return;
        }
        if (dVar.i() != -1) {
            b3.d.a(spannableStringBuilder, new StyleSpan(dVar.i()), i9, i10, 33);
        }
        if (dVar.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i9, i10, 33);
        }
        if (dVar.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i9, i10, 33);
        }
        if (dVar.k()) {
            b3.d.a(spannableStringBuilder, new ForegroundColorSpan(dVar.c()), i9, i10, 33);
        }
        if (dVar.j()) {
            b3.d.a(spannableStringBuilder, new BackgroundColorSpan(dVar.a()), i9, i10, 33);
        }
        if (dVar.d() != null) {
            b3.d.a(spannableStringBuilder, new TypefaceSpan(dVar.d()), i9, i10, 33);
        }
        int f10 = dVar.f();
        if (f10 == 1) {
            b3.d.a(spannableStringBuilder, new AbsoluteSizeSpan((int) dVar.e(), true), i9, i10, 33);
        } else if (f10 == 2) {
            b3.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e()), i9, i10, 33);
        } else if (f10 == 3) {
            b3.d.a(spannableStringBuilder, new RelativeSizeSpan(dVar.e() / 100.0f), i9, i10, 33);
        }
        if (dVar.b()) {
            spannableStringBuilder.setSpan(new b3.a(), i9, i10, 33);
        }
    }

    private static int f(String str, int i9) {
        int indexOf = str.indexOf(62, i9);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    private static int g(int i9, int i10, int i11) {
        if (i9 != -1) {
            return i9;
        }
        if (i10 != -1) {
            return i10;
        }
        if (i11 != -1) {
            return i11;
        }
        throw new IllegalArgumentException();
    }

    private static List<d> h(List<g3.d> list, @Nullable String str, c cVar) {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            g3.d dVar = list.get(i9);
            int h10 = dVar.h(str, cVar.f39926a, cVar.f39929d, cVar.f39928c);
            if (h10 > 0) {
                arrayList.add(new d(h10, dVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static int i(List<g3.d> list, @Nullable String str, c cVar) {
        List<d> h10 = h(list, str, cVar);
        for (int i9 = 0; i9 < h10.size(); i9++) {
            g3.d dVar = h10.get(i9).f39931b;
            if (dVar.g() != -1) {
                return dVar.g();
            }
        }
        return -1;
    }

    private static String j(String str) {
        String trim = str.trim();
        com.google.android.exoplayer2.util.a.a(!trim.isEmpty());
        return l0.H0(trim, "[ \\.]")[0];
    }

    private static boolean k(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 98:
                if (str.equals("b")) {
                    c10 = 0;
                    break;
                }
                break;
            case 99:
                if (str.equals(com.huawei.hms.opendevice.c.f27627a)) {
                    c10 = 1;
                    break;
                }
                break;
            case 105:
                if (str.equals(com.huawei.hms.opendevice.i.TAG)) {
                    c10 = 2;
                    break;
                }
                break;
            case 117:
                if (str.equals("u")) {
                    c10 = 3;
                    break;
                }
                break;
            case 118:
                if (str.equals(NotifyType.VIBRATE)) {
                    c10 = 4;
                    break;
                }
                break;
            case 3650:
                if (str.equals("rt")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3314158:
                if (str.equals(VKApiCodes.PARAM_LANG)) {
                    c10 = 6;
                    break;
                }
                break;
            case 3511770:
                if (str.equals("ruby")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x2.b l(CharSequence charSequence) {
        e eVar = new e();
        eVar.f39934c = charSequence;
        return eVar.g().a();
    }

    @Nullable
    public static g3.e m(b0 b0Var, List<g3.d> list) {
        String p10 = b0Var.p();
        if (p10 == null) {
            return null;
        }
        Pattern pattern = f39919a;
        Matcher matcher = pattern.matcher(p10);
        if (matcher.matches()) {
            return n(null, matcher, b0Var, list);
        }
        String p11 = b0Var.p();
        if (p11 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(p11);
        if (matcher2.matches()) {
            return n(p10.trim(), matcher2, b0Var, list);
        }
        return null;
    }

    @Nullable
    private static g3.e n(@Nullable String str, Matcher matcher, b0 b0Var, List<g3.d> list) {
        e eVar = new e();
        try {
            eVar.f39932a = i.c((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            eVar.f39933b = i.c((String) com.google.android.exoplayer2.util.a.e(matcher.group(2)));
            p((String) com.google.android.exoplayer2.util.a.e(matcher.group(3)), eVar);
            StringBuilder sb2 = new StringBuilder();
            String p10 = b0Var.p();
            while (!TextUtils.isEmpty(p10)) {
                if (sb2.length() > 0) {
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                sb2.append(p10.trim());
                p10 = b0Var.p();
            }
            eVar.f39934c = q(str, sb2.toString(), list);
            return eVar.a();
        } catch (NumberFormatException unused) {
            r.i("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b.C0686b o(String str) {
        e eVar = new e();
        p(str, eVar);
        return eVar.g();
    }

    private static void p(String str, e eVar) {
        Matcher matcher = f39920b.matcher(str);
        while (matcher.find()) {
            String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(1));
            String str3 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    s(str3, eVar);
                } else if ("align".equals(str2)) {
                    eVar.f39935d = v(str3);
                } else if ("position".equals(str2)) {
                    u(str3, eVar);
                } else if ("size".equals(str2)) {
                    eVar.f39941j = i.b(str3);
                } else if ("vertical".equals(str2)) {
                    eVar.f39942k = w(str3);
                } else {
                    r.i("WebvttCueParser", "Unknown cue setting " + str2 + CertificateUtil.DELIMITER + str3);
                }
            } catch (NumberFormatException unused) {
                r.i("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SpannedString q(@Nullable String str, String str2, List<g3.d> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        while (i9 < str2.length()) {
            char charAt = str2.charAt(i9);
            if (charAt == '&') {
                i9++;
                int indexOf = str2.indexOf(59, i9);
                int indexOf2 = str2.indexOf(32, i9);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    b(str2.substring(i9, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i9 = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i9++;
            } else {
                int i10 = i9 + 1;
                if (i10 < str2.length()) {
                    boolean z10 = str2.charAt(i10) == '/';
                    i10 = f(str2, i10);
                    int i11 = i10 - 2;
                    boolean z11 = str2.charAt(i11) == '/';
                    int i12 = i9 + (z10 ? 2 : 1);
                    if (!z11) {
                        i11 = i10 - 1;
                    }
                    String substring = str2.substring(i12, i11);
                    if (!substring.trim().isEmpty()) {
                        String j10 = j(substring);
                        if (k(j10)) {
                            if (z10) {
                                while (!arrayDeque.isEmpty()) {
                                    c cVar = (c) arrayDeque.pop();
                                    d(str, cVar, arrayList, spannableStringBuilder, list);
                                    if (!arrayDeque.isEmpty()) {
                                        arrayList.add(new b(cVar, spannableStringBuilder.length()));
                                    } else {
                                        arrayList.clear();
                                    }
                                    if (cVar.f39926a.equals(j10)) {
                                        break;
                                    }
                                }
                            } else if (!z11) {
                                arrayDeque.push(c.a(substring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i9 = i10;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (c) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, c.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static int r(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c10 = 2;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 0;
            default:
                r.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void s(String str, e eVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            eVar.f39938g = r(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            eVar.f39936e = i.b(str);
            eVar.f39937f = 0;
            return;
        }
        eVar.f39936e = Integer.parseInt(str);
        eVar.f39937f = 1;
    }

    private static int t(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals("line-left")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals("center")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1276788989:
                if (str.equals("line-right")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 3;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c10 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 5:
                return 0;
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 2;
            default:
                r.i("WebvttCueParser", "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static void u(String str, e eVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            eVar.f39940i = t(str.substring(indexOf + 1));
            str = str.substring(0, indexOf);
        }
        eVar.f39939h = i.b(str);
    }

    private static int v(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1074341483:
                if (str.equals("middle")) {
                    c10 = 1;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(ViewHierarchyConstants.DIMENSION_LEFT_KEY)) {
                    c10 = 3;
                    break;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    c10 = 4;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 1;
            default:
                r.i("WebvttCueParser", "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int w(String str) {
        str.hashCode();
        if (str.equals("lr")) {
            return 2;
        }
        if (str.equals("rl")) {
            return 1;
        }
        r.i("WebvttCueParser", "Invalid 'vertical' value: " + str);
        return Integer.MIN_VALUE;
    }
}
