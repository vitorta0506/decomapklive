package org.bouncycastle.cert;

import oj.l;
import oj.o;
import oj.w;
/* loaded from: classes7.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private w.b f56006a;

    /* renamed from: b  reason: collision with root package name */
    private o f56007b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(w.b bVar, boolean z10, o oVar) {
        l y10;
        this.f56006a = bVar;
        this.f56007b = oVar;
        if (z10 && bVar.B() && (y10 = bVar.x().y(l.f55778q)) != null) {
            this.f56007b = o.x(y10.F());
        }
    }

    public o a() {
        return this.f56007b;
    }
}
