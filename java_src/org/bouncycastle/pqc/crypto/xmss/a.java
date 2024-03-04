package org.bouncycastle.pqc.crypto.xmss;

import java.io.Serializable;
import java.util.Objects;
import java.util.Stack;
import org.bouncycastle.pqc.crypto.xmss.e;
import org.bouncycastle.pqc.crypto.xmss.g;
import org.bouncycastle.pqc.crypto.xmss.h;
/* loaded from: classes7.dex */
class a implements Serializable, Cloneable {
    private static final long serialVersionUID = 1;

    /* renamed from: a  reason: collision with root package name */
    private XMSSNode f56128a;

    /* renamed from: b  reason: collision with root package name */
    private final int f56129b;

    /* renamed from: c  reason: collision with root package name */
    private int f56130c;

    /* renamed from: d  reason: collision with root package name */
    private int f56131d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f56132e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56133f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(int i9) {
        this.f56129b = i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public a clone() {
        a aVar = new a(this.f56129b);
        aVar.f56128a = this.f56128a;
        aVar.f56130c = this.f56130c;
        aVar.f56131d = this.f56131d;
        aVar.f56132e = this.f56132e;
        aVar.f56133f = this.f56133f;
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f56131d;
    }

    public XMSSNode d() {
        return this.f56128a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i9) {
        this.f56128a = null;
        this.f56130c = this.f56129b;
        this.f56131d = i9;
        this.f56132e = true;
        this.f56133f = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f56133f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.f56132e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHeight() {
        if (!this.f56132e || this.f56133f) {
            return Integer.MAX_VALUE;
        }
        return this.f56130c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(XMSSNode xMSSNode) {
        this.f56128a = xMSSNode;
        int height = xMSSNode.getHeight();
        this.f56130c = height;
        if (height == this.f56129b) {
            this.f56133f = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(Stack<XMSSNode> stack, i iVar, byte[] bArr, byte[] bArr2, h hVar) {
        Objects.requireNonNull(hVar, "otsHashAddress == null");
        if (this.f56133f || !this.f56132e) {
            throw new IllegalStateException("finished or not initialized");
        }
        h hVar2 = (h) new h.b().g(hVar.b()).h(hVar.c()).p(this.f56131d).n(hVar.e()).o(hVar.f()).f(hVar.a()).l();
        e eVar = (e) new e.b().g(hVar2.b()).h(hVar2.c()).n(this.f56131d).k();
        iVar.h(iVar.g(bArr2, hVar2), bArr);
        XMSSNode a10 = s.a(iVar, iVar.e(hVar2), (g) new g.b().g(hVar2.b()).h(hVar2.c()).n(this.f56131d).l());
        while (!stack.isEmpty() && stack.peek().getHeight() == a10.getHeight() && stack.peek().getHeight() != this.f56129b) {
            e eVar2 = (e) new e.b().g(eVar.b()).h(eVar.c()).m(eVar.e()).n((eVar.f() - 1) / 2).f(eVar.a()).k();
            XMSSNode b10 = s.b(iVar, stack.pop(), a10, eVar2);
            XMSSNode xMSSNode = new XMSSNode(b10.getHeight() + 1, b10.getValue());
            eVar = (e) new e.b().g(eVar2.b()).h(eVar2.c()).m(eVar2.e() + 1).n(eVar2.f()).f(eVar2.a()).k();
            a10 = xMSSNode;
        }
        XMSSNode xMSSNode2 = this.f56128a;
        if (xMSSNode2 == null) {
            this.f56128a = a10;
        } else if (xMSSNode2.getHeight() == a10.getHeight()) {
            e eVar3 = (e) new e.b().g(eVar.b()).h(eVar.c()).m(eVar.e()).n((eVar.f() - 1) / 2).f(eVar.a()).k();
            a10 = new XMSSNode(this.f56128a.getHeight() + 1, s.b(iVar, this.f56128a, a10, eVar3).getValue());
            this.f56128a = a10;
            e eVar4 = (e) new e.b().g(eVar3.b()).h(eVar3.c()).m(eVar3.e() + 1).n(eVar3.f()).f(eVar3.a()).k();
        } else {
            stack.push(a10);
        }
        if (this.f56128a.getHeight() == this.f56129b) {
            this.f56133f = true;
            return;
        }
        this.f56130c = a10.getHeight();
        this.f56131d++;
    }
}
