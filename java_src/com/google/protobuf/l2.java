package com.google.protobuf;

import com.google.protobuf.a;
import com.google.protobuf.a.AbstractC0142a;
import com.google.protobuf.r1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class l2<MType extends a, BType extends a.AbstractC0142a, IType extends r1> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private a.b f15048a;

    /* renamed from: b  reason: collision with root package name */
    private List<MType> f15049b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15050c;

    /* renamed from: d  reason: collision with root package name */
    private List<q2<MType, BType, IType>> f15051d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15052e;

    public l2(List<MType> list, boolean z10, a.b bVar, boolean z11) {
        this.f15049b = list;
        this.f15050c = z10;
        this.f15048a = bVar;
        this.f15052e = z11;
    }

    private void g() {
        if (this.f15051d == null) {
            this.f15051d = new ArrayList(this.f15049b.size());
            for (int i9 = 0; i9 < this.f15049b.size(); i9++) {
                this.f15051d.add(null);
            }
        }
    }

    private void h() {
        if (this.f15050c) {
            return;
        }
        this.f15049b = new ArrayList(this.f15049b);
        this.f15050c = true;
    }

    private MType i(int i9, boolean z10) {
        List<q2<MType, BType, IType>> list = this.f15051d;
        if (list == null) {
            return this.f15049b.get(i9);
        }
        q2<MType, BType, IType> q2Var = list.get(i9);
        if (q2Var == null) {
            return this.f15049b.get(i9);
        }
        return z10 ? q2Var.b() : q2Var.d();
    }

    private void j() {
    }

    private void l() {
        a.b bVar;
        if (!this.f15052e || (bVar = this.f15048a) == null) {
            return;
        }
        bVar.a();
        this.f15052e = false;
    }

    @Override // com.google.protobuf.a.b
    public void a() {
        l();
    }

    public l2<MType, BType, IType> b(Iterable<? extends MType> iterable) {
        for (MType mtype : iterable) {
            u0.a(mtype);
        }
        int i9 = -1;
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return this;
            }
            i9 = collection.size();
        }
        h();
        if (i9 >= 0) {
            List<MType> list = this.f15049b;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i9);
            }
        }
        for (MType mtype2 : iterable) {
            d(mtype2);
        }
        l();
        j();
        return this;
    }

    public BType c(MType mtype) {
        h();
        g();
        q2<MType, BType, IType> q2Var = new q2<>(mtype, this, this.f15052e);
        this.f15049b.add(null);
        this.f15051d.add(q2Var);
        l();
        j();
        return q2Var.c();
    }

    public l2<MType, BType, IType> d(MType mtype) {
        u0.a(mtype);
        h();
        this.f15049b.add(mtype);
        List<q2<MType, BType, IType>> list = this.f15051d;
        if (list != null) {
            list.add(null);
        }
        l();
        j();
        return this;
    }

    public List<MType> e() {
        boolean z10;
        this.f15052e = true;
        boolean z11 = this.f15050c;
        if (!z11 && this.f15051d == null) {
            return this.f15049b;
        }
        if (!z11) {
            int i9 = 0;
            while (true) {
                if (i9 >= this.f15049b.size()) {
                    z10 = true;
                    break;
                }
                MType mtype = this.f15049b.get(i9);
                q2<MType, BType, IType> q2Var = this.f15051d.get(i9);
                if (q2Var != null && q2Var.b() != mtype) {
                    z10 = false;
                    break;
                }
                i9++;
            }
            if (z10) {
                return this.f15049b;
            }
        }
        h();
        for (int i10 = 0; i10 < this.f15049b.size(); i10++) {
            this.f15049b.set(i10, i(i10, true));
        }
        List<MType> unmodifiableList = Collections.unmodifiableList(this.f15049b);
        this.f15049b = unmodifiableList;
        this.f15050c = false;
        return unmodifiableList;
    }

    public void f() {
        this.f15048a = null;
    }

    public boolean k() {
        return this.f15049b.isEmpty();
    }
}
