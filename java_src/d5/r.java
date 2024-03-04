package d5;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.play.core.internal.b1;
import com.google.android.play.core.tasks.RuntimeExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class r<ResultT> extends d<ResultT> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f37937a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final n f37938b = new n();
    @GuardedBy("lock")

    /* renamed from: c  reason: collision with root package name */
    private boolean f37939c;
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private Object f37940d;
    @GuardedBy("lock")

    /* renamed from: e  reason: collision with root package name */
    private Exception f37941e;

    @GuardedBy("lock")
    private final void l() {
        b1.b(this.f37939c, "Task is not yet complete");
    }

    @GuardedBy("lock")
    private final void m() {
        b1.b(!this.f37939c, "Task is already complete");
    }

    private final void n() {
        synchronized (this.f37937a) {
            if (this.f37939c) {
                this.f37938b.b(this);
            }
        }
    }

    @Override // d5.d
    public final d<ResultT> a(a<ResultT> aVar) {
        this.f37938b.a(new h(e.f37915a, aVar));
        n();
        return this;
    }

    @Override // d5.d
    public final d<ResultT> b(Executor executor, b bVar) {
        this.f37938b.a(new j(executor, bVar));
        n();
        return this;
    }

    @Override // d5.d
    public final d<ResultT> c(Executor executor, c<? super ResultT> cVar) {
        this.f37938b.a(new l(executor, cVar));
        n();
        return this;
    }

    @Override // d5.d
    @Nullable
    public final Exception d() {
        Exception exc;
        synchronized (this.f37937a) {
            exc = this.f37941e;
        }
        return exc;
    }

    @Override // d5.d
    public final ResultT e() {
        ResultT resultt;
        synchronized (this.f37937a) {
            l();
            Exception exc = this.f37941e;
            if (exc == null) {
                resultt = (ResultT) this.f37940d;
            } else {
                throw new RuntimeExecutionException(exc);
            }
        }
        return resultt;
    }

    @Override // d5.d
    public final boolean f() {
        boolean z10;
        synchronized (this.f37937a) {
            z10 = this.f37939c;
        }
        return z10;
    }

    @Override // d5.d
    public final boolean g() {
        boolean z10;
        synchronized (this.f37937a) {
            z10 = false;
            if (this.f37939c && this.f37941e == null) {
                z10 = true;
            }
        }
        return z10;
    }

    public final void h(Exception exc) {
        synchronized (this.f37937a) {
            m();
            this.f37939c = true;
            this.f37941e = exc;
        }
        this.f37938b.b(this);
    }

    public final void i(Object obj) {
        synchronized (this.f37937a) {
            m();
            this.f37939c = true;
            this.f37940d = obj;
        }
        this.f37938b.b(this);
    }

    public final boolean j(Exception exc) {
        synchronized (this.f37937a) {
            if (this.f37939c) {
                return false;
            }
            this.f37939c = true;
            this.f37941e = exc;
            this.f37938b.b(this);
            return true;
        }
    }

    public final boolean k(Object obj) {
        synchronized (this.f37937a) {
            if (this.f37939c) {
                return false;
            }
            this.f37939c = true;
            this.f37940d = obj;
            this.f37938b.b(this);
            return true;
        }
    }
}
