package ih;

import com.google.common.base.o;
import eh.b1;
import eh.e1;
import eh.i1;
/* loaded from: classes5.dex */
public abstract class e implements b {

    /* renamed from: a  reason: collision with root package name */
    protected final b1 f41368a;

    public e1 a() {
        o.A(this.f41368a instanceof e1, "expected DownstreamTlsContext");
        return (e1) this.f41368a;
    }

    public i1 c() {
        o.A(this.f41368a instanceof i1, "expected UpstreamTlsContext");
        return (i1) this.f41368a;
    }
}
