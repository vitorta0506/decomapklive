package io.grpc.alts.internal;

import io.grpc.ChannelLogger;
import io.grpc.alts.internal.j0;
import io.grpc.alts.internal.t;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public final class m implements h0 {

    /* renamed from: a  reason: collision with root package name */
    private final ChannelLogger f41937a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f41938b;

    /* renamed from: c  reason: collision with root package name */
    private final g f41939c;

    /* renamed from: d  reason: collision with root package name */
    private ByteBuffer f41940d;

    private m(boolean z10, t.d dVar, h hVar, ChannelLogger channelLogger) {
        this.f41938b = z10;
        this.f41937a = channelLogger;
        this.f41939c = new g(dVar, hVar, channelLogger);
    }

    public static h0 h(t.d dVar, h hVar, ChannelLogger channelLogger) {
        return new m(true, dVar, hVar, channelLogger);
    }

    @Override // io.grpc.alts.internal.h0
    public Object a() throws GeneralSecurityException {
        com.google.common.base.o.A(!b(), "Handshake is not complete.");
        return new j(this.f41939c.c());
    }

    @Override // io.grpc.alts.internal.h0
    public boolean b() {
        return !this.f41939c.e() || this.f41940d.hasRemaining();
    }

    @Override // io.grpc.alts.internal.h0
    public j0 c() throws GeneralSecurityException {
        com.google.common.base.o.A(!b(), "Handshake is not complete.");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new j0.b("service_account", this.f41939c.c().getPeerIdentity().getServiceAccount()));
        return new j0(arrayList);
    }

    @Override // io.grpc.alts.internal.h0
    public void close() {
        this.f41939c.a();
    }

    @Override // io.grpc.alts.internal.h0
    public f0 d(kg.k kVar) {
        return g(l.e(), kVar);
    }

    @Override // io.grpc.alts.internal.h0
    public void e(ByteBuffer byteBuffer) throws GeneralSecurityException {
        if (this.f41940d == null) {
            if (!this.f41938b) {
                return;
            }
            this.f41937a.a(ChannelLogger.ChannelLogLevel.DEBUG, "Initial ALTS handshake to downstream");
            this.f41940d = this.f41939c.i();
        }
        this.f41937a.a(ChannelLogger.ChannelLogLevel.DEBUG, "Send ALTS request to downstream");
        ByteBuffer byteBuffer2 = this.f41940d;
        if (byteBuffer2.remaining() > byteBuffer.remaining()) {
            byteBuffer2 = this.f41940d.duplicate();
            byteBuffer2.limit(byteBuffer2.position() + byteBuffer.remaining());
        }
        byteBuffer.put(byteBuffer2);
        this.f41940d.position(byteBuffer2.position());
    }

    @Override // io.grpc.alts.internal.h0
    public boolean f(ByteBuffer byteBuffer) throws GeneralSecurityException {
        ByteBuffer byteBuffer2 = this.f41940d;
        if (byteBuffer2 == null && this.f41938b) {
            return true;
        }
        if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
            int remaining = byteBuffer.remaining();
            if (this.f41940d == null) {
                com.google.common.base.o.A(!this.f41938b, "Client handshaker should not process any frame at the beginning.");
                this.f41940d = this.f41939c.j(byteBuffer);
            } else {
                this.f41937a.a(ChannelLogger.ChannelLogLevel.DEBUG, "Receive ALTS handshake from downstream");
                this.f41940d = this.f41939c.f(byteBuffer);
            }
            if (this.f41939c.e() || this.f41940d.hasRemaining()) {
                return true;
            }
            if (byteBuffer.hasRemaining()) {
                com.google.common.base.o.A(byteBuffer.remaining() < remaining, "Handshaker did not consume any bytes.");
                return f(byteBuffer);
            }
            return false;
        }
        return true;
    }

    public f0 g(int i9, kg.k kVar) {
        com.google.common.base.o.A(!b(), "Handshake is not complete.");
        byte[] b10 = this.f41939c.b();
        com.google.common.base.o.A(b10.length == d.e(), "Bad key length.");
        int maxFrameSize = this.f41939c.c().getMaxFrameSize();
        if (maxFrameSize != 0) {
            i9 = Math.max(l.e(), Math.min(maxFrameSize, l.d()));
        }
        this.f41937a.b(ChannelLogger.ChannelLogLevel.INFO, "Maximum frame size value is {0}.", Integer.valueOf(i9));
        return new l(i9, new d(b10, this.f41938b), kVar);
    }
}
