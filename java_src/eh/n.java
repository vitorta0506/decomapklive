package eh;

import com.google.common.collect.ImmutableList;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class n extends h1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f38897a;

    /* renamed from: b  reason: collision with root package name */
    private final String f38898b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<f1> f38899c;

    /* renamed from: d  reason: collision with root package name */
    private final f1 f38900d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(String str, String str2, ImmutableList<f1> immutableList, f1 f1Var) {
        Objects.requireNonNull(str, "Null name");
        this.f38897a = str;
        this.f38898b = str2;
        Objects.requireNonNull(immutableList, "Null filterChains");
        this.f38899c = immutableList;
        this.f38900d = f1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.h1
    public String a() {
        return this.f38898b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.h1
    public f1 c() {
        return this.f38900d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.h1
    public ImmutableList<f1> d() {
        return this.f38899c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.h1
    public String e() {
        return this.f38897a;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof h1) {
            h1 h1Var = (h1) obj;
            if (this.f38897a.equals(h1Var.e()) && ((str = this.f38898b) != null ? str.equals(h1Var.a()) : h1Var.a() == null) && this.f38899c.equals(h1Var.d())) {
                f1 f1Var = this.f38900d;
                if (f1Var == null) {
                    if (h1Var.c() == null) {
                        return true;
                    }
                } else if (f1Var.equals(h1Var.c())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (this.f38897a.hashCode() ^ 1000003) * 1000003;
        String str = this.f38898b;
        int hashCode2 = (((hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f38899c.hashCode()) * 1000003;
        f1 f1Var = this.f38900d;
        return hashCode2 ^ (f1Var != null ? f1Var.hashCode() : 0);
    }

    public String toString() {
        return "Listener{name=" + this.f38897a + ", address=" + this.f38898b + ", filterChains=" + this.f38899c + ", defaultFilterChain=" + this.f38900d + "}";
    }
}
