package n1;

import java.util.Set;
/* loaded from: classes.dex */
final class p implements l1.f {

    /* renamed from: a  reason: collision with root package name */
    private final Set<l1.b> f55273a;

    /* renamed from: b  reason: collision with root package name */
    private final o f55274b;

    /* renamed from: c  reason: collision with root package name */
    private final s f55275c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Set<l1.b> set, o oVar, s sVar) {
        this.f55273a = set;
        this.f55274b = oVar;
        this.f55275c = sVar;
    }

    @Override // l1.f
    public <T> l1.e<T> a(String str, Class<T> cls, l1.b bVar, l1.d<T, byte[]> dVar) {
        if (this.f55273a.contains(bVar)) {
            return new r(this.f55274b, str, bVar, dVar, this.f55275c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f55273a));
    }
}
