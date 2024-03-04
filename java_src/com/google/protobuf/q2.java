package com.google.protobuf;

import com.google.protobuf.a;
import com.google.protobuf.a.AbstractC0142a;
import com.google.protobuf.r1;
/* loaded from: classes3.dex */
public class q2<MType extends a, BType extends a.AbstractC0142a, IType extends r1> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private a.b f15202a;

    /* renamed from: b  reason: collision with root package name */
    private BType f15203b;

    /* renamed from: c  reason: collision with root package name */
    private MType f15204c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15205d;

    public q2(MType mtype, a.b bVar, boolean z10) {
        this.f15204c = (MType) u0.a(mtype);
        this.f15202a = bVar;
        this.f15205d = z10;
    }

    private void f() {
        a.b bVar;
        if (this.f15203b != null) {
            this.f15204c = null;
        }
        if (!this.f15205d || (bVar = this.f15202a) == null) {
            return;
        }
        bVar.a();
        this.f15205d = false;
    }

    @Override // com.google.protobuf.a.b
    public void a() {
        f();
    }

    public MType b() {
        this.f15205d = true;
        return d();
    }

    public BType c() {
        if (this.f15203b == null) {
            BType btype = (BType) this.f15204c.newBuilderForType(this);
            this.f15203b = btype;
            btype.P0(this.f15204c);
            this.f15203b.q();
        }
        return this.f15203b;
    }

    public MType d() {
        if (this.f15204c == null) {
            this.f15204c = (MType) this.f15203b.I();
        }
        return this.f15204c;
    }

    public q2<MType, BType, IType> e(MType mtype) {
        if (this.f15203b == null) {
            l1 l1Var = this.f15204c;
            if (l1Var == l1Var.getDefaultInstanceForType()) {
                this.f15204c = mtype;
                f();
                return this;
            }
        }
        c().P0(mtype);
        f();
        return this;
    }

    public q2<MType, BType, IType> g(MType mtype) {
        this.f15204c = (MType) u0.a(mtype);
        BType btype = this.f15203b;
        if (btype != null) {
            btype.o();
            this.f15203b = null;
        }
        f();
        return this;
    }
}
