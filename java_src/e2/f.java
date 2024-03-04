package e2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.b0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.e9;
/* loaded from: classes.dex */
final class f implements a {

    /* renamed from: a  reason: collision with root package name */
    public final ImmutableList<a> f38359a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38360b;

    private f(int i9, ImmutableList<a> immutableList) {
        this.f38360b = i9;
        this.f38359a = immutableList;
    }

    @Nullable
    private static a a(int i9, int i10, b0 b0Var) {
        switch (i9) {
            case 1718776947:
                return g.d(i10, b0Var);
            case 1751742049:
                return c.b(b0Var);
            case 1752331379:
                return d.c(b0Var);
            case 1852994675:
                return h.a(b0Var);
            default:
                return null;
        }
    }

    public static f c(int i9, b0 b0Var) {
        a a10;
        ImmutableList.b bVar = new ImmutableList.b();
        int f10 = b0Var.f();
        int i10 = -2;
        while (b0Var.a() > 8) {
            int q10 = b0Var.q();
            int e10 = b0Var.e() + b0Var.q();
            b0Var.O(e10);
            if (q10 == 1414744396) {
                a10 = c(b0Var.q(), b0Var);
            } else {
                a10 = a(q10, i10, b0Var);
            }
            if (a10 != null) {
                if (a10.getType() == 1752331379) {
                    i10 = ((d) a10).b();
                }
                bVar.a(a10);
            }
            b0Var.P(e10);
            b0Var.O(f10);
        }
        return new f(i9, bVar.j());
    }

    @Nullable
    public <T extends a> T b(Class<T> cls) {
        e9<a> it = this.f38359a.iterator();
        while (it.hasNext()) {
            T t10 = (T) it.next();
            if (t10.getClass() == cls) {
                return t10;
            }
        }
        return null;
    }

    @Override // e2.a
    public int getType() {
        return this.f38360b;
    }
}
