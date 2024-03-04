package u1;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import n1.o;
import n1.t;
import o1.k;
import v1.u;
import x1.a;
/* loaded from: classes.dex */
public class c implements e {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f58302f = Logger.getLogger(t.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final u f58303a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f58304b;

    /* renamed from: c  reason: collision with root package name */
    private final o1.d f58305c;

    /* renamed from: d  reason: collision with root package name */
    private final w1.d f58306d;

    /* renamed from: e  reason: collision with root package name */
    private final x1.a f58307e;

    public c(Executor executor, o1.d dVar, u uVar, w1.d dVar2, x1.a aVar) {
        this.f58304b = executor;
        this.f58305c = dVar;
        this.f58303a = uVar;
        this.f58306d = dVar2;
        this.f58307e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object d(o oVar, n1.i iVar) {
        this.f58306d.Q0(oVar, iVar);
        this.f58303a.b(oVar, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(final o oVar, l1.g gVar, n1.i iVar) {
        try {
            k kVar = this.f58305c.get(oVar.b());
            if (kVar == null) {
                String format = String.format("Transport backend '%s' is not registered", oVar.b());
                f58302f.warning(format);
                gVar.a(new IllegalArgumentException(format));
                return;
            }
            final n1.i a10 = kVar.a(iVar);
            this.f58307e.b(new a.InterfaceC0685a() { // from class: u1.b
                @Override // x1.a.InterfaceC0685a
                public final Object execute() {
                    Object d10;
                    d10 = c.this.d(oVar, a10);
                    return d10;
                }
            });
            gVar.a(null);
        } catch (Exception e10) {
            Logger logger = f58302f;
            logger.warning("Error scheduling event " + e10.getMessage());
            gVar.a(e10);
        }
    }

    @Override // u1.e
    public void a(final o oVar, final n1.i iVar, final l1.g gVar) {
        this.f58304b.execute(new Runnable() { // from class: u1.a
            @Override // java.lang.Runnable
            public final void run() {
                c.this.e(oVar, gVar, iVar);
            }
        });
    }
}
