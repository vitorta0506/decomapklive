package n1;
/* loaded from: classes.dex */
final class r<T> implements l1.e<T> {

    /* renamed from: a  reason: collision with root package name */
    private final o f55277a;

    /* renamed from: b  reason: collision with root package name */
    private final String f55278b;

    /* renamed from: c  reason: collision with root package name */
    private final l1.b f55279c;

    /* renamed from: d  reason: collision with root package name */
    private final l1.d<T, byte[]> f55280d;

    /* renamed from: e  reason: collision with root package name */
    private final s f55281e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(o oVar, String str, l1.b bVar, l1.d<T, byte[]> dVar, s sVar) {
        this.f55277a = oVar;
        this.f55278b = str;
        this.f55279c = bVar;
        this.f55280d = dVar;
        this.f55281e = sVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(Exception exc) {
    }

    @Override // l1.e
    public void a(l1.c<T> cVar) {
        d(cVar, new l1.g() { // from class: n1.q
            @Override // l1.g
            public final void a(Exception exc) {
                r.c(exc);
            }
        });
    }

    public void d(l1.c<T> cVar, l1.g gVar) {
        this.f55281e.a(n.a().e(this.f55277a).c(cVar).f(this.f55278b).d(this.f55280d).b(this.f55279c).a(), gVar);
    }
}
