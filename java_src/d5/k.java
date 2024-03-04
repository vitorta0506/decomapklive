package d5;
/* loaded from: classes2.dex */
final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f37927a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ l f37928b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(l lVar, d dVar) {
        this.f37928b = lVar;
        this.f37927a = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        c cVar;
        c cVar2;
        obj = this.f37928b.f37930b;
        synchronized (obj) {
            l lVar = this.f37928b;
            cVar = lVar.f37931c;
            if (cVar != null) {
                cVar2 = lVar.f37931c;
                cVar2.onSuccess(this.f37927a.e());
            }
        }
    }
}
