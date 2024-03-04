package jg;

import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.channel.k;
import io.grpc.netty.shaded.io.netty.channel.m0;
import io.grpc.netty.shaded.io.netty.channel.r;
import io.grpc.netty.shaded.io.netty.util.internal.b0;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.net.SocketAddress;
import java.util.Map;
import jg.a;
/* loaded from: classes5.dex */
public abstract class b<B extends a<B, C>, C extends io.grpc.netty.shaded.io.netty.channel.e> {

    /* renamed from: a  reason: collision with root package name */
    protected final B f53247a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(B b10) {
        this.f53247a = (B) s.h(b10, "bootstrap");
    }

    public final Map<io.grpc.netty.shaded.io.netty.util.e<?>, Object> a() {
        return this.f53247a.a();
    }

    public final e<? extends C> b() {
        return this.f53247a.f();
    }

    public final m0 c() {
        return this.f53247a.j();
    }

    public final k d() {
        return this.f53247a.l();
    }

    public final SocketAddress e() {
        return this.f53247a.p();
    }

    public final Map<r<?>, Object> f() {
        return this.f53247a.v();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(b0.m(this));
        sb2.append('(');
        m0 c10 = c();
        if (c10 != null) {
            sb2.append("group: ");
            sb2.append(b0.m(c10));
            sb2.append(", ");
        }
        e<? extends C> b10 = b();
        if (b10 != null) {
            sb2.append("channelFactory: ");
            sb2.append(b10);
            sb2.append(", ");
        }
        SocketAddress e10 = e();
        if (e10 != null) {
            sb2.append("localAddress: ");
            sb2.append(e10);
            sb2.append(", ");
        }
        Map<r<?>, Object> f10 = f();
        if (!f10.isEmpty()) {
            sb2.append("options: ");
            sb2.append(f10);
            sb2.append(", ");
        }
        Map<io.grpc.netty.shaded.io.netty.util.e<?>, Object> a10 = a();
        if (!a10.isEmpty()) {
            sb2.append("attrs: ");
            sb2.append(a10);
            sb2.append(", ");
        }
        k d10 = d();
        if (d10 != null) {
            sb2.append("handler: ");
            sb2.append(d10);
            sb2.append(", ");
        }
        if (sb2.charAt(sb2.length() - 1) == '(') {
            sb2.append(')');
        } else {
            sb2.setCharAt(sb2.length() - 2, ')');
            sb2.setLength(sb2.length() - 1);
        }
        return sb2.toString();
    }
}
