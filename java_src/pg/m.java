package pg;

import io.grpc.netty.shaded.io.netty.channel.u;
import io.grpc.netty.shaded.io.netty.channel.y;
import io.grpc.netty.shaded.io.netty.handler.codec.EncoderException;
import io.grpc.netty.shaded.io.netty.util.internal.b0;
import io.grpc.netty.shaded.io.netty.util.internal.f0;
import io.grpc.netty.shaded.io.netty.util.r;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class m<I> extends u {

    /* renamed from: b  reason: collision with root package name */
    private final f0 f56887b = f0.b(this, m.class, "I");

    private static void v(io.grpc.netty.shaded.io.netty.channel.m mVar, c cVar, y yVar) {
        ug.y yVar2 = new ug.y(mVar.m0());
        for (int i9 = 0; i9 < cVar.size(); i9++) {
            yVar2.i(mVar.c0(cVar.g(i9)));
        }
        yVar2.m(yVar);
    }

    private static void w(io.grpc.netty.shaded.io.netty.channel.m mVar, c cVar) {
        y N = mVar.N();
        for (int i9 = 0; i9 < cVar.size(); i9++) {
            mVar.c(cVar.g(i9), N);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.t
    public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj, y yVar) throws Exception {
        c cVar = null;
        try {
            try {
                if (s(obj)) {
                    cVar = c.u();
                    try {
                        u(mVar, obj, cVar);
                        r.a(obj);
                        if (cVar.isEmpty()) {
                            throw new EncoderException(b0.m(this) + " must produce at least one message.");
                        }
                    } catch (Throwable th2) {
                        r.a(obj);
                        throw th2;
                    }
                } else {
                    mVar.c(obj, yVar);
                }
                if (cVar != null) {
                    try {
                        int size = cVar.size() - 1;
                        if (size == 0) {
                            mVar.c(cVar.g(0), yVar);
                        } else if (size > 0) {
                            if (yVar == mVar.N()) {
                                w(mVar, cVar);
                            } else {
                                v(mVar, cVar, yVar);
                            }
                        }
                    } finally {
                        cVar.x();
                    }
                }
            } catch (EncoderException e10) {
                throw e10;
            }
        }
    }

    public boolean s(Object obj) throws Exception {
        return this.f56887b.e(obj);
    }

    protected abstract void u(io.grpc.netty.shaded.io.netty.channel.m mVar, I i9, List<Object> list) throws Exception;
}
