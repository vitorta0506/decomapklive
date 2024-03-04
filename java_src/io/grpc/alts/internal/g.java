package io.grpc.alts.internal;

import com.google.common.collect.e9;
import com.google.protobuf.ByteString;
import io.grpc.ChannelLogger;
import io.grpc.Status;
import io.grpc.alts.internal.HandshakerReq;
import io.grpc.alts.internal.StartClientHandshakeReq;
import io.grpc.alts.internal.StartServerHandshakeReq;
import io.grpc.alts.internal.t;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes5.dex */
class g {

    /* renamed from: g  reason: collision with root package name */
    private static final int f41873g = d.e();

    /* renamed from: a  reason: collision with root package name */
    private final i f41874a;

    /* renamed from: b  reason: collision with root package name */
    private final h f41875b;

    /* renamed from: c  reason: collision with root package name */
    private HandshakerResult f41876c;

    /* renamed from: d  reason: collision with root package name */
    private HandshakerStatus f41877d;

    /* renamed from: e  reason: collision with root package name */
    private final ChannelLogger f41878e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f41879f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(t.d dVar, h hVar, ChannelLogger channelLogger) {
        this.f41874a = new i(dVar);
        this.f41875b = hVar;
        this.f41878e = channelLogger;
    }

    private void d(HandshakerResp handshakerResp) throws GeneralSecurityException {
        this.f41877d = handshakerResp.getStatus();
        if (handshakerResp.hasResult()) {
            this.f41876c = handshakerResp.getResult();
            a();
        }
        if (this.f41877d.getCode() == Status.Code.OK.value()) {
            return;
        }
        String str = "Handshaker service error: " + this.f41877d.getDetails();
        this.f41878e.a(ChannelLogger.ChannelLogLevel.DEBUG, str);
        a();
        throw new GeneralSecurityException(str);
    }

    private void g(HandshakerReq.c cVar) {
        StartClientHandshakeReq.b X = StartClientHandshakeReq.newBuilder().v0(HandshakeProtocol.ALTS).W("grpc").X("ALTSRP_GCM_AES128_REKEY");
        if (this.f41875b.a() != null) {
            X.z0(this.f41875b.a());
        }
        h hVar = this.f41875b;
        if (hVar instanceof e) {
            e eVar = (e) hVar;
            if (!com.google.common.base.v.b(eVar.b())) {
                X.B0(eVar.b());
            }
            e9<String> it = eVar.c().iterator();
            while (it.hasNext()) {
                X.Z().l0(it.next());
            }
        }
        X.y0(l.d());
        cVar.l0(X);
    }

    private void h(HandshakerReq.c cVar, ByteBuffer byteBuffer) {
        StartServerHandshakeReq.b s02 = StartServerHandshakeReq.newBuilder().W("grpc").q0(HandshakeProtocol.ALTS.getNumber(), ServerHandshakeParameters.newBuilder().W("ALTSRP_GCM_AES128_REKEY").build()).s0(ByteString.copyFrom(byteBuffer.duplicate()));
        if (this.f41875b.a() != null) {
            s02.u0(this.f41875b.a());
        }
        s02.t0(l.d());
        cVar.o0(s02);
    }

    public void a() {
        if (this.f41879f) {
            return;
        }
        this.f41879f = true;
        this.f41874a.c();
    }

    public byte[] b() {
        HandshakerResult handshakerResult = this.f41876c;
        if (handshakerResult == null) {
            return null;
        }
        int size = handshakerResult.getKeyData().size();
        int i9 = f41873g;
        if (size >= i9) {
            byte[] bArr = new byte[i9];
            this.f41876c.getKeyData().substring(0, i9).copyTo(bArr, 0);
            return bArr;
        }
        throw new IllegalStateException("Could not get enough key data from the handshake.");
    }

    public HandshakerResult c() {
        return this.f41876c;
    }

    public boolean e() {
        if (this.f41876c != null) {
            return true;
        }
        HandshakerStatus handshakerStatus = this.f41877d;
        return (handshakerStatus == null || handshakerStatus.getCode() == Status.Code.OK.value()) ? false : true;
    }

    public ByteBuffer f(ByteBuffer byteBuffer) throws GeneralSecurityException {
        com.google.common.base.o.A(!e(), "Handshake has already finished.");
        HandshakerReq.c n02 = HandshakerReq.newBuilder().n0(NextHandshakeMessageReq.newBuilder().j0(ByteString.copyFrom(byteBuffer.duplicate())).build());
        try {
            ChannelLogger channelLogger = this.f41878e;
            ChannelLogger.ChannelLogLevel channelLogLevel = ChannelLogger.ChannelLogLevel.DEBUG;
            channelLogger.a(channelLogLevel, "Send ALTS handshake request to upstream");
            HandshakerResp f10 = this.f41874a.f(n02.build());
            this.f41878e.a(channelLogLevel, "Receive ALTS handshake response from upstream");
            d(f10);
            byteBuffer.position(byteBuffer.position() + f10.getBytesConsumed());
            return f10.getOutFrames().asReadOnlyByteBuffer();
        } catch (IOException | InterruptedException e10) {
            throw new GeneralSecurityException(e10);
        }
    }

    public ByteBuffer i() throws GeneralSecurityException {
        com.google.common.base.o.A(!e(), "Handshake has already finished.");
        HandshakerReq.c newBuilder = HandshakerReq.newBuilder();
        g(newBuilder);
        try {
            ChannelLogger channelLogger = this.f41878e;
            ChannelLogger.ChannelLogLevel channelLogLevel = ChannelLogger.ChannelLogLevel.DEBUG;
            channelLogger.a(channelLogLevel, "Send ALTS handshake request to upstream");
            HandshakerResp f10 = this.f41874a.f(newBuilder.build());
            this.f41878e.a(channelLogLevel, "Receive ALTS handshake response from upstream");
            d(f10);
            return f10.getOutFrames().asReadOnlyByteBuffer();
        } catch (IOException | InterruptedException e10) {
            throw new GeneralSecurityException(e10);
        }
    }

    public ByteBuffer j(ByteBuffer byteBuffer) throws GeneralSecurityException {
        com.google.common.base.o.A(!e(), "Handshake has already finished.");
        HandshakerReq.c newBuilder = HandshakerReq.newBuilder();
        h(newBuilder, byteBuffer);
        try {
            HandshakerResp f10 = this.f41874a.f(newBuilder.build());
            d(f10);
            byteBuffer.position(byteBuffer.position() + f10.getBytesConsumed());
            return f10.getOutFrames().asReadOnlyByteBuffer();
        } catch (IOException | InterruptedException e10) {
            throw new GeneralSecurityException(e10);
        }
    }
}
