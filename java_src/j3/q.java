package j3;

import android.content.Context;
import androidx.annotation.Nullable;
import j3.i;
import j3.r;
@Deprecated
/* loaded from: classes2.dex */
public final class q implements i.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f53101a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final b0 f53102b;

    /* renamed from: c  reason: collision with root package name */
    private final i.a f53103c;

    public q(Context context, @Nullable String str) {
        this(context, str, (b0) null);
    }

    @Override // j3.i.a
    /* renamed from: b */
    public p a() {
        p pVar = new p(this.f53101a, this.f53103c.a());
        b0 b0Var = this.f53102b;
        if (b0Var != null) {
            pVar.c(b0Var);
        }
        return pVar;
    }

    public q(Context context, @Nullable String str, @Nullable b0 b0Var) {
        this(context, b0Var, new r.b().c(str));
    }

    public q(Context context, @Nullable b0 b0Var, i.a aVar) {
        this.f53101a = context.getApplicationContext();
        this.f53102b = b0Var;
        this.f53103c = aVar;
    }
}
