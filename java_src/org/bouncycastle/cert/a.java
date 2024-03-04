package org.bouncycastle.cert;

import oj.p;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class a implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    final p f56003a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(s sVar) {
        this.f56003a = p.x(sVar);
    }

    public Object clone() {
        return new a((s) this.f56003a.f());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            return this.f56003a.equals(((a) obj).f56003a);
        }
        return false;
    }

    public int hashCode() {
        return this.f56003a.hashCode();
    }
}
