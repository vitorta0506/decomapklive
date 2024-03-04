package pg;

import io.grpc.netty.shaded.io.netty.channel.p;
import io.grpc.netty.shaded.io.netty.handler.codec.DecoderException;
import io.grpc.netty.shaded.io.netty.util.internal.f0;
import io.grpc.netty.shaded.io.netty.util.r;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class l<I> extends p {

    /* renamed from: b  reason: collision with root package name */
    private final f0 f56886b = f0.b(this, l.class, "I");

    @Override // io.grpc.netty.shaded.io.netty.channel.p, io.grpc.netty.shaded.io.netty.channel.o
    public void h(io.grpc.netty.shaded.io.netty.channel.m mVar, Object obj) throws Exception {
        c u10 = c.u();
        int i9 = 0;
        try {
            try {
                try {
                    if (s(obj)) {
                        try {
                            u(mVar, obj, u10);
                            r.a(obj);
                        } catch (Throwable th2) {
                            r.a(obj);
                            throw th2;
                        }
                    } else {
                        u10.add(obj);
                    }
                    try {
                        int size = u10.size();
                        while (i9 < size) {
                            mVar.p(u10.g(i9));
                            i9++;
                        }
                    } finally {
                    }
                } catch (DecoderException e10) {
                    throw e10;
                }
            } catch (Exception e11) {
                throw new DecoderException(e11);
            }
        } catch (Throwable th3) {
            try {
                int size2 = u10.size();
                while (i9 < size2) {
                    mVar.p(u10.g(i9));
                    i9++;
                }
                throw th3;
            } finally {
            }
        }
    }

    public boolean s(Object obj) throws Exception {
        return this.f56886b.e(obj);
    }

    protected abstract void u(io.grpc.netty.shaded.io.netty.channel.m mVar, I i9, List<Object> list) throws Exception;
}
