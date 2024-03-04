package v2;

import a2.s1;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import com.google.android.exoplayer2.i3;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import v2.q;
import v2.w;
/* loaded from: classes.dex */
public abstract class a implements q {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<q.c> f58683a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<q.c> f58684b = new HashSet<>(1);

    /* renamed from: c  reason: collision with root package name */
    private final w.a f58685c = new w.a();

    /* renamed from: d  reason: collision with root package name */
    private final s.a f58686d = new s.a();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Looper f58687e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private i3 f58688f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private s1 f58689g;

    @Override // v2.q
    public final void a(q.c cVar) {
        this.f58683a.remove(cVar);
        if (this.f58683a.isEmpty()) {
            this.f58687e = null;
            this.f58688f = null;
            this.f58689g = null;
            this.f58684b.clear();
            z();
            return;
        }
        c(cVar);
    }

    @Override // v2.q
    public final void c(q.c cVar) {
        boolean z10 = !this.f58684b.isEmpty();
        this.f58684b.remove(cVar);
        if (z10 && this.f58684b.isEmpty()) {
            t();
        }
    }

    @Override // v2.q
    public final void e(Handler handler, w wVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(wVar);
        this.f58685c.f(handler, wVar);
    }

    @Override // v2.q
    public final void g(Handler handler, com.google.android.exoplayer2.drm.s sVar) {
        com.google.android.exoplayer2.util.a.e(handler);
        com.google.android.exoplayer2.util.a.e(sVar);
        this.f58686d.g(handler, sVar);
    }

    @Override // v2.q
    public final void i(com.google.android.exoplayer2.drm.s sVar) {
        this.f58686d.t(sVar);
    }

    @Override // v2.q
    public final void k(q.c cVar, @Nullable j3.b0 b0Var, s1 s1Var) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f58687e;
        com.google.android.exoplayer2.util.a.a(looper == null || looper == myLooper);
        this.f58689g = s1Var;
        i3 i3Var = this.f58688f;
        this.f58683a.add(cVar);
        if (this.f58687e == null) {
            this.f58687e = myLooper;
            this.f58684b.add(cVar);
            x(b0Var);
        } else if (i3Var != null) {
            o(cVar);
            cVar.a(this, i3Var);
        }
    }

    @Override // v2.q
    public /* synthetic */ boolean l() {
        return p.b(this);
    }

    @Override // v2.q
    public /* synthetic */ i3 m() {
        return p.a(this);
    }

    @Override // v2.q
    public final void n(w wVar) {
        this.f58685c.w(wVar);
    }

    @Override // v2.q
    public final void o(q.c cVar) {
        com.google.android.exoplayer2.util.a.e(this.f58687e);
        boolean isEmpty = this.f58684b.isEmpty();
        this.f58684b.add(cVar);
        if (isEmpty) {
            u();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s.a p(int i9, @Nullable q.b bVar) {
        return this.f58686d.u(i9, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s.a q(@Nullable q.b bVar) {
        return this.f58686d.u(0, bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final w.a r(int i9, @Nullable q.b bVar, long j10) {
        return this.f58685c.x(i9, bVar, j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final w.a s(@Nullable q.b bVar) {
        return this.f58685c.x(0, bVar, 0L);
    }

    protected void t() {
    }

    protected void u() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s1 v() {
        return (s1) com.google.android.exoplayer2.util.a.h(this.f58689g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean w() {
        return !this.f58684b.isEmpty();
    }

    protected abstract void x(@Nullable j3.b0 b0Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void y(i3 i3Var) {
        this.f58688f = i3Var;
        Iterator<q.c> it = this.f58683a.iterator();
        while (it.hasNext()) {
            it.next().a(this, i3Var);
        }
    }

    protected abstract void z();
}
