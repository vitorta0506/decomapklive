package vj;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class h implements org.bouncycastle.crypto.c {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f59208a;

    /* renamed from: b  reason: collision with root package name */
    private BigInteger f59209b;

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f59210c;

    /* renamed from: d  reason: collision with root package name */
    private k f59211d;

    public h(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f59208a = bigInteger3;
        this.f59210c = bigInteger;
        this.f59209b = bigInteger2;
    }

    public h(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, k kVar) {
        this.f59208a = bigInteger3;
        this.f59210c = bigInteger;
        this.f59209b = bigInteger2;
        this.f59211d = kVar;
    }

    public BigInteger a() {
        return this.f59208a;
    }

    public BigInteger b() {
        return this.f59210c;
    }

    public BigInteger c() {
        return this.f59209b;
    }

    public k d() {
        return this.f59211d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            h hVar = (h) obj;
            return hVar.b().equals(this.f59210c) && hVar.c().equals(this.f59209b) && hVar.a().equals(this.f59208a);
        }
        return false;
    }

    public int hashCode() {
        return (b().hashCode() ^ c().hashCode()) ^ a().hashCode();
    }
}
