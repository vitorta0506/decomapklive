package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class v extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f37497a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37499c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f37501e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f37503g;

    /* renamed from: b  reason: collision with root package name */
    private int f37498b = 0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f37500d = false;

    /* renamed from: f  reason: collision with root package name */
    private int f37502f = 0;

    /* renamed from: h  reason: collision with root package name */
    private boolean f37504h = false;

    /* renamed from: i  reason: collision with root package name */
    private List<String> f37505i = Collections.emptyList();

    /* renamed from: j  reason: collision with root package name */
    private int f37506j = -1;

    public static v n(byte[] bArr) {
        return (v) new v().c(bArr);
    }

    public static v r(l0 l0Var) {
        return new v().b(l0Var);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f37506j < 0) {
            i();
        }
        return this.f37506j;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (p()) {
            cVar.L(1, u());
        }
        if (v()) {
            cVar.y(2, t());
        }
        if (x()) {
            cVar.t(3, w());
        }
        if (z()) {
            cVar.y(4, y());
        }
        for (String str : o()) {
            cVar.x(5, str);
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int i9 = 0;
        int H = p() ? c.H(1, u()) + 0 : 0;
        if (v()) {
            H += c.h(2, t());
        }
        if (x()) {
            H += c.c(3, w());
        }
        if (z()) {
            H += c.h(4, y());
        }
        for (String str : o()) {
            i9 += c.l(str);
        }
        int size = H + i9 + (o().size() * 1);
        this.f37506j = size;
        return size;
    }

    public v j(int i9) {
        this.f37497a = true;
        this.f37498b = i9;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: k */
    public v b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 8) {
                j(l0Var.u());
            } else if (b10 == 16) {
                m(l0Var.l());
            } else if (b10 == 24) {
                q(l0Var.p());
            } else if (b10 == 32) {
                s(l0Var.l());
            } else if (b10 == 42) {
                l(l0Var.h());
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public v l(String str) {
        Objects.requireNonNull(str);
        if (this.f37505i.isEmpty()) {
            this.f37505i = new ArrayList();
        }
        this.f37505i.add(str);
        return this;
    }

    public v m(boolean z10) {
        this.f37499c = true;
        this.f37500d = z10;
        return this;
    }

    public List<String> o() {
        return this.f37505i;
    }

    public boolean p() {
        return this.f37497a;
    }

    public v q(int i9) {
        this.f37501e = true;
        this.f37502f = i9;
        return this;
    }

    public v s(boolean z10) {
        this.f37503g = true;
        this.f37504h = z10;
        return this;
    }

    public boolean t() {
        return this.f37500d;
    }

    public int u() {
        return this.f37498b;
    }

    public boolean v() {
        return this.f37499c;
    }

    public int w() {
        return this.f37502f;
    }

    public boolean x() {
        return this.f37501e;
    }

    public boolean y() {
        return this.f37504h;
    }

    public boolean z() {
        return this.f37503g;
    }
}
