package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.logging.LogLevel;
import io.grpc.netty.shaded.io.netty.util.internal.logging.InternalLogLevel;
import kotlin.UByte;
/* loaded from: classes5.dex */
public class Http2FrameLogger extends io.grpc.netty.shaded.io.netty.channel.l {

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44096b;

    /* renamed from: c  reason: collision with root package name */
    private final InternalLogLevel f44097c;

    /* loaded from: classes5.dex */
    public enum Direction {
        INBOUND,
        OUTBOUND
    }

    public Http2FrameLogger(LogLevel logLevel, Class<?> cls) {
        this(s(logLevel), io.grpc.netty.shaded.io.netty.util.internal.logging.c.b((Class) io.grpc.netty.shaded.io.netty.util.internal.s.h(cls, "clazz")));
    }

    private String M(kg.j jVar) {
        if (this.f44097c != InternalLogLevel.TRACE && jVar.P1() > 64) {
            int min = Math.min(jVar.P1(), 64);
            return kg.n.w(jVar, jVar.Q1(), min) + "...";
        }
        return kg.n.v(jVar);
    }

    private static InternalLogLevel s(LogLevel logLevel) {
        return ((LogLevel) io.grpc.netty.shaded.io.netty.util.internal.s.h(logLevel, "level")).toInternalLevel();
    }

    public void B(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} PING: ack=true bytes={}", mVar.d(), direction.name(), Long.valueOf(j10));
        }
    }

    public void F(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, short s10, boolean z10) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} PRIORITY: streamId={} streamDependency={} weight={} exclusive={}", mVar.d(), direction.name(), Integer.valueOf(i9), Integer.valueOf(i10), Short.valueOf(s10), Boolean.valueOf(z10));
        }
    }

    public void G(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, Http2Headers http2Headers, int i11) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} PUSH_PROMISE: streamId={} promisedStreamId={} headers={} padding={}", mVar.d(), direction.name(), Integer.valueOf(i9), Integer.valueOf(i10), http2Headers, Integer.valueOf(i11));
        }
    }

    public void H(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} RST_STREAM: streamId={} errorCode={}", mVar.d(), direction.name(), Integer.valueOf(i9), Long.valueOf(j10));
        }
    }

    public void I(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} SETTINGS: ack=false settings={}", mVar.d(), direction.name(), x0Var);
        }
    }

    public void J(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar) {
        this.f44096b.log(this.f44097c, "{} {} SETTINGS: ack=true", mVar.d(), direction.name());
    }

    public void K(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, byte b10, int i9, f0 f0Var, kg.j jVar) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} UNKNOWN: frameType={} streamId={} flags={} length={} bytes={}", mVar.d(), direction.name(), Integer.valueOf(b10 & UByte.MAX_VALUE), Integer.valueOf(i9), Short.valueOf(f0Var.o()), Integer.valueOf(jVar.P1()), M(jVar));
        }
    }

    public void L(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} WINDOW_UPDATE: streamId={} windowSizeIncrement={}", mVar.d(), direction.name(), Integer.valueOf(i9), Integer.valueOf(i10));
        }
    }

    public boolean u() {
        return this.f44096b.isEnabled(this.f44097c);
    }

    public void v(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} DATA: streamId={} padding={} endStream={} length={} bytes={}", mVar.d(), direction.name(), Integer.valueOf(i9), Integer.valueOf(i10), Boolean.valueOf(z10), Integer.valueOf(jVar.P1()), M(jVar));
        }
    }

    public void w(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} GO_AWAY: lastStreamId={} errorCode={} length={} bytes={}", mVar.d(), direction.name(), Integer.valueOf(i9), Long.valueOf(j10), Integer.valueOf(jVar.P1()), M(jVar));
        }
    }

    public void x(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} HEADERS: streamId={} headers={} streamDependency={} weight={} exclusive={} padding={} endStream={}", mVar.d(), direction.name(), Integer.valueOf(i9), http2Headers, Integer.valueOf(i10), Short.valueOf(s10), Boolean.valueOf(z10), Integer.valueOf(i11), Boolean.valueOf(z11));
        }
    }

    public void y(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} HEADERS: streamId={} headers={} padding={} endStream={}", mVar.d(), direction.name(), Integer.valueOf(i9), http2Headers, Integer.valueOf(i10), Boolean.valueOf(z10));
        }
    }

    public void z(Direction direction, io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) {
        if (u()) {
            this.f44096b.log(this.f44097c, "{} {} PING: ack=false bytes={}", mVar.d(), direction.name(), Long.valueOf(j10));
        }
    }

    private Http2FrameLogger(InternalLogLevel internalLogLevel, io.grpc.netty.shaded.io.netty.util.internal.logging.b bVar) {
        this.f44097c = internalLogLevel;
        this.f44096b = bVar;
    }
}
