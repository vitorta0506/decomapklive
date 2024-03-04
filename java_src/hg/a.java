package hg;

import com.google.common.base.o;
import io.grpc.x;
/* loaded from: classes5.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private final x f40655a;

    /* renamed from: b  reason: collision with root package name */
    private final String f40656b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(x xVar, String str) {
        this.f40655a = (x) o.t(xVar, "addresses");
        this.f40656b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x a() {
        return this.f40655a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f40656b;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f40655a);
        if (this.f40656b != null) {
            sb2.append("(");
            sb2.append(this.f40656b);
            sb2.append(")");
        }
        return sb2.toString();
    }
}
