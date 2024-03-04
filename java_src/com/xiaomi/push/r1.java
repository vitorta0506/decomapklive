package com.xiaomi.push;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes5.dex */
public abstract class r1 {

    /* renamed from: j  reason: collision with root package name */
    protected static final String f37066j = Locale.getDefault().getLanguage().toLowerCase();

    /* renamed from: k  reason: collision with root package name */
    private static String f37067k = null;

    /* renamed from: l  reason: collision with root package name */
    public static final DateFormat f37068l;

    /* renamed from: m  reason: collision with root package name */
    private static String f37069m;

    /* renamed from: n  reason: collision with root package name */
    private static long f37070n;

    /* renamed from: a  reason: collision with root package name */
    private String f37071a;

    /* renamed from: b  reason: collision with root package name */
    private String f37072b;

    /* renamed from: c  reason: collision with root package name */
    private String f37073c;

    /* renamed from: d  reason: collision with root package name */
    private String f37074d;

    /* renamed from: e  reason: collision with root package name */
    private String f37075e;

    /* renamed from: f  reason: collision with root package name */
    private String f37076f;

    /* renamed from: g  reason: collision with root package name */
    private List<o1> f37077g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, Object> f37078h;

    /* renamed from: i  reason: collision with root package name */
    private u1 f37079i;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        f37068l = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        f37069m = b2.a(5) + "-";
        f37070n = 0L;
    }

    public r1() {
        this.f37071a = f37067k;
        this.f37072b = null;
        this.f37073c = null;
        this.f37074d = null;
        this.f37075e = null;
        this.f37076f = null;
        this.f37077g = new CopyOnWriteArrayList();
        this.f37078h = new HashMap();
        this.f37079i = null;
    }

    public r1(Bundle bundle) {
        this.f37071a = f37067k;
        this.f37072b = null;
        this.f37073c = null;
        this.f37074d = null;
        this.f37075e = null;
        this.f37076f = null;
        this.f37077g = new CopyOnWriteArrayList();
        this.f37078h = new HashMap();
        this.f37079i = null;
        this.f37073c = bundle.getString("ext_to");
        this.f37074d = bundle.getString("ext_from");
        this.f37075e = bundle.getString("ext_chid");
        this.f37072b = bundle.getString("ext_pkt_id");
        Parcelable[] parcelableArray = bundle.getParcelableArray("ext_exts");
        if (parcelableArray != null) {
            this.f37077g = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                o1 c10 = o1.c((Bundle) parcelable);
                if (c10 != null) {
                    this.f37077g.add(c10);
                }
            }
        }
        Bundle bundle2 = bundle.getBundle("ext_ERROR");
        if (bundle2 != null) {
            this.f37079i = new u1(bundle2);
        }
    }

    public static synchronized String k() {
        String sb2;
        synchronized (r1.class) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(f37069m);
            long j10 = f37070n;
            f37070n = 1 + j10;
            sb3.append(Long.toString(j10));
            sb2 = sb3.toString();
        }
        return sb2;
    }

    public static String x() {
        return f37066j;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(this.f37071a)) {
            bundle.putString("ext_ns", this.f37071a);
        }
        if (!TextUtils.isEmpty(this.f37074d)) {
            bundle.putString("ext_from", this.f37074d);
        }
        if (!TextUtils.isEmpty(this.f37073c)) {
            bundle.putString("ext_to", this.f37073c);
        }
        if (!TextUtils.isEmpty(this.f37072b)) {
            bundle.putString("ext_pkt_id", this.f37072b);
        }
        if (!TextUtils.isEmpty(this.f37075e)) {
            bundle.putString("ext_chid", this.f37075e);
        }
        u1 u1Var = this.f37079i;
        if (u1Var != null) {
            bundle.putBundle("ext_ERROR", u1Var.a());
        }
        List<o1> list = this.f37077g;
        if (list != null) {
            Bundle[] bundleArr = new Bundle[list.size()];
            int i9 = 0;
            for (o1 o1Var : this.f37077g) {
                Bundle a10 = o1Var.a();
                if (a10 != null) {
                    bundleArr[i9] = a10;
                    i9++;
                }
            }
            bundle.putParcelableArray("ext_exts", bundleArr);
        }
        return bundle;
    }

    public o1 b(String str) {
        return c(str, null);
    }

    public o1 c(String str, String str2) {
        for (o1 o1Var : this.f37077g) {
            if (str2 == null || str2.equals(o1Var.j())) {
                if (str.equals(o1Var.e())) {
                    return o1Var;
                }
            }
        }
        return null;
    }

    public u1 d() {
        return this.f37079i;
    }

    public synchronized Object e(String str) {
        Map<String, Object> map = this.f37078h;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        r1 r1Var = (r1) obj;
        u1 u1Var = this.f37079i;
        if (u1Var == null ? r1Var.f37079i == null : u1Var.equals(r1Var.f37079i)) {
            String str = this.f37074d;
            if (str == null ? r1Var.f37074d == null : str.equals(r1Var.f37074d)) {
                if (this.f37077g.equals(r1Var.f37077g)) {
                    String str2 = this.f37072b;
                    if (str2 == null ? r1Var.f37072b == null : str2.equals(r1Var.f37072b)) {
                        String str3 = this.f37075e;
                        if (str3 == null ? r1Var.f37075e == null : str3.equals(r1Var.f37075e)) {
                            Map<String, Object> map = this.f37078h;
                            if (map == null ? r1Var.f37078h == null : map.equals(r1Var.f37078h)) {
                                String str4 = this.f37073c;
                                if (str4 == null ? r1Var.f37073c == null : str4.equals(r1Var.f37073c)) {
                                    String str5 = this.f37071a;
                                    String str6 = r1Var.f37071a;
                                    if (str5 != null) {
                                        if (str5.equals(str6)) {
                                            return true;
                                        }
                                    } else if (str6 == null) {
                                        return true;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public abstract String f();

    public synchronized Collection<o1> g() {
        if (this.f37077g == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(this.f37077g));
    }

    public void h(o1 o1Var) {
        this.f37077g.add(o1Var);
    }

    public int hashCode() {
        String str = this.f37071a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f37072b;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f37073c;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f37074d;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f37075e;
        int hashCode5 = (((((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.f37077g.hashCode()) * 31) + this.f37078h.hashCode()) * 31;
        u1 u1Var = this.f37079i;
        return hashCode5 + (u1Var != null ? u1Var.hashCode() : 0);
    }

    public void i(u1 u1Var) {
        this.f37079i = u1Var;
    }

    public synchronized Collection<String> j() {
        if (this.f37078h == null) {
            return Collections.emptySet();
        }
        return Collections.unmodifiableSet(new HashSet(this.f37078h.keySet()));
    }

    public String l() {
        if ("ID_NOT_AVAILABLE".equals(this.f37072b)) {
            return null;
        }
        if (this.f37072b == null) {
            this.f37072b = k();
        }
        return this.f37072b;
    }

    public String m() {
        return this.f37075e;
    }

    public void n(String str) {
        this.f37072b = str;
    }

    public String o() {
        return this.f37073c;
    }

    public void p(String str) {
        this.f37075e = str;
    }

    public String q() {
        return this.f37074d;
    }

    public void r(String str) {
        this.f37073c = str;
    }

    public String s() {
        return this.f37076f;
    }

    public void t(String str) {
        this.f37074d = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0111 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x011c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0109 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.String u() {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.r1.u():java.lang.String");
    }

    public void v(String str) {
        this.f37076f = str;
    }

    public String w() {
        return this.f37071a;
    }
}
