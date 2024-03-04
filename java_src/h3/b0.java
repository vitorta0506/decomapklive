package h3;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.w2;
import v2.q;
import v2.q0;
/* loaded from: classes2.dex */
public abstract class b0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f40374a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private j3.d f40375b;

    /* loaded from: classes2.dex */
    public interface a {
        void b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final j3.d a() {
        return (j3.d) com.google.android.exoplayer2.util.a.h(this.f40375b);
    }

    public z b() {
        return z.A;
    }

    @CallSuper
    public void c(a aVar, j3.d dVar) {
        this.f40374a = aVar;
        this.f40375b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        a aVar = this.f40374a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public boolean e() {
        return false;
    }

    public abstract void f(@Nullable Object obj);

    @CallSuper
    public void g() {
        this.f40374a = null;
        this.f40375b = null;
    }

    public abstract c0 h(w2[] w2VarArr, q0 q0Var, q.b bVar, i3 i3Var) throws ExoPlaybackException;

    public void i(com.google.android.exoplayer2.audio.e eVar) {
    }

    public void j(z zVar) {
    }
}
