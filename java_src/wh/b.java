package wh;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.f;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes7.dex */
public final class b implements th.b, a {

    /* renamed from: a  reason: collision with root package name */
    List<th.b> f59506a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f59507b;

    @Override // wh.a
    public boolean a(th.b bVar) {
        if (c(bVar)) {
            bVar.dispose();
            return true;
        }
        return false;
    }

    @Override // wh.a
    public boolean b(th.b bVar) {
        xh.b.e(bVar, "d is null");
        if (!this.f59507b) {
            synchronized (this) {
                if (!this.f59507b) {
                    List list = this.f59506a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f59506a = list;
                    }
                    list.add(bVar);
                    return true;
                }
            }
        }
        bVar.dispose();
        return false;
    }

    @Override // wh.a
    public boolean c(th.b bVar) {
        xh.b.e(bVar, "Disposable item is null");
        if (this.f59507b) {
            return false;
        }
        synchronized (this) {
            if (this.f59507b) {
                return false;
            }
            List<th.b> list = this.f59506a;
            if (list != null && list.remove(bVar)) {
                return true;
            }
            return false;
        }
    }

    void d(List<th.b> list) {
        if (list == null) {
            return;
        }
        ArrayList arrayList = null;
        for (th.b bVar : list) {
            try {
                bVar.dispose();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th2);
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
        if (this.f59507b) {
            return;
        }
        synchronized (this) {
            if (this.f59507b) {
                return;
            }
            this.f59507b = true;
            List<th.b> list = this.f59506a;
            this.f59506a = null;
            d(list);
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.f59507b;
    }
}
