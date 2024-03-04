package t4;
/* loaded from: classes2.dex */
final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f58064a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w f58065b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(w wVar, g gVar) {
        this.f58065b = wVar;
        this.f58064a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        d dVar;
        d dVar2;
        obj = this.f58065b.f58067b;
        synchronized (obj) {
            w wVar = this.f58065b;
            dVar = wVar.f58068c;
            if (dVar != null) {
                dVar2 = wVar.f58068c;
                dVar2.a((Exception) com.google.android.gms.common.internal.p.j(this.f58064a.j()));
            }
        }
    }
}
