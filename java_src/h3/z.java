package h3;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.util.l0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import v2.o0;
/* loaded from: classes2.dex */
public class z implements com.google.android.exoplayer2.h {
    public static final z A;
    @Deprecated
    public static final z B;
    @Deprecated
    public static final h.a<z> C;

    /* renamed from: a  reason: collision with root package name */
    public final int f40491a;

    /* renamed from: b  reason: collision with root package name */
    public final int f40492b;

    /* renamed from: c  reason: collision with root package name */
    public final int f40493c;

    /* renamed from: d  reason: collision with root package name */
    public final int f40494d;

    /* renamed from: e  reason: collision with root package name */
    public final int f40495e;

    /* renamed from: f  reason: collision with root package name */
    public final int f40496f;

    /* renamed from: g  reason: collision with root package name */
    public final int f40497g;

    /* renamed from: h  reason: collision with root package name */
    public final int f40498h;

    /* renamed from: i  reason: collision with root package name */
    public final int f40499i;

    /* renamed from: j  reason: collision with root package name */
    public final int f40500j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f40501k;

    /* renamed from: l  reason: collision with root package name */
    public final ImmutableList<String> f40502l;

    /* renamed from: m  reason: collision with root package name */
    public final int f40503m;

    /* renamed from: n  reason: collision with root package name */
    public final ImmutableList<String> f40504n;

    /* renamed from: o  reason: collision with root package name */
    public final int f40505o;

    /* renamed from: p  reason: collision with root package name */
    public final int f40506p;

    /* renamed from: q  reason: collision with root package name */
    public final int f40507q;

    /* renamed from: r  reason: collision with root package name */
    public final ImmutableList<String> f40508r;

    /* renamed from: s  reason: collision with root package name */
    public final ImmutableList<String> f40509s;

    /* renamed from: t  reason: collision with root package name */
    public final int f40510t;

    /* renamed from: u  reason: collision with root package name */
    public final int f40511u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f40512v;

    /* renamed from: w  reason: collision with root package name */
    public final boolean f40513w;

    /* renamed from: x  reason: collision with root package name */
    public final boolean f40514x;

    /* renamed from: y  reason: collision with root package name */
    public final ImmutableMap<o0, x> f40515y;

    /* renamed from: z  reason: collision with root package name */
    public final ImmutableSet<Integer> f40516z;

