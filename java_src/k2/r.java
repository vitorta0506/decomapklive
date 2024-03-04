package k2;

import com.google.android.exoplayer2.util.l0;
/* loaded from: classes.dex */
final class r {

    /* renamed from: a  reason: collision with root package name */
    public final o f53508a;

    /* renamed from: b  reason: collision with root package name */
    public final int f53509b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f53510c;

    /* renamed from: d  reason: collision with root package name */
    public final int[] f53511d;

    /* renamed from: e  reason: collision with root package name */
    public final int f53512e;

    /* renamed from: f  reason: collision with root package name */
    public final long[] f53513f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f53514g;

    /* renamed from: h  reason: collision with root package name */
    public final long f53515h;

    public r(o oVar, long[] jArr, int[] iArr, int i9, long[] jArr2, int[] iArr2, long j10) {
        com.google.android.exoplayer2.util.a.a(iArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        com.google.android.exoplayer2.util.a.a(iArr2.length == jArr2.length);
        this.f53508a = oVar;
        this.f53510c = jArr;
        this.f53511d = iArr;
        this.f53512e = i9;
        this.f53513f = jArr2;
        this.f53514g = iArr2;
        this.f53515h = j10;
        this.f53509b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int a(long j10) {
        for (int i9 = l0.i(this.f53513f, j10, true, false); i9 >= 0; i9--) {
            if ((this.f53514g[i9] & 1) != 0) {
                return i9;
            }
        }
        return -1;
    }

    public int b(long j10) {
        for (int e10 = l0.e(this.f53513f, j10, true, false); e10 < this.f53513f.length; e10++) {
            if ((this.f53514g[e10] & 1) != 0) {
                return e10;
            }
        }
        return -1;
    }
}
