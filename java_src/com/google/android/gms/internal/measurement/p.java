package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class p extends j {

    /* renamed from: c  reason: collision with root package name */
    protected final List f8245c;

    /* renamed from: d  reason: collision with root package name */
    protected final List f8246d;

    /* renamed from: e  reason: collision with root package name */
    protected t4 f8247e;

    private p(p pVar) {
        super(pVar.f8138a);
        ArrayList arrayList = new ArrayList(pVar.f8245c.size());
        this.f8245c = arrayList;
        arrayList.addAll(pVar.f8245c);
        ArrayList arrayList2 = new ArrayList(pVar.f8246d.size());
        this.f8246d = arrayList2;
        arrayList2.addAll(pVar.f8246d);
        this.f8247e = pVar.f8247e;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final q b(t4 t4Var, List list) {
        t4 a10 = this.f8247e.a();
        for (int i9 = 0; i9 < this.f8245c.size(); i9++) {
            if (i9 < list.size()) {
                a10.e((String) this.f8245c.get(i9), t4Var.b((q) list.get(i9)));
            } else {
                a10.e((String) this.f8245c.get(i9), q.U);
            }
        }
        for (q qVar : this.f8246d) {
            q b10 = a10.b(qVar);
            if (b10 instanceof r) {
                b10 = a10.b(qVar);
            }
            if (b10 instanceof h) {
                return ((h) b10).b();
            }
        }
        return q.U;
    }

    @Override // com.google.android.gms.internal.measurement.j, com.google.android.gms.internal.measurement.q
    public final q c() {
        return new p(this);
    }

    public p(String str, List list, List list2, t4 t4Var) {
        super(str);
        this.f8245c = new ArrayList();
        this.f8247e = t4Var;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.f8245c.add(((q) it.next()).d());
            }
        }
        this.f8246d = new ArrayList(list2);
    }
}
