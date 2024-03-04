package mk;

import java.math.BigInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class d implements f {

    /* renamed from: a  reason: collision with root package name */
    protected final a f55171a;

    /* renamed from: b  reason: collision with root package name */
    protected final e f55172b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar, e eVar) {
        this.f55171a = aVar;
        this.f55172b = eVar;
    }

    @Override // mk.a
    public int a() {
        return this.f55171a.a() * this.f55172b.b();
    }

    @Override // mk.a
    public BigInteger b() {
        return this.f55171a.b();
    }

    @Override // mk.f
    public e c() {
        return this.f55172b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f55171a.equals(dVar.f55171a) && this.f55172b.equals(dVar.f55172b);
        }
        return false;
    }

    public int hashCode() {
        return this.f55171a.hashCode() ^ org.bouncycastle.util.e.c(this.f55172b.hashCode(), 16);
    }
}
