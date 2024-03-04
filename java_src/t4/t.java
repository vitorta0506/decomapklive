package t4;
/* loaded from: classes2.dex */
final class t implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f58059a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ u f58060b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(u uVar, g gVar) {
        this.f58060b = uVar;
        this.f58059a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        c cVar;
        c cVar2;
        obj = this.f58060b.f58062b;
        synchronized (obj) {
            u uVar = this.f58060b;
            cVar = uVar.f58063c;
            if (cVar != null) {
                cVar2 = uVar.f58063c;
                cVar2.a(this.f58059a);
            }
        }
    }
}
