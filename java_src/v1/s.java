package v1;

import java.util.concurrent.Executor;
import x1.a;
/* loaded from: classes.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f58675a;

    /* renamed from: b  reason: collision with root package name */
    private final w1.d f58676b;

    /* renamed from: c  reason: collision with root package name */
    private final u f58677c;

    /* renamed from: d  reason: collision with root package name */
    private final x1.a f58678d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Executor executor, w1.d dVar, u uVar, x1.a aVar) {
        this.f58675a = executor;
        this.f58676b = dVar;
        this.f58677c = uVar;
        this.f58678d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d() {
        for (n1.o oVar : this.f58676b.H()) {
            this.f58677c.b(oVar, 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f58678d.b(new a.InterfaceC0685a() { // from class: v1.r
            @Override // x1.a.InterfaceC0685a
            public final Object execute() {
                Object d10;
                d10 = s.this.d();
                return d10;
            }
        });
    }

    public void c() {
        this.f58675a.execute(new Runnable() { // from class: v1.q
            @Override // java.lang.Runnable
            public final void run() {
                s.this.e();
            }
        });
    }
}
