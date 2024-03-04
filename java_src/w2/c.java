package w2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayList;
import java.util.Arrays;
import w2.c;
/* loaded from: classes.dex */
public final class c implements h {

    /* renamed from: g  reason: collision with root package name */
    public static final c f59362g = new c(null, new a[0], 0, -9223372036854775807L, 0);

    /* renamed from: h  reason: collision with root package name */
    private static final a f59363h = new a(0).j(0);

    /* renamed from: i  reason: collision with root package name */
    public static final h.a<c> f59364i = new h.a() { // from class: w2.a
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            c b10;
            b10 = c.b(bundle);
            return b10;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final Object f59365a;

    /* renamed from: b  reason: collision with root package name */
    public final int f59366b;

    /* renamed from: c  reason: collision with root package name */
    public final long f59367c;

    /* renamed from: d  reason: collision with root package name */
    public final long f59368d;

    /* renamed from: e  reason: collision with root package name */
    public final int f59369e;

    /* renamed from: f  reason: collision with root package name */
    private final a[] f59370f;

    /* loaded from: classes.dex */
    public static final class a implements h {

        /* renamed from: h  reason: collision with root package name */
        public static final h.a<a> f59371h = new h.a() { // from class: w2.b
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                c.a d10;
                d10 = c.a.d(bundle);
                return d10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final long f59372a;

        /* renamed from: b  reason: collision with root package name */
        public final int f59373b;

        /* renamed from: c  reason: collision with root package name */
        public final Uri[] f59374c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f59375d;

        /* renamed from: e  reason: collision with root package name */
        public final long[] f59376e;

        /* renamed from: f  reason: collision with root package name */
        public final long f59377f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f59378g;

        public a(long j10) {
            this(j10, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        @CheckResult
        private static long[] b(long[] jArr, int i9) {
            int length = jArr.length;
            int max = Math.max(i9, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, -9223372036854775807L);
            return copyOf;
        }

        @CheckResult
        private static int[] c(int[] iArr, int i9) {
            int length = iArr.length;
            int max = Math.max(i9, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a d(Bundle bundle) {
            long j10 = bundle.getLong(h(0));
            int i9 = bundle.getInt(h(1), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(2));
            int[] intArray = bundle.getIntArray(h(3));
            long[] longArray = bundle.getLongArray(h(4));
            long j11 = bundle.getLong(h(5));
            boolean z10 = bundle.getBoolean(h(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new a(j10, i9, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j11, z10);
        }

        private static String h(int i9) {
            return Integer.toString(i9, 36);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f59372a == aVar.f59372a && this.f59373b == aVar.f59373b && Arrays.equals(this.f59374c, aVar.f59374c) && Arrays.equals(this.f59375d, aVar.f59375d) && Arrays.equals(this.f59376e, aVar.f59376e) && this.f59377f == aVar.f59377f && this.f59378g == aVar.f59378g;
        }

        public int f(@IntRange(from = -1) int i9) {
            int i10 = i9 + 1;
            while (true) {
                int[] iArr = this.f59375d;
                if (i10 >= iArr.length || this.f59378g || iArr[i10] == 0 || iArr[i10] == 1) {
                    break;
                }
                i10++;
            }
            return i10;
        }

        public boolean g() {
            if (this.f59373b == -1) {
                return true;
            }
            for (int i9 = 0; i9 < this.f59373b; i9++) {
                int[] iArr = this.f59375d;
                if (iArr[i9] == 0 || iArr[i9] == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            long j10 = this.f59372a;
            long j11 = this.f59377f;
            return (((((((((((this.f59373b * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.f59374c)) * 31) + Arrays.hashCode(this.f59375d)) * 31) + Arrays.hashCode(this.f59376e)) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f59378g ? 1 : 0);
        }

        public boolean i() {
            return this.f59373b == -1 || e() < this.f59373b;
        }

        @CheckResult
        public a j(int i9) {
            int[] c10 = c(this.f59375d, i9);
            long[] b10 = b(this.f59376e, i9);
            return new a(this.f59372a, i9, c10, (Uri[]) Arrays.copyOf(this.f59374c, i9), b10, this.f59377f, this.f59378g);
        }

        private a(long j10, int i9, int[] iArr, Uri[] uriArr, long[] jArr, long j11, boolean z10) {
            com.google.android.exoplayer2.util.a.a(iArr.length == uriArr.length);
            this.f59372a = j10;
            this.f59373b = i9;
            this.f59375d = iArr;
            this.f59374c = uriArr;
            this.f59376e = jArr;
            this.f59377f = j11;
            this.f59378g = z10;
        }
    }

    private c(@Nullable Object obj, a[] aVarArr, long j10, long j11, int i9) {
        this.f59365a = obj;
        this.f59367c = j10;
        this.f59368d = j11;
        this.f59366b = aVarArr.length + i9;
        this.f59370f = aVarArr;
        this.f59369e = i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c b(Bundle bundle) {
        a[] aVarArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(g(1));
        if (parcelableArrayList == null) {
            aVarArr = new a[0];
        } else {
            a[] aVarArr2 = new a[parcelableArrayList.size()];
            for (int i9 = 0; i9 < parcelableArrayList.size(); i9++) {
                aVarArr2[i9] = a.f59371h.a((Bundle) parcelableArrayList.get(i9));
            }
            aVarArr = aVarArr2;
        }
        return new c(null, aVarArr, bundle.getLong(g(2), 0L), bundle.getLong(g(3), -9223372036854775807L), bundle.getInt(g(4)));
    }

    private boolean f(long j10, long j11, int i9) {
        if (j10 == Long.MIN_VALUE) {
            return false;
        }
        long j12 = c(i9).f59372a;
        return j12 == Long.MIN_VALUE ? j11 == -9223372036854775807L || j10 < j11 : j10 < j12;
    }

    private static String g(int i9) {
        return Integer.toString(i9, 36);
    }

    public a c(@IntRange(from = 0) int i9) {
        int i10 = this.f59369e;
        if (i9 < i10) {
            return f59363h;
        }
        return this.f59370f[i9 - i10];
    }

    public int d(long j10, long j11) {
        if (j10 != Long.MIN_VALUE) {
            if (j11 == -9223372036854775807L || j10 < j11) {
                int i9 = this.f59369e;
                while (i9 < this.f59366b && ((c(i9).f59372a != Long.MIN_VALUE && c(i9).f59372a <= j10) || !c(i9).i())) {
                    i9++;
                }
                if (i9 < this.f59366b) {
                    return i9;
                }
                return -1;
            }
            return -1;
        }
        return -1;
    }

    public int e(long j10, long j11) {
        int i9 = this.f59366b - 1;
        while (i9 >= 0 && f(j10, j11, i9)) {
            i9--;
        }
        if (i9 < 0 || !c(i9).g()) {
            return -1;
        }
        return i9;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return l0.c(this.f59365a, cVar.f59365a) && this.f59366b == cVar.f59366b && this.f59367c == cVar.f59367c && this.f59368d == cVar.f59368d && this.f59369e == cVar.f59369e && Arrays.equals(this.f59370f, cVar.f59370f);
    }

    public int hashCode() {
        int i9 = this.f59366b * 31;
        Object obj = this.f59365a;
        return ((((((((i9 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f59367c)) * 31) + ((int) this.f59368d)) * 31) + this.f59369e) * 31) + Arrays.hashCode(this.f59370f);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AdPlaybackState(adsId=");
        sb2.append(this.f59365a);
        sb2.append(", adResumePositionUs=");
        sb2.append(this.f59367c);
        sb2.append(", adGroups=[");
        for (int i9 = 0; i9 < this.f59370f.length; i9++) {
            sb2.append("adGroup(timeUs=");
            sb2.append(this.f59370f[i9].f59372a);
            sb2.append(", ads=[");
            for (int i10 = 0; i10 < this.f59370f[i9].f59375d.length; i10++) {
                sb2.append("ad(state=");
                int i11 = this.f59370f[i9].f59375d[i10];
                if (i11 == 0) {
                    sb2.append('_');
                } else if (i11 == 1) {
                    sb2.append('R');
                } else if (i11 == 2) {
                    sb2.append('S');
                } else if (i11 == 3) {
                    sb2.append('P');
                } else if (i11 != 4) {
                    sb2.append('?');
                } else {
                    sb2.append('!');
                }
                sb2.append(", durationUs=");
                sb2.append(this.f59370f[i9].f59376e[i10]);
                sb2.append(')');
                if (i10 < this.f59370f[i9].f59375d.length - 1) {
                    sb2.append(", ");
                }
            }
            sb2.append("])");
            if (i9 < this.f59370f.length - 1) {
                sb2.append(", ");
            }
        }
        sb2.append("])");
        return sb2.toString();
    }
}
