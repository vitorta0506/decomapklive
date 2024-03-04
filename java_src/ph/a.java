package ph;

import io.grpc.r;
import mh.g;
/* loaded from: classes7.dex */
class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final r f56889a;

    public a(r rVar) {
        this.f56889a = rVar;
    }

    @Override // mh.g
    public void a(g gVar) {
        this.f56889a.k(((a) gVar).f56889a);
    }

    @Override // mh.g
    public g b() {
        return new a(this.f56889a.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r c() {
        return this.f56889a;
    }
}
