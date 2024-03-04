package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.e;
import org.bouncycastle.pqc.crypto.xmss.g;
/* loaded from: classes7.dex */
class s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMSSNode a(i iVar, l lVar, g gVar) {
        double d10;
        Objects.requireNonNull(lVar, "publicKey == null");
        Objects.requireNonNull(gVar, "address == null");
        int a10 = iVar.d().a();
        byte[][] a11 = lVar.a();
        XMSSNode[] xMSSNodeArr = new XMSSNode[a11.length];
        for (int i9 = 0; i9 < a11.length; i9++) {
            xMSSNodeArr[i9] = new XMSSNode(0, a11[i9]);
        }
        g.b f10 = new g.b().g(gVar.b()).h(gVar.c()).n(gVar.e()).o(0).p(gVar.g()).f(gVar.a());
        while (true) {
            g gVar2 = (g) f10.l();
            if (a10 <= 1) {
                return xMSSNodeArr[0];
            }
            int i10 = 0;
            while (true) {
                d10 = a10 / 2;
                if (i10 >= ((int) Math.floor(d10))) {
                    break;
                }
                gVar2 = (g) new g.b().g(gVar2.b()).h(gVar2.c()).n(gVar2.e()).o(gVar2.f()).p(i10).f(gVar2.a()).l();
                int i11 = i10 * 2;
                xMSSNodeArr[i10] = b(iVar, xMSSNodeArr[i11], xMSSNodeArr[i11 + 1], gVar2);
                i10++;
            }
            if (a10 % 2 == 1) {
                xMSSNodeArr[(int) Math.floor(d10)] = xMSSNodeArr[a10 - 1];
            }
            a10 = (int) Math.ceil(a10 / 2.0d);
            f10 = new g.b().g(gVar2.b()).h(gVar2.c()).n(gVar2.e()).o(gVar2.f() + 1).p(gVar2.g()).f(gVar2.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static XMSSNode b(i iVar, XMSSNode xMSSNode, XMSSNode xMSSNode2, m mVar) {
        Objects.requireNonNull(xMSSNode, "left == null");
        Objects.requireNonNull(xMSSNode2, "right == null");
        if (xMSSNode.getHeight() == xMSSNode2.getHeight()) {
            Objects.requireNonNull(mVar, "address == null");
            byte[] f10 = iVar.f();
            if (mVar instanceof g) {
                g gVar = (g) mVar;
                mVar = (g) new g.b().g(gVar.b()).h(gVar.c()).n(gVar.e()).o(gVar.f()).p(gVar.g()).f(0).l();
            } else if (mVar instanceof e) {
                e eVar = (e) mVar;
                mVar = (e) new e.b().g(eVar.b()).h(eVar.c()).m(eVar.e()).n(eVar.f()).f(0).k();
            }
            byte[] c10 = iVar.c().c(f10, mVar.d());
            if (mVar instanceof g) {
                g gVar2 = (g) mVar;
                mVar = (g) new g.b().g(gVar2.b()).h(gVar2.c()).n(gVar2.e()).o(gVar2.f()).p(gVar2.g()).f(1).l();
            } else if (mVar instanceof e) {
                e eVar2 = (e) mVar;
                mVar = (e) new e.b().g(eVar2.b()).h(eVar2.c()).m(eVar2.e()).n(eVar2.f()).f(1).k();
            }
            byte[] c11 = iVar.c().c(f10, mVar.d());
            if (mVar instanceof g) {
                g gVar3 = (g) mVar;
                mVar = (g) new g.b().g(gVar3.b()).h(gVar3.c()).n(gVar3.e()).o(gVar3.f()).p(gVar3.g()).f(2).l();
            } else if (mVar instanceof e) {
                e eVar3 = (e) mVar;
                mVar = (e) new e.b().g(eVar3.b()).h(eVar3.c()).m(eVar3.e()).n(eVar3.f()).f(2).k();
            }
            byte[] c12 = iVar.c().c(f10, mVar.d());
            int c13 = iVar.d().c();
            byte[] bArr = new byte[c13 * 2];
            for (int i9 = 0; i9 < c13; i9++) {
                bArr[i9] = (byte) (xMSSNode.getValue()[i9] ^ c11[i9]);
            }
            for (int i10 = 0; i10 < c13; i10++) {
                bArr[i10 + c13] = (byte) (xMSSNode2.getValue()[i10] ^ c12[i10]);
            }
            return new XMSSNode(xMSSNode.getHeight(), iVar.c().b(c10, bArr));
        }
        throw new IllegalStateException("height of both nodes must be equal");
    }
}
