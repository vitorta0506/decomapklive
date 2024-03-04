package j3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import j3.b;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class m implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f53052a;

    /* renamed from: b  reason: collision with root package name */
    private final int f53053b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f53054c;

    /* renamed from: d  reason: collision with root package name */
    private int f53055d;

    /* renamed from: e  reason: collision with root package name */
    private int f53056e;

    /* renamed from: f  reason: collision with root package name */
    private int f53057f;

    /* renamed from: g  reason: collision with root package name */
    private a[] f53058g;

    public m(boolean z10, int i9) {
        this(z10, i9, 0);
    }

    @Override // j3.b
    public synchronized a a() {
        a aVar;
        this.f53056e++;
        int i9 = this.f53057f;
        if (i9 > 0) {
            a[] aVarArr = this.f53058g;
            int i10 = i9 - 1;
            this.f53057f = i10;
            aVar = (a) com.google.android.exoplayer2.util.a.e(aVarArr[i10]);
            this.f53058g[this.f53057f] = null;
        } else {
            aVar = new a(new byte[this.f53053b], 0);
            int i11 = this.f53056e;
            a[] aVarArr2 = this.f53058g;
            if (i11 > aVarArr2.length) {
                this.f53058g = (a[]) Arrays.copyOf(aVarArr2, aVarArr2.length * 2);
            }
        }
        return aVar;
    }

    @Override // j3.b
    public synchronized void b(@Nullable b.a aVar) {
        while (aVar != null) {
            a[] aVarArr = this.f53058g;
            int i9 = this.f53057f;
            this.f53057f = i9 + 1;
            aVarArr[i9] = aVar.a();
            this.f53056e--;
            aVar = aVar.next();
        }
        notifyAll();
    }

    @Override // j3.b
    public synchronized void c(a aVar) {
        a[] aVarArr = this.f53058g;
        int i9 = this.f53057f;
        this.f53057f = i9 + 1;
        aVarArr[i9] = aVar;
        this.f53056e--;
        notifyAll();
    }

    @Override // j3.b
    public synchronized void d() {
        int i9 = 0;
        int max = Math.max(0, l0.l(this.f53055d, this.f53053b) - this.f53056e);
        int i10 = this.f53057f;
        if (max >= i10) {
            return;
        }
        if (this.f53054c != null) {
            int i11 = i10 - 1;
            while (i9 <= i11) {
                a aVar = (a) com.google.android.exoplayer2.util.a.e(this.f53058g[i9]);
                if (aVar.f53003a == this.f53054c) {
                    i9++;
                } else {
                    a aVar2 = (a) com.google.android.exoplayer2.util.a.e(this.f53058g[i11]);
                    if (aVar2.f53003a != this.f53054c) {
                        i11--;
                    } else {
                        a[] aVarArr = this.f53058g;
                        aVarArr[i9] = aVar2;
                        aVarArr[i11] = aVar;
                        i11--;
                        i9++;
                    }
                }
            }
            max = Math.max(max, i9);
            if (max >= this.f53057f) {
                return;
            }
        }
        Arrays.fill(this.f53058g, max, this.f53057f, (Object) null);
        this.f53057f = max;
    }

    @Override // j3.b
    public int e() {
        return this.f53053b;
    }

    public synchronized int f() {
        return this.f53056e * this.f53053b;
    }

    public synchronized void g() {
        if (this.f53052a) {
            h(0);
        }
    }

    public synchronized void h(int i9) {
        boolean z10 = i9 < this.f53055d;
        this.f53055d = i9;
        if (z10) {
            d();
        }
    }

    public m(boolean z10, int i9, int i10) {
        com.google.android.exoplayer2.util.a.a(i9 > 0);
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        this.f53052a = z10;
        this.f53053b = i9;
        this.f53057f = i10;
        this.f53058g = new a[i10 + 100];
        if (i10 > 0) {
            this.f53054c = new byte[i10 * i9];
            for (int i11 = 0; i11 < i10; i11++) {
                this.f53058g[i11] = new a(this.f53054c, i11 * i9);
            }
            return;
        }
        this.f53054c = null;
    }
}
