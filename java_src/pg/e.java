package pg;

import com.facebook.GraphResponse;
import io.grpc.netty.shaded.io.netty.util.Signal;
import io.grpc.netty.shaded.io.netty.util.internal.s;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    protected static final Signal f56845b;

    /* renamed from: c  reason: collision with root package name */
    protected static final Signal f56846c;

    /* renamed from: d  reason: collision with root package name */
    public static final e f56847d;

    /* renamed from: e  reason: collision with root package name */
    public static final e f56848e;

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f56849a;

    static {
        Signal valueOf = Signal.valueOf(e.class, "UNFINISHED");
        f56845b = valueOf;
        Signal valueOf2 = Signal.valueOf(e.class, "SUCCESS");
        f56846c = valueOf2;
        f56847d = new e(valueOf);
        f56848e = new e(valueOf2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(Throwable th2) {
        this.f56849a = (Throwable) s.h(th2, "cause");
    }

    public static e b(Throwable th2) {
        return new e((Throwable) s.h(th2, "cause"));
    }

    public Throwable a() {
        if (c()) {
            return this.f56849a;
        }
        return null;
    }

    public boolean c() {
        Throwable th2 = this.f56849a;
        return (th2 == f56846c || th2 == f56845b) ? false : true;
    }

    public boolean d() {
        return this.f56849a != f56845b;
    }

    public boolean e() {
        return this.f56849a == f56846c;
    }

    public String toString() {
        if (d()) {
            if (e()) {
                return GraphResponse.SUCCESS_KEY;
            }
            String th2 = a().toString();
            StringBuilder sb2 = new StringBuilder(th2.length() + 17);
            sb2.append("failure(");
            sb2.append(th2);
            sb2.append(')');
            return sb2.toString();
        }
        return "unfinished";
    }
}
