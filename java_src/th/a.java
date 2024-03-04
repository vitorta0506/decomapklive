package th;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.f;
import io.reactivex.internal.util.i;
import java.util.ArrayList;
/* loaded from: classes7.dex */
public final class a implements b, wh.a {

    /* renamed from: a  reason: collision with root package name */
    i<b> f58204a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f58205b;

    @Override // wh.a
    public boolean a(b bVar) {
        if (c(bVar)) {
            bVar.dispose();
            return true;
        }
        return false;
    }

    @Override // wh.a
    public boolean b(b bVar) {
        xh.b.e(bVar, "disposable is null");
        if (!this.f58205b) {
            synchronized (this) {
                if (!this.f58205b) {
                    i<b> iVar = this.f58204a;
                    if (iVar == null) {
                        iVar = new i<>();
                        this.f58204a = iVar;
                    }
                    iVar.a(bVar);
                    return true;
                }
            }
        }
        bVar.dispose();
        return false;
    }

    @Override // wh.a
    public boolean c(b bVar) {
        xh.b.e(bVar, "disposables is null");
        if (this.f58205b) {
            return false;
        }
        synchronized (this) {
            if (this.f58205b) {
                return false;
            }
            i<b> iVar = this.f58204a;
            if (iVar != null && iVar.e(bVar)) {
                return true;
            }
            return false;
        }
    }

    void d(i<b> iVar) {
        Object[] b10;
        if (iVar == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : iVar.b()) {
            if (obj instanceof b) {
                try {
                    ((b) obj).dispose();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th2);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() == 1) {
                throw f.d((Throwable) arrayList.get(0));
            }
            throw new CompositeException(arrayList);
        }
    }

    @Override // th.b
    public void dispose() {
        if (this.f58205b) {
            return;
        }
        synchronized (this) {
            if (this.f58205b) {
                return;
            }
            this.f58205b = true;
            i<b> iVar = this.f58204a;
            this.f58204a = null;
            d(iVar);
        }
    }

    public int e() {
        if (this.f58205b) {
            return 0;
        }
        synchronized (this) {
            if (this.f58205b) {
                return 0;
            }
            i<b> iVar = this.f58204a;
            return iVar != null ? iVar.g() : 0;
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f58205b;
    }
}
