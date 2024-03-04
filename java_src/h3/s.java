package h3;

import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k1;
import v2.o0;
import v2.q;
/* loaded from: classes2.dex */
public interface s extends v {

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final o0 f40473a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f40474b;

        /* renamed from: c  reason: collision with root package name */
        public final int f40475c;

        public a(o0 o0Var, int... iArr) {
            this(o0Var, iArr, 0);
        }

        public a(o0 o0Var, int[] iArr, int i9) {
            if (iArr.length == 0) {
                com.google.android.exoplayer2.util.r.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f40473a = o0Var;
            this.f40474b = iArr;
            this.f40475c = i9;
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        s[] a(a[] aVarArr, j3.d dVar, q.b bVar, i3 i3Var);
    }

    int a();

    void d(float f10);

    void e();

    void f();

    void i(boolean z10);

    void j();

    k1 k();

    void l();
}
