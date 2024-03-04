package h3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.x2;
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f40383a;

    /* renamed from: b  reason: collision with root package name */
    public final x2[] f40384b;

    /* renamed from: c  reason: collision with root package name */
    public final s[] f40385c;

    /* renamed from: d  reason: collision with root package name */
    public final n3 f40386d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Object f40387e;

    public c0(x2[] x2VarArr, s[] sVarArr, n3 n3Var, @Nullable Object obj) {
        this.f40384b = x2VarArr;
        this.f40385c = (s[]) sVarArr.clone();
        this.f40386d = n3Var;
        this.f40387e = obj;
        this.f40383a = x2VarArr.length;
    }

    public boolean a(@Nullable c0 c0Var) {
        if (c0Var == null || c0Var.f40385c.length != this.f40385c.length) {
            return false;
        }
        for (int i9 = 0; i9 < this.f40385c.length; i9++) {
            if (!b(c0Var, i9)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(@Nullable c0 c0Var, int i9) {
        return c0Var != null && l0.c(this.f40384b[i9], c0Var.f40384b[i9]) && l0.c(this.f40385c[i9], c0Var.f40385c[i9]);
    }

    public boolean c(int i9) {
        return this.f40384b[i9] != null;
    }
}
