package t4;
/* loaded from: classes2.dex */
final class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ s f58055a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(s sVar) {
        this.f58055a = sVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        b bVar;
        b bVar2;
        obj = this.f58055a.f58057b;
        synchronized (obj) {
            s sVar = this.f58055a;
            bVar = sVar.f58058c;
            if (bVar != null) {
                bVar2 = sVar.f58058c;
                bVar2.b();
            }
        }
    }
}
