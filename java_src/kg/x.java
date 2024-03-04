package kg;

import com.facebook.appevents.integrity.IntegrityManager;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class x<T> implements y {

    /* renamed from: j  reason: collision with root package name */
    private static final Iterator<z> f53957j = Collections.emptyList().iterator();

    /* renamed from: a  reason: collision with root package name */
    private final v<T> f53958a;

    /* renamed from: b  reason: collision with root package name */
    private final x<T> f53959b;

    /* renamed from: c  reason: collision with root package name */
    private final int f53960c;

    /* renamed from: d  reason: collision with root package name */
    private final int f53961d;

    /* renamed from: e  reason: collision with root package name */
    private final int f53962e;

    /* renamed from: f  reason: collision with root package name */
    private w<T> f53963f;

    /* renamed from: g  reason: collision with root package name */
    private final int f53964g;

    /* renamed from: h  reason: collision with root package name */
    private final int f53965h;

    /* renamed from: i  reason: collision with root package name */
    private x<T> f53966i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(v<T> vVar, x<T> xVar, int i9, int i10, int i11) {
        this.f53958a = vVar;
        this.f53959b = xVar;
        this.f53960c = i9;
        this.f53961d = i10;
        this.f53962e = g(i9, i11);
        this.f53964g = i10 == 100 ? 0 : (int) ((i11 * ((100.0d - i10) + 0.99999999d)) / 100.0d);
        this.f53965h = i9 != 100 ? (int) ((i11 * ((100.0d - i9) + 0.99999999d)) / 100.0d) : 0;
    }

    private void B(w<T> wVar) {
        if (wVar == this.f53963f) {
            w<T> wVar2 = wVar.f53953p;
            this.f53963f = wVar2;
            if (wVar2 != null) {
                wVar2.f53952o = null;
                return;
            }
            return;
        }
        w<T> wVar3 = wVar.f53953p;
        w<T> wVar4 = wVar.f53952o;
        wVar4.f53953p = wVar3;
        if (wVar3 != null) {
            wVar3.f53952o = wVar4;
        }
    }

    private static int g(int i9, int i10) {
        int u10 = u(i9);
        if (u10 == 100) {
            return 0;
        }
        return (int) ((i10 * (100 - u10)) / 100);
    }

    private static int u(int i9) {
        return Math.max(1, i9);
    }

    private boolean x(w<T> wVar) {
        if (wVar.f53949l > this.f53965h) {
            return y(wVar);
        }
        d(wVar);
        return true;
    }

    private boolean y(w<T> wVar) {
        x<T> xVar = this.f53966i;
        if (xVar == null) {
            return false;
        }
        return xVar.x(wVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(w<T> wVar) {
        if (wVar.f53949l <= this.f53964g) {
            this.f53959b.c(wVar);
        } else {
            d(wVar);
        }
    }

    void d(w<T> wVar) {
        wVar.f53951n = this;
        w<T> wVar2 = this.f53963f;
        if (wVar2 == null) {
            this.f53963f = wVar;
            wVar.f53952o = null;
            wVar.f53953p = null;
            return;
        }
        wVar.f53952o = null;
        wVar.f53953p = wVar2;
        wVar2.f53952o = wVar;
        this.f53963f = wVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(c0<T> c0Var, int i9, int i10, b0 b0Var) {
        if (this.f53958a.l(i10) > this.f53962e) {
            return false;
        }
        for (w<T> wVar = this.f53963f; wVar != null; wVar = wVar.f53953p) {
            if (wVar.b(c0Var, i9, i10, b0Var)) {
                if (wVar.f53949l <= this.f53964g) {
                    B(wVar);
                    this.f53959b.c(wVar);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<z> iterator() {
        synchronized (this.f53958a) {
            if (this.f53963f == null) {
                return f53957j;
            }
            ArrayList arrayList = new ArrayList();
            w<T> wVar = this.f53963f;
            do {
                arrayList.add(wVar);
                wVar = wVar.f53953p;
            } while (wVar != null);
            return arrayList.iterator();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(v<T> vVar) {
        for (w<T> wVar = this.f53963f; wVar != null; wVar = wVar.f53953p) {
            vVar.r(wVar);
        }
        this.f53963f = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n(w<T> wVar, long j10, int i9, ByteBuffer byteBuffer) {
        wVar.k(j10, i9, byteBuffer);
        if (wVar.f53949l > this.f53965h) {
            B(wVar);
            return y(wVar);
        }
        return true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.f53958a) {
            w<T> wVar = this.f53963f;
            if (wVar == null) {
                return IntegrityManager.INTEGRITY_TYPE_NONE;
            }
            while (true) {
                sb2.append(wVar);
                wVar = wVar.f53953p;
                if (wVar == null) {
                    return sb2.toString();
                }
                sb2.append(io.grpc.netty.shaded.io.netty.util.internal.b0.f45033a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(x<T> xVar) {
        this.f53966i = xVar;
    }
}
