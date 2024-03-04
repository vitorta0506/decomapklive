package h3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import java.util.Arrays;
import java.util.Comparator;
import v2.o0;
/* loaded from: classes2.dex */
public abstract class c implements s {

    /* renamed from: a  reason: collision with root package name */
    protected final o0 f40376a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f40377b;

    /* renamed from: c  reason: collision with root package name */
    protected final int[] f40378c;

    /* renamed from: d  reason: collision with root package name */
    private final int f40379d;

    /* renamed from: e  reason: collision with root package name */
    private final k1[] f40380e;

    /* renamed from: f  reason: collision with root package name */
    private final long[] f40381f;

    /* renamed from: g  reason: collision with root package name */
    private int f40382g;

    public c(o0 o0Var, int[] iArr, int i9) {
        int i10 = 0;
        com.google.android.exoplayer2.util.a.f(iArr.length > 0);
        this.f40379d = i9;
        this.f40376a = (o0) com.google.android.exoplayer2.util.a.e(o0Var);
        int length = iArr.length;
        this.f40377b = length;
        this.f40380e = new k1[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.f40380e[i11] = o0Var.b(iArr[i11]);
        }
        Arrays.sort(this.f40380e, new Comparator() { // from class: h3.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int n9;
                n9 = c.n((k1) obj, (k1) obj2);
                return n9;
            }
        });
        this.f40378c = new int[this.f40377b];
        while (true) {
            int i12 = this.f40377b;
            if (i10 < i12) {
                this.f40378c[i10] = o0Var.c(this.f40380e[i10]);
                i10++;
            } else {
                this.f40381f = new long[i12];
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int n(k1 k1Var, k1 k1Var2) {
        return k1Var2.f6107h - k1Var.f6107h;
    }

    @Override // h3.v
    public final k1 b(int i9) {
        return this.f40380e[i9];
    }

    @Override // h3.v
    public final int c(int i9) {
        return this.f40378c[i9];
    }

    @Override // h3.s
    public void d(float f10) {
    }

    @Override // h3.s
    public void e() {
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f40376a == cVar.f40376a && Arrays.equals(this.f40378c, cVar.f40378c);
    }

    @Override // h3.s
    public /* synthetic */ void f() {
        r.a(this);
    }

    @Override // h3.v
    public final int g(int i9) {
        for (int i10 = 0; i10 < this.f40377b; i10++) {
            if (this.f40378c[i10] == i9) {
                return i10;
            }
        }
        return -1;
    }

    @Override // h3.v
    public final o0 h() {
        return this.f40376a;
    }

    public int hashCode() {
        if (this.f40382g == 0) {
            this.f40382g = (System.identityHashCode(this.f40376a) * 31) + Arrays.hashCode(this.f40378c);
        }
        return this.f40382g;
    }

    @Override // h3.s
    public /* synthetic */ void i(boolean z10) {
        r.b(this, z10);
    }

    @Override // h3.s
    public void j() {
    }

    @Override // h3.s
    public final k1 k() {
        return this.f40380e[a()];
    }

    @Override // h3.s
    public /* synthetic */ void l() {
        r.c(this);
    }

    @Override // h3.v
    public final int length() {
        return this.f40378c.length;
    }
}
