package hg;

import androidx.core.app.NotificationCompat;
import com.google.common.base.o;
import com.google.common.base.u;
import hg.i;
import io.grpc.ChannelLogger;
import io.grpc.Status;
import io.grpc.internal.k;
import io.grpc.internal.m2;
import io.grpc.n0;
import io.grpc.r;
import io.grpc.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
class f extends n0 {

    /* renamed from: k  reason: collision with root package name */
    private static final d f40691k = d.a(i.m.ROUND_ROBIN);

    /* renamed from: c  reason: collision with root package name */
    private final n0.d f40692c;

    /* renamed from: d  reason: collision with root package name */
    private final r f40693d;

    /* renamed from: e  reason: collision with root package name */
    private final m2 f40694e;

    /* renamed from: f  reason: collision with root package name */
    private final u f40695f;

    /* renamed from: g  reason: collision with root package name */
    private final k f40696g;

    /* renamed from: h  reason: collision with root package name */
    private final k.a f40697h;

    /* renamed from: i  reason: collision with root package name */
    private d f40698i = f40691k;

    /* renamed from: j  reason: collision with root package name */
    private i f40699j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(n0.d dVar, r rVar, k kVar, m2 m2Var, u uVar, k.a aVar) {
        this.f40692c = (n0.d) o.t(dVar, "helper");
        this.f40693d = (r) o.t(rVar, "context");
        this.f40694e = (m2) o.t(m2Var, "time provider");
        this.f40695f = (u) o.t(uVar, NotificationCompat.CATEGORY_STOPWATCH);
        this.f40697h = (k.a) o.t(aVar, "backoffPolicyProvider");
        this.f40696g = (k) o.t(kVar, "subchannelPool");
        f();
        o.t(this.f40699j, "grpclbState");
    }

    private void f() {
        g();
        o.A(this.f40699j == null, "Should've been cleared");
        this.f40699j = new i(this.f40698i, this.f40692c, this.f40693d, this.f40696g, this.f40694e, this.f40695f, this.f40697h);
    }

    private void g() {
        i iVar = this.f40699j;
        if (iVar != null) {
            iVar.I();
            this.f40699j = null;
        }
    }

    @Override // io.grpc.n0
    public boolean a() {
        return true;
    }

    @Override // io.grpc.n0
    public void b(Status status) {
        i iVar = this.f40699j;
        if (iVar != null) {
            iVar.G(status);
        }
    }

    @Override // io.grpc.n0
    public void d(n0.g gVar) {
        List<x> list = (List) gVar.b().b(e.f40688c);
        if (list == null) {
            list = Collections.emptyList();
        }
        if (list.isEmpty() && gVar.a().isEmpty()) {
            b(Status.f41719u.r("No backend or balancer addresses found"));
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (x xVar : list) {
            String str = (String) xVar.b().b(e.f40689d);
            if (str != null) {
                arrayList.add(new x(xVar.a(), xVar.b().d().d(x.f45469d, str).a()));
            } else {
                throw new AssertionError("This is a bug: LB address " + xVar + " does not have an authority.");
            }
        }
        List<x> unmodifiableList = Collections.unmodifiableList(gVar.a());
        d dVar = (d) gVar.c();
        if (dVar == null) {
            dVar = f40691k;
        }
        if (!this.f40698i.equals(dVar)) {
            this.f40698i = dVar;
            ChannelLogger d10 = this.f40692c.d();
            ChannelLogger.ChannelLogLevel channelLogLevel = ChannelLogger.ChannelLogLevel.INFO;
            d10.a(channelLogLevel, "Config: " + dVar);
            f();
        }
        this.f40699j.B(Collections.unmodifiableList(arrayList), unmodifiableList);
    }

    @Override // io.grpc.n0
    public void e() {
        g();
    }
}
