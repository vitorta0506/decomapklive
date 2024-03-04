package d5;
/* loaded from: classes2.dex */
final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f37917a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ h f37918b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(h hVar, d dVar) {
        this.f37918b = hVar;
        this.f37917a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        a aVar;
        a aVar2;
        obj = this.f37918b.f37920b;
        synchronized (obj) {
            h hVar = this.f37918b;
            aVar = hVar.f37921c;
            if (aVar != null) {
                aVar2 = hVar.f37921c;
                aVar2.a(this.f37917a);
            }
        }
    }
}
