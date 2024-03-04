package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class Http2Exception extends Exception {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long serialVersionUID = -6941186345430164209L;
    private final Http2Error error;
    private final ShutdownHint shutdownHint;

    /* loaded from: classes5.dex */
    public static final class ClosedStreamCreationException extends Http2Exception {
        private static final long serialVersionUID = -6746542974372246206L;

        public ClosedStreamCreationException(Http2Error http2Error) {
            super(http2Error);
        }

        public ClosedStreamCreationException(Http2Error http2Error, String str) {
            super(http2Error, str);
        }

        public ClosedStreamCreationException(Http2Error http2Error, String str, Throwable th2) {
            super(http2Error, str, th2);
        }
    }

    /* loaded from: classes5.dex */
    public static final class CompositeStreamException extends Http2Exception implements Iterable<StreamException> {
        private static final long serialVersionUID = 7091134858213711015L;
        private final List<StreamException> exceptions;

        public CompositeStreamException(Http2Error http2Error, int i9) {
            super(http2Error, ShutdownHint.NO_SHUTDOWN);
            this.exceptions = new ArrayList(i9);
        }

        public void add(StreamException streamException) {
            this.exceptions.add(streamException);
        }

        @Override // java.lang.Iterable
        public Iterator<StreamException> iterator() {
            return this.exceptions.iterator();
        }
    }

    /* loaded from: classes5.dex */
    public static final class HeaderListSizeException extends StreamException {
        private static final long serialVersionUID = -8807603212183882637L;
        private final boolean decode;

        HeaderListSizeException(int i9, Http2Error http2Error, String str, boolean z10) {
            super(i9, http2Error, str);
            this.decode = z10;
        }

        public boolean duringDecode() {
            return this.decode;
        }
    }

    /* loaded from: classes5.dex */
    public enum ShutdownHint {
        NO_SHUTDOWN,
        GRACEFUL_SHUTDOWN,
        HARD_SHUTDOWN
    }

    /* loaded from: classes5.dex */
    private static final class b extends Http2Exception {
        private static final long serialVersionUID = 1077888485687219443L;

        b(Http2Error http2Error, String str, ShutdownHint shutdownHint) {
            super(http2Error, str, shutdownHint);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }

        b(Http2Error http2Error, String str, ShutdownHint shutdownHint, boolean z10) {
            super(http2Error, str, shutdownHint, z10);
        }
    }

    public static Http2Exception closedStreamError(Http2Error http2Error, String str, Object... objArr) {
        return new ClosedStreamCreationException(http2Error, String.format(str, objArr));
    }

    public static Http2Exception connectionError(Http2Error http2Error, String str, Object... objArr) {
        return new Http2Exception(http2Error, String.format(str, objArr));
    }

    public static Http2Exception headerListSizeError(int i9, Http2Error http2Error, boolean z10, String str, Object... objArr) {
        if (i9 == 0) {
            return connectionError(http2Error, str, objArr);
        }
        return new HeaderListSizeException(i9, http2Error, String.format(str, objArr), z10);
    }

    public static boolean isStreamError(Http2Exception http2Exception) {
        return http2Exception instanceof StreamException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Http2Exception newStatic(Http2Error http2Error, String str, ShutdownHint shutdownHint, Class<?> cls, String str2) {
        b bVar;
        if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7) {
            bVar = new b(http2Error, str, shutdownHint, true);
        } else {
            bVar = new b(http2Error, str, shutdownHint);
        }
        return (Http2Exception) io.grpc.netty.shaded.io.netty.util.internal.e0.f(bVar, cls, str2);
    }

    public static Http2Exception streamError(int i9, Http2Error http2Error, String str, Object... objArr) {
        if (i9 == 0) {
            return connectionError(http2Error, str, objArr);
        }
        return new StreamException(i9, http2Error, String.format(str, objArr));
    }

    public static int streamId(Http2Exception http2Exception) {
        if (isStreamError(http2Exception)) {
            return ((StreamException) http2Exception).streamId();
        }
        return 0;
    }

    public Http2Error error() {
        return this.error;
    }

    public ShutdownHint shutdownHint() {
        return this.shutdownHint;
    }

    /* loaded from: classes5.dex */
    public static class StreamException extends Http2Exception {
        private static final long serialVersionUID = 602472544416984384L;
        private final int streamId;

        StreamException(int i9, Http2Error http2Error, String str) {
            super(http2Error, str, ShutdownHint.NO_SHUTDOWN);
            this.streamId = i9;
        }

        public int streamId() {
            return this.streamId;
        }

        StreamException(int i9, Http2Error http2Error, String str, Throwable th2) {
            super(http2Error, str, th2, ShutdownHint.NO_SHUTDOWN);
            this.streamId = i9;
        }
    }

    public Http2Exception(Http2Error http2Error) {
        this(http2Error, ShutdownHint.HARD_SHUTDOWN);
    }

    public static Http2Exception connectionError(Http2Error http2Error, Throwable th2, String str, Object... objArr) {
        return new Http2Exception(http2Error, String.format(str, objArr), th2);
    }

    public Http2Exception(Http2Error http2Error, ShutdownHint shutdownHint) {
        this.error = (Http2Error) io.grpc.netty.shaded.io.netty.util.internal.s.h(http2Error, "error");
        this.shutdownHint = (ShutdownHint) io.grpc.netty.shaded.io.netty.util.internal.s.h(shutdownHint, "shutdownHint");
    }

    public static Http2Exception streamError(int i9, Http2Error http2Error, Throwable th2, String str, Object... objArr) {
        if (i9 == 0) {
            return connectionError(http2Error, th2, str, objArr);
        }
        return new StreamException(i9, http2Error, String.format(str, objArr), th2);
    }

    public Http2Exception(Http2Error http2Error, String str) {
        this(http2Error, str, ShutdownHint.HARD_SHUTDOWN);
    }

    public Http2Exception(Http2Error http2Error, String str, ShutdownHint shutdownHint) {
        super(str);
        this.error = (Http2Error) io.grpc.netty.shaded.io.netty.util.internal.s.h(http2Error, "error");
        this.shutdownHint = (ShutdownHint) io.grpc.netty.shaded.io.netty.util.internal.s.h(shutdownHint, "shutdownHint");
    }

    public Http2Exception(Http2Error http2Error, String str, Throwable th2) {
        this(http2Error, str, th2, ShutdownHint.HARD_SHUTDOWN);
    }

    public Http2Exception(Http2Error http2Error, String str, Throwable th2, ShutdownHint shutdownHint) {
        super(str, th2);
        this.error = (Http2Error) io.grpc.netty.shaded.io.netty.util.internal.s.h(http2Error, "error");
        this.shutdownHint = (ShutdownHint) io.grpc.netty.shaded.io.netty.util.internal.s.h(shutdownHint, "shutdownHint");
    }

    private Http2Exception(Http2Error http2Error, String str, ShutdownHint shutdownHint, boolean z10) {
        super(str, null, false, true);
        this.error = (Http2Error) io.grpc.netty.shaded.io.netty.util.internal.s.h(http2Error, "error");
        this.shutdownHint = (ShutdownHint) io.grpc.netty.shaded.io.netty.util.internal.s.h(shutdownHint, "shutdownHint");
    }
}
