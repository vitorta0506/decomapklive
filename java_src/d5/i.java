package d5;
/* loaded from: classes2.dex */
final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f37922a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ j f37923b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(j jVar, d dVar) {
        this.f37923b = jVar;
        this.f37922a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        b bVar;
        b bVar2;
        obj = this.f37923b.f37925b;
        synchronized (obj) {
            j jVar = this.f37923b;
            bVar = jVar.f37926c;
            if (bVar != null) {
                bVar2 = jVar.f37926c;
                bVar2.a(this.f37922a.d());
            }
        }
    }
}
