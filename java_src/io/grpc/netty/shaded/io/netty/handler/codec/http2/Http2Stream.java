package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.y;
/* loaded from: classes5.dex */
public interface Http2Stream {

    /* loaded from: classes5.dex */
    public enum State {
        IDLE(false, false),
        RESERVED_LOCAL(false, false),
        RESERVED_REMOTE(false, false),
        OPEN(true, true),
        HALF_CLOSED_LOCAL(false, true),
        HALF_CLOSED_REMOTE(true, false),
        CLOSED(false, false);
        
        private final boolean localSideOpen;
        private final boolean remoteSideOpen;

        State(boolean z10, boolean z11) {
            this.localSideOpen = z10;
            this.remoteSideOpen = z11;
        }

        public boolean localSideOpen() {
            return this.localSideOpen;
        }

        public boolean remoteSideOpen() {
            return this.remoteSideOpen;
        }
    }

    int G();

    <V> V a(y.c cVar);

    Http2Stream b();

    Http2Stream c();

    Http2Stream close();

    <V> V d(y.c cVar, V v10);

    boolean e();

    boolean f();

    boolean g();

    State h();

    boolean i();

    boolean j();

    boolean k();

    <V> V l(y.c cVar);

    Http2Stream m(boolean z10) throws Http2Exception;

    Http2Stream n();

    Http2Stream o(boolean z10);

    Http2Stream p(boolean z10);
}
