package k2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final int f53474a;

    /* renamed from: b  reason: collision with root package name */
    public final int f53475b;

    /* renamed from: c  reason: collision with root package name */
    public final long f53476c;

    /* renamed from: d  reason: collision with root package name */
    public final long f53477d;

    /* renamed from: e  reason: collision with root package name */
    public final long f53478e;

    /* renamed from: f  reason: collision with root package name */
    public final k1 f53479f;

    /* renamed from: g  reason: collision with root package name */
    public final int f53480g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final long[] f53481h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final long[] f53482i;

    /* renamed from: j  reason: collision with root package name */
    public final int f53483j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final p[] f53484k;

    public o(int i9, int i10, long j10, long j11, long j12, k1 k1Var, int i11, @Nullable p[] pVarArr, int i12, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.f53474a = i9;
        this.f53475b = i10;
        this.f53476c = j10;
        this.f53477d = j11;
        this.f53478e = j12;
        this.f53479f = k1Var;
        this.f53480g = i11;
        this.f53484k = pVarArr;
        this.f53483j = i12;
        this.f53481h = jArr;
        this.f53482i = jArr2;
    }

    @Nullable
    public p a(int i9) {
        p[] pVarArr = this.f53484k;
        if (pVarArr == null) {
            return null;
        }
        return pVarArr[i9];
    }
}
