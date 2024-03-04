package ih;

import com.google.common.base.j;
import com.google.common.base.o;
import eh.b1;
import eh.i1;
import eh.k2;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class f implements b {

    /* renamed from: a  reason: collision with root package name */
    private final b1 f41369a;

    /* renamed from: b  reason: collision with root package name */
    private final k2 f41370b;

    /* renamed from: c  reason: collision with root package name */
    private e f41371c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f41372d;

    public f(b1 b1Var, k2 k2Var) {
        this.f41369a = (b1) o.t(b1Var, "tlsContext");
        this.f41370b = (k2) o.t(k2Var, "tlsContextManager");
    }

    public b1 a() {
        return this.f41369a;
    }

    @Override // ih.b, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        e eVar = this.f41371c;
        if (eVar != null) {
            if (this.f41369a instanceof i1) {
                this.f41370b.b(eVar);
            } else {
                this.f41370b.a(eVar);
            }
        }
        this.f41371c = null;
        this.f41372d = true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.f41369a, fVar.f41369a) && Objects.equals(this.f41370b, fVar.f41370b);
    }

    public int hashCode() {
        return Objects.hash(this.f41369a, this.f41370b);
    }

    public String toString() {
        return j.c(this).d("tlsContext", this.f41369a).d("tlsContextManager", this.f41370b).d("sslContextProvider", this.f41371c).e("shutdown", this.f41372d).toString();
    }
}
