package j3;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f53031a;

    /* renamed from: b  reason: collision with root package name */
    public final long f53032b;

    /* renamed from: c  reason: collision with root package name */
    public final int f53033c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f53034d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, String> f53035e;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public final long f53036f;

    /* renamed from: g  reason: collision with root package name */
    public final long f53037g;

    /* renamed from: h  reason: collision with root package name */
    public final long f53038h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f53039i;

    /* renamed from: j  reason: collision with root package name */
    public final int f53040j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final Object f53041k;

    /* loaded from: classes2.dex */
    public static final class b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Uri f53042a;

        /* renamed from: b  reason: collision with root package name */
        private long f53043b;

        /* renamed from: c  reason: collision with root package name */
        private int f53044c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private byte[] f53045d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f53046e;

        /* renamed from: f  reason: collision with root package name */
        private long f53047f;

        /* renamed from: g  reason: collision with root package name */
        private long f53048g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private String f53049h;

        /* renamed from: i  reason: collision with root package name */
        private int f53050i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private Object f53051j;

        public l a() {
            com.google.android.exoplayer2.util.a.i(this.f53042a, "The uri must be set.");
            return new l(this.f53042a, this.f53043b, this.f53044c, this.f53045d, this.f53046e, this.f53047f, this.f53048g, this.f53049h, this.f53050i, this.f53051j);
        }

        public b b(int i9) {
            this.f53050i = i9;
            return this;
        }

        public b c(@Nullable byte[] bArr) {
            this.f53045d = bArr;
            return this;
        }

        public b d(int i9) {
            this.f53044c = i9;
            return this;
        }

        public b e(Map<String, String> map) {
            this.f53046e = map;
            return this;
        }

        public b f(@Nullable String str) {
            this.f53049h = str;
            return this;
        }

        public b g(long j10) {
            this.f53047f = j10;
            return this;
        }

        public b h(Uri uri) {
            this.f53042a = uri;
            return this;
        }

        public b i(String str) {
            this.f53042a = Uri.parse(str);
            return this;
        }

        public b() {
            this.f53044c = 1;
            this.f53046e = Collections.emptyMap();
            this.f53048g = -1L;
        }

        private b(l lVar) {
            this.f53042a = lVar.f53031a;
            this.f53043b = lVar.f53032b;
            this.f53044c = lVar.f53033c;
            this.f53045d = lVar.f53034d;
            this.f53046e = lVar.f53035e;
            this.f53047f = lVar.f53037g;
            this.f53048g = lVar.f53038h;
            this.f53049h = lVar.f53039i;
            this.f53050i = lVar.f53040j;
            this.f53051j = lVar.f53041k;
        }
    }

    static {
        i1.a("goog.exo.datasource");
    }

    public static String c(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return "HEAD";
                }
                throw new IllegalStateException();
            }
            return "POST";
        }
        return "GET";
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.f53033c);
    }

    public boolean d(int i9) {
        return (this.f53040j & i9) == i9;
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.f53031a + ", " + this.f53037g + ", " + this.f53038h + ", " + this.f53039i + ", " + this.f53040j + "]";
    }

    private l(Uri uri, long j10, int i9, @Nullable byte[] bArr, Map<String, String> map, long j11, long j12, @Nullable String str, int i10, @Nullable Object obj) {
        byte[] bArr2 = bArr;
        long j13 = j10 + j11;
        boolean z10 = true;
        com.google.android.exoplayer2.util.a.a(j13 >= 0);
        com.google.android.exoplayer2.util.a.a(j11 >= 0);
        if (j12 <= 0 && j12 != -1) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        this.f53031a = uri;
        this.f53032b = j10;
        this.f53033c = i9;
        this.f53034d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f53035e = Collections.unmodifiableMap(new HashMap(map));
        this.f53037g = j11;
        this.f53036f = j13;
        this.f53038h = j12;
        this.f53039i = str;
        this.f53040j = i10;
        this.f53041k = obj;
    }
}
