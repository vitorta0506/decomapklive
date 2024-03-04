package eh;

import com.google.common.collect.ImmutableList;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class m extends g1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f38881a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<c1> f38882b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<String> f38883c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableList<c1> f38884d;

    /* renamed from: e  reason: collision with root package name */
    private final d1 f38885e;

    /* renamed from: f  reason: collision with root package name */
    private final ImmutableList<Integer> f38886f;

    /* renamed from: g  reason: collision with root package name */
    private final ImmutableList<String> f38887g;

    /* renamed from: h  reason: collision with root package name */
    private final String f38888h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(int i9, ImmutableList<c1> immutableList, ImmutableList<String> immutableList2, ImmutableList<c1> immutableList3, d1 d1Var, ImmutableList<Integer> immutableList4, ImmutableList<String> immutableList5, String str) {
        this.f38881a = i9;
        Objects.requireNonNull(immutableList, "Null prefixRanges");
        this.f38882b = immutableList;
        Objects.requireNonNull(immutableList2, "Null applicationProtocols");
        this.f38883c = immutableList2;
        Objects.requireNonNull(immutableList3, "Null sourcePrefixRanges");
        this.f38884d = immutableList3;
        Objects.requireNonNull(d1Var, "Null connectionSourceType");
        this.f38885e = d1Var;
        Objects.requireNonNull(immutableList4, "Null sourcePorts");
        this.f38886f = immutableList4;
        Objects.requireNonNull(immutableList5, "Null serverNames");
        this.f38887g = immutableList5;
        Objects.requireNonNull(str, "Null transportProtocol");
        this.f38888h = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public ImmutableList<String> a() {
        return this.f38883c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public d1 b() {
        return this.f38885e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public int d() {
        return this.f38881a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public ImmutableList<c1> e() {
        return this.f38882b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g1) {
            g1 g1Var = (g1) obj;
            return this.f38881a == g1Var.d() && this.f38882b.equals(g1Var.e()) && this.f38883c.equals(g1Var.a()) && this.f38884d.equals(g1Var.h()) && this.f38885e.equals(g1Var.b()) && this.f38886f.equals(g1Var.g()) && this.f38887g.equals(g1Var.f()) && this.f38888h.equals(g1Var.i());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public ImmutableList<String> f() {
        return this.f38887g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public ImmutableList<Integer> g() {
        return this.f38886f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public ImmutableList<c1> h() {
        return this.f38884d;
    }

    public int hashCode() {
        return ((((((((((((((this.f38881a ^ 1000003) * 1000003) ^ this.f38882b.hashCode()) * 1000003) ^ this.f38883c.hashCode()) * 1000003) ^ this.f38884d.hashCode()) * 1000003) ^ this.f38885e.hashCode()) * 1000003) ^ this.f38886f.hashCode()) * 1000003) ^ this.f38887g.hashCode()) * 1000003) ^ this.f38888h.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.g1
    public String i() {
        return this.f38888h;
    }

    public String toString() {
        return "FilterChainMatch{destinationPort=" + this.f38881a + ", prefixRanges=" + this.f38882b + ", applicationProtocols=" + this.f38883c + ", sourcePrefixRanges=" + this.f38884d + ", connectionSourceType=" + this.f38885e + ", sourcePorts=" + this.f38886f + ", serverNames=" + this.f38887g + ", transportProtocol=" + this.f38888h + "}";
    }
}
