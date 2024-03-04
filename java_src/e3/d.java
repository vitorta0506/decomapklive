package e3;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.meizu.cloud.pushsdk.notification.model.BrightRemindSetting;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import x2.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f38388a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f38389b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f38390c;

    /* renamed from: d  reason: collision with root package name */
    public final long f38391d;

    /* renamed from: e  reason: collision with root package name */
    public final long f38392e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final g f38393f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String[] f38394g;

    /* renamed from: h  reason: collision with root package name */
    public final String f38395h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f38396i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final d f38397j;

    /* renamed from: k  reason: collision with root package name */
    private final HashMap<String, Integer> f38398k;

    /* renamed from: l  reason: collision with root package name */
    private final HashMap<String, Integer> f38399l;

    /* renamed from: m  reason: collision with root package name */
    private List<d> f38400m;

    private d(@Nullable String str, @Nullable String str2, long j10, long j11, @Nullable g gVar, @Nullable String[] strArr, String str3, @Nullable String str4, @Nullable d dVar) {
        this.f38388a = str;
        this.f38389b = str2;
        this.f38396i = str4;
        this.f38393f = gVar;
        this.f38394g = strArr;
        this.f38390c = str2 != null;
        this.f38391d = j10;
        this.f38392e = j11;
        this.f38395h = (String) com.google.android.exoplayer2.util.a.e(str3);
        this.f38397j = dVar;
        this.f38398k = new HashMap<>();
        this.f38399l = new HashMap<>();
    }

    private void b(Map<String, g> map, b.C0686b c0686b, int i9, int i10, int i11) {
        g f10 = f.f(this.f38393f, this.f38394g, map);
        SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) c0686b.e();
        if (spannableStringBuilder == null) {
            spannableStringBuilder = new SpannableStringBuilder();
            c0686b.o(spannableStringBuilder);
        }
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        if (f10 != null) {
            f.a(spannableStringBuilder2, i9, i10, f10, this.f38397j, map, i11);
            if ("p".equals(this.f38388a)) {
                if (f10.k() != Float.MAX_VALUE) {
                    c0686b.m((f10.k() * (-90.0f)) / 100.0f);
                }
                if (f10.m() != null) {
                    c0686b.p(f10.m());
                }
                if (f10.h() != null) {
                    c0686b.j(f10.h());
                }
            }
        }
    }

    public static d c(@Nullable String str, long j10, long j11, @Nullable g gVar, @Nullable String[] strArr, String str2, @Nullable String str3, @Nullable d dVar) {
        return new d(str, null, j10, j11, gVar, strArr, str2, str3, dVar);
    }

    public static d d(String str) {
        return new d(null, f.b(str), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    private static void e(SpannableStringBuilder spannableStringBuilder) {
        a[] aVarArr;
        for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
            spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), "");
        }
        for (int i9 = 0; i9 < spannableStringBuilder.length(); i9++) {
            if (spannableStringBuilder.charAt(i9) == ' ') {
                int i10 = i9 + 1;
                int i11 = i10;
                while (i11 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i11) == ' ') {
                    i11++;
                }
                int i12 = i11 - i10;
                if (i12 > 0) {
                    spannableStringBuilder.delete(i9, i12 + i9);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
            spannableStringBuilder.delete(0, 1);
        }
        for (int i13 = 0; i13 < spannableStringBuilder.length() - 1; i13++) {
            if (spannableStringBuilder.charAt(i13) == '\n') {
                int i14 = i13 + 1;
                if (spannableStringBuilder.charAt(i14) == ' ') {
                    spannableStringBuilder.delete(i14, i13 + 2);
                }
            }
        }
        if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
            spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
        }
        for (int i15 = 0; i15 < spannableStringBuilder.length() - 1; i15++) {
            if (spannableStringBuilder.charAt(i15) == ' ') {
                int i16 = i15 + 1;
                if (spannableStringBuilder.charAt(i16) == '\n') {
                    spannableStringBuilder.delete(i15, i16);
                }
            }
        }
        if (spannableStringBuilder.length() <= 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != '\n') {
            return;
        }
        spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
    }

    private void i(TreeSet<Long> treeSet, boolean z10) {
        boolean equals = "p".equals(this.f38388a);
        boolean equals2 = "div".equals(this.f38388a);
        if (z10 || equals || (equals2 && this.f38396i != null)) {
            long j10 = this.f38391d;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f38392e;
            if (j11 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f38400m == null) {
            return;
        }
        for (int i9 = 0; i9 < this.f38400m.size(); i9++) {
            this.f38400m.get(i9).i(treeSet, z10 || equals);
        }
    }

    private static SpannableStringBuilder k(String str, Map<String, b.C0686b> map) {
        if (!map.containsKey(str)) {
            b.C0686b c0686b = new b.C0686b();
            c0686b.o(new SpannableStringBuilder());
            map.put(str, c0686b);
        }
        return (SpannableStringBuilder) com.google.android.exoplayer2.util.a.e(map.get(str).e());
    }

    private void n(long j10, String str, List<Pair<String, String>> list) {
        if (!"".equals(this.f38395h)) {
            str = this.f38395h;
        }
        if (m(j10) && "div".equals(this.f38388a) && this.f38396i != null) {
            list.add(new Pair<>(str, this.f38396i));
            return;
        }
        for (int i9 = 0; i9 < g(); i9++) {
            f(i9).n(j10, str, list);
        }
    }

    private void o(long j10, Map<String, g> map, Map<String, e> map2, String str, Map<String, b.C0686b> map3) {
        int i9;
        if (m(j10)) {
            String str2 = "".equals(this.f38395h) ? str : this.f38395h;
            Iterator<Map.Entry<String, Integer>> it = this.f38399l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, Integer> next = it.next();
                String key = next.getKey();
                int intValue = this.f38398k.containsKey(key) ? this.f38398k.get(key).intValue() : 0;
                int intValue2 = next.getValue().intValue();
                if (intValue != intValue2) {
                    b(map, (b.C0686b) com.google.android.exoplayer2.util.a.e(map3.get(key)), intValue, intValue2, ((e) com.google.android.exoplayer2.util.a.e(map2.get(str2))).f38410j);
                }
            }
            for (i9 = 0; i9 < g(); i9++) {
                f(i9).o(j10, map, map2, str2, map3);
            }
        }
    }

    private void p(long j10, boolean z10, String str, Map<String, b.C0686b> map) {
        this.f38398k.clear();
        this.f38399l.clear();
        if ("metadata".equals(this.f38388a)) {
            return;
        }
        if (!"".equals(this.f38395h)) {
            str = this.f38395h;
        }
        if (this.f38390c && z10) {
            k(str, map).append((CharSequence) com.google.android.exoplayer2.util.a.e(this.f38389b));
        } else if (BrightRemindSetting.BRIGHT_REMIND.equals(this.f38388a) && z10) {
            k(str, map).append('\n');
        } else if (m(j10)) {
            for (Map.Entry<String, b.C0686b> entry : map.entrySet()) {
                this.f38398k.put(entry.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.e(entry.getValue().e())).length()));
            }
            boolean equals = "p".equals(this.f38388a);
            for (int i9 = 0; i9 < g(); i9++) {
                f(i9).p(j10, z10 || equals, str, map);
            }
            if (equals) {
                f.c(k(str, map));
            }
            for (Map.Entry<String, b.C0686b> entry2 : map.entrySet()) {
                this.f38399l.put(entry2.getKey(), Integer.valueOf(((CharSequence) com.google.android.exoplayer2.util.a.e(entry2.getValue().e())).length()));
            }
        }
    }

    public void a(d dVar) {
        if (this.f38400m == null) {
            this.f38400m = new ArrayList();
        }
        this.f38400m.add(dVar);
    }

    public d f(int i9) {
        List<d> list = this.f38400m;
        if (list != null) {
            return list.get(i9);
        }
        throw new IndexOutOfBoundsException();
    }

    public int g() {
        List<d> list = this.f38400m;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<x2.b> h(long j10, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        List<Pair<String, String>> arrayList = new ArrayList<>();
        n(j10, this.f38395h, arrayList);
        TreeMap treeMap = new TreeMap();
        p(j10, false, this.f38395h, treeMap);
        o(j10, map, map2, this.f38395h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair<String, String> pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] decode = Base64.decode(str, 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                e eVar = (e) com.google.android.exoplayer2.util.a.e(map2.get(pair.first));
                arrayList2.add(new b.C0686b().f(decodeByteArray).k(eVar.f38402b).l(0).h(eVar.f38403c, 0).i(eVar.f38405e).n(eVar.f38406f).g(eVar.f38407g).r(eVar.f38410j).a());
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = (e) com.google.android.exoplayer2.util.a.e(map2.get(entry.getKey()));
            b.C0686b c0686b = (b.C0686b) entry.getValue();
            e((SpannableStringBuilder) com.google.android.exoplayer2.util.a.e(c0686b.e()));
            c0686b.h(eVar2.f38403c, eVar2.f38404d);
            c0686b.i(eVar2.f38405e);
            c0686b.k(eVar2.f38402b);
            c0686b.n(eVar2.f38406f);
            c0686b.q(eVar2.f38409i, eVar2.f38408h);
            c0686b.r(eVar2.f38410j);
            arrayList2.add(c0686b.a());
        }
        return arrayList2;
    }

    public long[] j() {
        TreeSet<Long> treeSet = new TreeSet<>();
        int i9 = 0;
        i(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i9] = it.next().longValue();
            i9++;
        }
        return jArr;
    }

    @Nullable
    public String[] l() {
        return this.f38394g;
    }

    public boolean m(long j10) {
        long j11 = this.f38391d;
        return (j11 == -9223372036854775807L && this.f38392e == -9223372036854775807L) || (j11 <= j10 && this.f38392e == -9223372036854775807L) || ((j11 == -9223372036854775807L && j10 < this.f38392e) || (j11 <= j10 && j10 < this.f38392e));
    }
}
