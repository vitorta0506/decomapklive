package b5;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f1185a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f1186b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f1187c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ o f1188d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(o oVar, a aVar, int i9, int i10) {
        this.f1188d = oVar;
        this.f1185a = aVar;
        this.f1186b = i9;
        this.f1187c = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o oVar = this.f1188d;
        a aVar = this.f1185a;
        oVar.i(new c(aVar.d(), this.f1186b, this.f1187c, aVar.a(), aVar.f(), aVar.h(), aVar.g(), aVar.c(), aVar.i()));
    }
}