    static {
        z A2 = new a().A();
        A = A2;
        B = A2;
        C = new h.a() { // from class: h3.y
            @Override // com.google.android.exoplayer2.h.a
            public final com.google.android.exoplayer2.h a(Bundle bundle) {
                return z.b(bundle);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public z(a aVar) {
        this.f40491a = aVar.f40517a;
        this.f40492b = aVar.f40518b;
        this.f40493c = aVar.f40519c;
        this.f40494d = aVar.f40520d;
        this.f40495e = aVar.f40521e;
        this.f40496f = aVar.f40522f;
        this.f40497g = aVar.f40523g;
        this.f40498h = aVar.f40524h;
        this.f40499i = aVar.f40525i;
        this.f40500j = aVar.f40526j;
        this.f40501k = aVar.f40527k;
        this.f40502l = aVar.f40528l;
        this.f40503m = aVar.f40529m;
        this.f40504n = aVar.f40530n;
        this.f40505o = aVar.f40531o;
        this.f40506p = aVar.f40532p;
        this.f40507q = aVar.f40533q;
        this.f40508r = aVar.f40534r;
        this.f40509s = aVar.f40535s;
        this.f40510t = aVar.f40536t;
        this.f40511u = aVar.f40537u;
        this.f40512v = aVar.f40538v;
        this.f40513w = aVar.f40539w;
        this.f40514x = aVar.f40540x;
        this.f40515y = ImmutableMap.copyOf((Map) aVar.f40541y);
        this.f40516z = ImmutableSet.copyOf((Collection) aVar.f40542z);
    }

    public static z b(Bundle bundle) {
        return new a(bundle).A();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String c(int i9) {
        return Integer.toString(i9, 36);
    }

    public a a() {
        return new a(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        return this.f40491a == zVar.f40491a && this.f40492b == zVar.f40492b && this.f40493c == zVar.f40493c && this.f40494d == zVar.f40494d && this.f40495e == zVar.f40495e && this.f40496f == zVar.f40496f && this.f40497g == zVar.f40497g && this.f40498h == zVar.f40498h && this.f40501k == zVar.f40501k && this.f40499i == zVar.f40499i && this.f40500j == zVar.f40500j && this.f40502l.equals(zVar.f40502l) && this.f40503m == zVar.f40503m && this.f40504n.equals(zVar.f40504n) && this.f40505o == zVar.f40505o && this.f40506p == zVar.f40506p && this.f40507q == zVar.f40507q && this.f40508r.equals(zVar.f40508r) && this.f40509s.equals(zVar.f40509s) && this.f40510t == zVar.f40510t && this.f40511u == zVar.f40511u && this.f40512v == zVar.f40512v && this.f40513w == zVar.f40513w && this.f40514x == zVar.f40514x && this.f40515y.equals(zVar.f40515y) && this.f40516z.equals(zVar.f40516z);
    }

    public int hashCode() {
        return ((((((((((((((((((((((((((((((((((((((((((((((((((this.f40491a + 31) * 31) + this.f40492b) * 31) + this.f40493c) * 31) + this.f40494d) * 31) + this.f40495e) * 31) + this.f40496f) * 31) + this.f40497g) * 31) + this.f40498h) * 31) + (this.f40501k ? 1 : 0)) * 31) + this.f40499i) * 31) + this.f40500j) * 31) + this.f40502l.hashCode()) * 31) + this.f40503m) * 31) + this.f40504n.hashCode()) * 31) + this.f40505o) * 31) + this.f40506p) * 31) + this.f40507q) * 31) + this.f40508r.hashCode()) * 31) + this.f40509s.hashCode()) * 31) + this.f40510t) * 31) + this.f40511u) * 31) + (this.f40512v ? 1 : 0)) * 31) + (this.f40513w ? 1 : 0)) * 31) + (this.f40514x ? 1 : 0)) * 31) + this.f40515y.hashCode()) * 31) + this.f40516z.hashCode();
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f40517a;

        /* renamed from: b  reason: collision with root package name */
        private int f40518b;

        /* renamed from: c  reason: collision with root package name */
        private int f40519c;

        /* renamed from: d  reason: collision with root package name */
        private int f40520d;

        /* renamed from: e  reason: collision with root package name */
        private int f40521e;

        /* renamed from: f  reason: collision with root package name */
        private int f40522f;

        /* renamed from: g  reason: collision with root package name */
        private int f40523g;

        /* renamed from: h  reason: collision with root package name */
        private int f40524h;

        /* renamed from: i  reason: collision with root package name */
        private int f40525i;

        /* renamed from: j  reason: collision with root package name */
        private int f40526j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f40527k;

        /* renamed from: l  reason: collision with root package name */
        private ImmutableList<String> f40528l;

        /* renamed from: m  reason: collision with root package name */
        private int f40529m;

        /* renamed from: n  reason: collision with root package name */
        private ImmutableList<String> f40530n;

        /* renamed from: o  reason: collision with root package name */
        private int f40531o;

        /* renamed from: p  reason: collision with root package name */
        private int f40532p;

        /* renamed from: q  reason: collision with root package name */
        private int f40533q;

        /* renamed from: r  reason: collision with root package name */
        private ImmutableList<String> f40534r;

        /* renamed from: s  reason: collision with root package name */
        private ImmutableList<String> f40535s;

        /* renamed from: t  reason: collision with root package name */
        private int f40536t;

        /* renamed from: u  reason: collision with root package name */
        private int f40537u;

        /* renamed from: v  reason: collision with root package name */
        private boolean f40538v;

        /* renamed from: w  reason: collision with root package name */
        private boolean f40539w;

        /* renamed from: x  reason: collision with root package name */
        private boolean f40540x;

        /* renamed from: y  reason: collision with root package name */
        private HashMap<o0, x> f40541y;

        /* renamed from: z  reason: collision with root package name */
        private HashSet<Integer> f40542z;

        @Deprecated
        public a() {
            this.f40517a = Integer.MAX_VALUE;
            this.f40518b = Integer.MAX_VALUE;
            this.f40519c = Integer.MAX_VALUE;
            this.f40520d = Integer.MAX_VALUE;
            this.f40525i = Integer.MAX_VALUE;
            this.f40526j = Integer.MAX_VALUE;
            this.f40527k = true;
            this.f40528l = ImmutableList.of();
            this.f40529m = 0;
            this.f40530n = ImmutableList.of();
            this.f40531o = 0;
            this.f40532p = Integer.MAX_VALUE;
            this.f40533q = Integer.MAX_VALUE;
            this.f40534r = ImmutableList.of();
            this.f40535s = ImmutableList.of();
            this.f40536t = 0;
            this.f40537u = 0;
            this.f40538v = false;
            this.f40539w = false;
            this.f40540x = false;
            this.f40541y = new HashMap<>();
            this.f40542z = new HashSet<>();
        }

        private void C(z zVar) {
            this.f40517a = zVar.f40491a;
            this.f40518b = zVar.f40492b;
            this.f40519c = zVar.f40493c;
            this.f40520d = zVar.f40494d;
            this.f40521e = zVar.f40495e;
            this.f40522f = zVar.f40496f;
            this.f40523g = zVar.f40497g;
            this.f40524h = zVar.f40498h;
            this.f40525i = zVar.f40499i;
            this.f40526j = zVar.f40500j;
            this.f40527k = zVar.f40501k;
            this.f40528l = zVar.f40502l;
            this.f40529m = zVar.f40503m;
            this.f40530n = zVar.f40504n;
            this.f40531o = zVar.f40505o;
            this.f40532p = zVar.f40506p;
            this.f40533q = zVar.f40507q;
            this.f40534r = zVar.f40508r;
            this.f40535s = zVar.f40509s;
            this.f40536t = zVar.f40510t;
            this.f40537u = zVar.f40511u;
            this.f40538v = zVar.f40512v;
            this.f40539w = zVar.f40513w;
            this.f40540x = zVar.f40514x;
            this.f40542z = new HashSet<>(zVar.f40516z);
            this.f40541y = new HashMap<>(zVar.f40515y);
        }

        private static ImmutableList<String> D(String[] strArr) {
            ImmutableList.b builder = ImmutableList.builder();
            for (String str : (String[]) com.google.android.exoplayer2.util.a.e(strArr)) {
                builder.a(l0.y0((String) com.google.android.exoplayer2.util.a.e(str)));
            }
            return builder.j();
        }

        @RequiresApi(19)
        private void I(Context context) {
            CaptioningManager captioningManager;
            if ((l0.f6985a >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled()) {
                this.f40536t = BaseConfig.DRESS_UP_TITLE;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f40535s = ImmutableList.of(l0.S(locale));
                }
            }
        }

        public z A() {
            return new z(this);
        }

        public a B(int i9) {
            Iterator<x> it = this.f40541y.values().iterator();
            while (it.hasNext()) {
                if (it.next().b() == i9) {
                    it.remove();
                }
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a E(z zVar) {
            C(zVar);
            return this;
        }

        public a F(int i9) {
            this.f40537u = i9;
            return this;
        }

        public a G(x xVar) {
            B(xVar.b());
            this.f40541y.put(xVar.f40488a, xVar);
            return this;
        }

        public a H(Context context) {
            if (l0.f6985a >= 19) {
                I(context);
            }
            return this;
        }

        public a J(int i9, boolean z10) {
            if (z10) {
                this.f40542z.add(Integer.valueOf(i9));
            } else {
                this.f40542z.remove(Integer.valueOf(i9));
            }
            return this;
        }

        public a K(int i9, int i10, boolean z10) {
            this.f40525i = i9;
            this.f40526j = i10;
            this.f40527k = z10;
            return this;
        }

        public a L(Context context, boolean z10) {
            Point I = l0.I(context);
            return K(I.x, I.y, z10);
        }

        public a(Context context) {
            this();
            H(context);
            L(context, true);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(z zVar) {
            C(zVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Bundle bundle) {
            ImmutableList b10;
            String c10 = z.c(6);
            z zVar = z.A;
            this.f40517a = bundle.getInt(c10, zVar.f40491a);
            this.f40518b = bundle.getInt(z.c(7), zVar.f40492b);
            this.f40519c = bundle.getInt(z.c(8), zVar.f40493c);
            this.f40520d = bundle.getInt(z.c(9), zVar.f40494d);
            this.f40521e = bundle.getInt(z.c(10), zVar.f40495e);
            this.f40522f = bundle.getInt(z.c(11), zVar.f40496f);
            this.f40523g = bundle.getInt(z.c(12), zVar.f40497g);
            this.f40524h = bundle.getInt(z.c(13), zVar.f40498h);
            this.f40525i = bundle.getInt(z.c(14), zVar.f40499i);
            this.f40526j = bundle.getInt(z.c(15), zVar.f40500j);
            this.f40527k = bundle.getBoolean(z.c(16), zVar.f40501k);
            this.f40528l = ImmutableList.copyOf((String[]) com.google.common.base.j.a(bundle.getStringArray(z.c(17)), new String[0]));
            this.f40529m = bundle.getInt(z.c(25), zVar.f40503m);
            this.f40530n = D((String[]) com.google.common.base.j.a(bundle.getStringArray(z.c(1)), new String[0]));
            this.f40531o = bundle.getInt(z.c(2), zVar.f40505o);
            this.f40532p = bundle.getInt(z.c(18), zVar.f40506p);
            this.f40533q = bundle.getInt(z.c(19), zVar.f40507q);
            this.f40534r = ImmutableList.copyOf((String[]) com.google.common.base.j.a(bundle.getStringArray(z.c(20)), new String[0]));
            this.f40535s = D((String[]) com.google.common.base.j.a(bundle.getStringArray(z.c(3)), new String[0]));
            this.f40536t = bundle.getInt(z.c(4), zVar.f40510t);
            this.f40537u = bundle.getInt(z.c(26), zVar.f40511u);
            this.f40538v = bundle.getBoolean(z.c(5), zVar.f40512v);
            this.f40539w = bundle.getBoolean(z.c(21), zVar.f40513w);
            this.f40540x = bundle.getBoolean(z.c(22), zVar.f40514x);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(z.c(23));
            if (parcelableArrayList == null) {
                b10 = ImmutableList.of();
            } else {
                b10 = com.google.android.exoplayer2.util.c.b(x.f40487c, parcelableArrayList);
            }
            this.f40541y = new HashMap<>();
            for (int i9 = 0; i9 < b10.size(); i9++) {
                x xVar = (x) b10.get(i9);
                this.f40541y.put(xVar.f40488a, xVar);
            }
            int[] iArr = (int[]) com.google.common.base.j.a(bundle.getIntArray(z.c(24)), new int[0]);
            this.f40542z = new HashSet<>();
            for (int i10 : iArr) {
                this.f40542z.add(Integer.valueOf(i10));
            }
        }
    }
}
