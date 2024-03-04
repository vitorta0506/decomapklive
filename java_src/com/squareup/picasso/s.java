package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class s {

    /* renamed from: s  reason: collision with root package name */
    private static final long f29993s = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: a  reason: collision with root package name */
    int f29994a;

    /* renamed from: b  reason: collision with root package name */
    long f29995b;

    /* renamed from: c  reason: collision with root package name */
    int f29996c;

    /* renamed from: d  reason: collision with root package name */
    public final Uri f29997d;

    /* renamed from: e  reason: collision with root package name */
    public final int f29998e;

    /* renamed from: f  reason: collision with root package name */
    public final String f29999f;

    /* renamed from: g  reason: collision with root package name */
    public final List<a0> f30000g;

    /* renamed from: h  reason: collision with root package name */
    public final int f30001h;

    /* renamed from: i  reason: collision with root package name */
    public final int f30002i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f30003j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f30004k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f30005l;

    /* renamed from: m  reason: collision with root package name */
    public final float f30006m;

    /* renamed from: n  reason: collision with root package name */
    public final float f30007n;

    /* renamed from: o  reason: collision with root package name */
    public final float f30008o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f30009p;

    /* renamed from: q  reason: collision with root package name */
    public final Bitmap.Config f30010q;

    /* renamed from: r  reason: collision with root package name */
    public final Picasso.Priority f30011r;

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Uri f30012a;

        /* renamed from: b  reason: collision with root package name */
        private int f30013b;

        /* renamed from: c  reason: collision with root package name */
        private String f30014c;

        /* renamed from: d  reason: collision with root package name */
        private int f30015d;

        /* renamed from: e  reason: collision with root package name */
        private int f30016e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f30017f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f30018g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f30019h;

        /* renamed from: i  reason: collision with root package name */
        private float f30020i;

        /* renamed from: j  reason: collision with root package name */
        private float f30021j;

        /* renamed from: k  reason: collision with root package name */
        private float f30022k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f30023l;

        /* renamed from: m  reason: collision with root package name */
        private List<a0> f30024m;

        /* renamed from: n  reason: collision with root package name */
        private Bitmap.Config f30025n;

        /* renamed from: o  reason: collision with root package name */
        private Picasso.Priority f30026o;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Uri uri, int i9, Bitmap.Config config) {
            this.f30012a = uri;
            this.f30013b = i9;
            this.f30025n = config;
        }

        public s a() {
            boolean z10 = this.f30018g;
            if (z10 && this.f30017f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            }
            if (this.f30017f && this.f30015d == 0 && this.f30016e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            }
            if (z10 && this.f30015d == 0 && this.f30016e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            }
            if (this.f30026o == null) {
                this.f30026o = Picasso.Priority.NORMAL;
            }
            return new s(this.f30012a, this.f30013b, this.f30014c, this.f30024m, this.f30015d, this.f30016e, this.f30017f, this.f30018g, this.f30019h, this.f30020i, this.f30021j, this.f30022k, this.f30023l, this.f30025n, this.f30026o);
        }

        public b b() {
            if (!this.f30018g) {
                this.f30017f = true;
                return this;
            }
            throw new IllegalStateException("Center crop can not be used after calling centerInside");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean c() {
            return (this.f30012a == null && this.f30013b == 0) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean d() {
            return (this.f30015d == 0 && this.f30016e == 0) ? false : true;
        }

        public b e(int i9, int i10) {
            if (i9 >= 0) {
                if (i10 >= 0) {
                    if (i10 == 0 && i9 == 0) {
                        throw new IllegalArgumentException("At least one dimension has to be positive number.");
                    }
                    this.f30015d = i9;
                    this.f30016e = i10;
                    return this;
                }
                throw new IllegalArgumentException("Height must be positive number or 0.");
            }
            throw new IllegalArgumentException("Width must be positive number or 0.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        Uri uri = this.f29997d;
        if (uri != null) {
            return String.valueOf(uri.getPath());
        }
        return Integer.toHexString(this.f29998e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f30000g != null;
    }

    public boolean c() {
        return (this.f30001h == 0 && this.f30002i == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d() {
        long nanoTime = System.nanoTime() - this.f29995b;
        if (nanoTime > f29993s) {
            return g() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return g() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return c() || this.f30006m != 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return e() || b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g() {
        return "[R" + this.f29994a + ']';
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Request{");
        int i9 = this.f29998e;
        if (i9 > 0) {
            sb2.append(i9);
        } else {
            sb2.append(this.f29997d);
        }
        List<a0> list = this.f30000g;
        if (list != null && !list.isEmpty()) {
            for (a0 a0Var : this.f30000g) {
                sb2.append(' ');
                sb2.append(a0Var.key());
            }
        }
        if (this.f29999f != null) {
            sb2.append(" stableKey(");
            sb2.append(this.f29999f);
            sb2.append(')');
        }
        if (this.f30001h > 0) {
            sb2.append(" resize(");
            sb2.append(this.f30001h);
            sb2.append(',');
            sb2.append(this.f30002i);
            sb2.append(')');
        }
        if (this.f30003j) {
            sb2.append(" centerCrop");
        }
        if (this.f30004k) {
            sb2.append(" centerInside");
        }
        if (this.f30006m != 0.0f) {
            sb2.append(" rotation(");
            sb2.append(this.f30006m);
            if (this.f30009p) {
                sb2.append(" @ ");
                sb2.append(this.f30007n);
                sb2.append(',');
                sb2.append(this.f30008o);
            }
            sb2.append(')');
        }
        if (this.f30010q != null) {
            sb2.append(' ');
            sb2.append(this.f30010q);
        }
        sb2.append('}');
        return sb2.toString();
    }

    private s(Uri uri, int i9, String str, List<a0> list, int i10, int i11, boolean z10, boolean z11, boolean z12, float f10, float f11, float f12, boolean z13, Bitmap.Config config, Picasso.Priority priority) {
        this.f29997d = uri;
        this.f29998e = i9;
        this.f29999f = str;
        if (list == null) {
            this.f30000g = null;
        } else {
            this.f30000g = Collections.unmodifiableList(list);
        }
        this.f30001h = i10;
        this.f30002i = i11;
        this.f30003j = z10;
        this.f30004k = z11;
        this.f30005l = z12;
        this.f30006m = f10;
        this.f30007n = f11;
        this.f30008o = f12;
        this.f30009p = z13;
        this.f30010q = config;
        this.f30011r = priority;
    }
}
