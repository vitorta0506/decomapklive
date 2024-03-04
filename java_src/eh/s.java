package eh;

import com.google.common.collect.ImmutableList;
import eh.l1;
/* loaded from: classes5.dex */
final class s extends n1 {

    /* renamed from: a  reason: collision with root package name */
    private final long f39241a;

    /* renamed from: b  reason: collision with root package name */
    private final String f39242b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableList<l2> f39243c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableList<l1.c> f39244d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(long j10, String str, ImmutableList<l2> immutableList, ImmutableList<l1.c> immutableList2) {
        this.f39241a = j10;
        this.f39242b = str;
        this.f39243c = immutableList;
        this.f39244d = immutableList2;
    }

    @Override // eh.n1
    ImmutableList<l1.c> d() {
        return this.f39244d;
    }

    @Override // eh.n1
    long e() {
        return this.f39241a;
    }

    public boolean equals(Object obj) {
        String str;
        ImmutableList<l2> immutableList;
        if (obj == this) {
            return true;
        }
        if (obj instanceof n1) {
            n1 n1Var = (n1) obj;
            if (this.f39241a == n1Var.e() && ((str = this.f39242b) != null ? str.equals(n1Var.f()) : n1Var.f() == null) && ((immutableList = this.f39243c) != null ? immutableList.equals(n1Var.g()) : n1Var.g() == null)) {
                ImmutableList<l1.c> immutableList2 = this.f39244d;
                if (immutableList2 == null) {
                    if (n1Var.d() == null) {
                        return true;
                    }
                } else if (immutableList2.equals(n1Var.d())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // eh.n1
    String f() {
        return this.f39242b;
    }

    @Override // eh.n1
    ImmutableList<l2> g() {
        return this.f39243c;
    }

    public int hashCode() {
        long j10 = this.f39241a;
        int i9 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        String str = this.f39242b;
        int hashCode = (i9 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        ImmutableList<l2> immutableList = this.f39243c;
        int hashCode2 = (hashCode ^ (immutableList == null ? 0 : immutableList.hashCode())) * 1000003;
        ImmutableList<l1.c> immutableList2 = this.f39244d;
        return hashCode2 ^ (immutableList2 != null ? immutableList2.hashCode() : 0);
    }

    public String toString() {
        return "HttpConnectionManager{httpMaxStreamDurationNano=" + this.f39241a + ", rdsName=" + this.f39242b + ", virtualHosts=" + this.f39243c + ", httpFilterConfigs=" + this.f39244d + "}";
    }
}
