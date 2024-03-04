package t4;
/* loaded from: classes2.dex */
final class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f58069a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ y f58070b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(y yVar, g gVar) {
        this.f58070b = yVar;
        this.f58069a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        e eVar;
        e eVar2;
        obj = this.f58070b.f58072b;
        synchronized (obj) {
            y yVar = this.f58070b;
            eVar = yVar.f58073c;
            if (eVar != null) {
                eVar2 = yVar.f58073c;
                eVar2.onSuccess(this.f58069a.k());
            }
        }
    }
}
