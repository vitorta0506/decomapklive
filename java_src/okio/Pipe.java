package okio;

import com.facebook.share.internal.ShareConstants;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u0010J\r\u0010\u0017\u001a\u00020\u0010H\u0007¢\u0006\u0002\b$J\r\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\b%J&\u0010&\u001a\u00020\"*\u00020\u00102\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\"0(¢\u0006\u0002\b)H\u0082\bR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u00108G¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR\u0013\u0010\u001b\u001a\u00020\u001c8G¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\f\"\u0004\b \u0010\u000e¨\u0006*"}, d2 = {"Lokio/Pipe;", "", "maxBufferSize", "", "(J)V", "buffer", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "canceled", "", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "foldedSink", "Lokio/Sink;", "getFoldedSink$okio", "()Lokio/Sink;", "setFoldedSink$okio", "(Lokio/Sink;)V", "getMaxBufferSize$okio", "()J", "sink", "sinkClosed", "getSinkClosed$okio", "setSinkClosed$okio", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Source;", "()Lokio/Source;", "sourceClosed", "getSourceClosed$okio", "setSourceClosed$okio", "cancel", "", "fold", "-deprecated_sink", "-deprecated_source", "forward", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class Pipe {
    @NotNull
    private final Buffer buffer = new Buffer();
    private boolean canceled;
    @Nullable
    private Sink foldedSink;
    private final long maxBufferSize;
    @NotNull
    private final Sink sink;
    private boolean sinkClosed;
    @NotNull
    private final Source source;
    private boolean sourceClosed;

    public Pipe(long j10) {
        this.maxBufferSize = j10;
        if (j10 >= 1) {
            this.sink = new Sink() { // from class: okio.Pipe$sink$1
                @NotNull
                private final Timeout timeout = new Timeout();

                @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        if (pipe.getSinkClosed$okio()) {
                            return;
                        }
                        Sink foldedSink$okio = pipe.getFoldedSink$okio();
                        if (foldedSink$okio == null) {
                            if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                                throw new IOException("source is closed");
                            }
                            pipe.setSinkClosed$okio(true);
                            pipe.getBuffer$okio().notifyAll();
                            foldedSink$okio = null;
                        }
                        Unit unit = Unit.INSTANCE;
                        if (foldedSink$okio == null) {
                            return;
                        }
                        Pipe pipe2 = Pipe.this;
                        Timeout timeout = foldedSink$okio.timeout();
                        Timeout timeout2 = pipe2.sink().timeout();
                        long timeoutNanos = timeout.timeoutNanos();
                        long minTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                        timeout.timeout(minTimeout, timeUnit);
                        if (timeout.hasDeadline()) {
                            long deadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink$okio.close();
                                timeout.timeout(timeoutNanos, timeUnit);
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                    return;
                                }
                                return;
                            } catch (Throwable th2) {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.hasDeadline()) {
                                    timeout.deadlineNanoTime(deadlineNanoTime);
                                }
                                throw th2;
                            }
                        }
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                        }
                        try {
                            foldedSink$okio.close();
                            timeout.timeout(timeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.clearDeadline();
                            }
                        } catch (Throwable th3) {
                            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.clearDeadline();
                            }
                            throw th3;
                        }
                    }
                }

                @Override // okio.Sink, java.io.Flushable
                public void flush() {
                    Sink foldedSink$okio;
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        if (!pipe.getSinkClosed$okio()) {
                            if (!pipe.getCanceled$okio()) {
                                foldedSink$okio = pipe.getFoldedSink$okio();
                                if (foldedSink$okio == null) {
                                    if (pipe.getSourceClosed$okio() && pipe.getBuffer$okio().size() > 0) {
                                        throw new IOException("source is closed");
                                    }
                                    foldedSink$okio = null;
                                }
                                Unit unit = Unit.INSTANCE;
                            } else {
                                throw new IOException("canceled");
                            }
                        } else {
                            throw new IllegalStateException("closed".toString());
                        }
                    }
                    if (foldedSink$okio == null) {
                        return;
                    }
                    Pipe pipe2 = Pipe.this;
                    Timeout timeout = foldedSink$okio.timeout();
                    Timeout timeout2 = pipe2.sink().timeout();
                    long timeoutNanos = timeout.timeoutNanos();
                    long minTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    timeout.timeout(minTimeout, timeUnit);
                    if (timeout.hasDeadline()) {
                        long deadlineNanoTime = timeout.deadlineNanoTime();
                        if (timeout2.hasDeadline()) {
                            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                        }
                        try {
                            foldedSink$okio.flush();
                            timeout.timeout(timeoutNanos, timeUnit);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(deadlineNanoTime);
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                            if (timeout2.hasDeadline()) {
                                timeout.deadlineNanoTime(deadlineNanoTime);
                            }
                            throw th2;
                        }
                    }
                    if (timeout2.hasDeadline()) {
                        timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                    }
                    try {
                        foldedSink$okio.flush();
                        timeout.timeout(timeoutNanos, timeUnit);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                    } catch (Throwable th3) {
                        timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                        if (timeout2.hasDeadline()) {
                            timeout.clearDeadline();
                        }
                        throw th3;
                    }
                }

                @Override // okio.Sink
                @NotNull
                public Timeout timeout() {
                    return this.timeout;
                }

                /* JADX WARN: Code restructure failed: missing block: B:25:0x0074, code lost:
                    r1 = kotlin.Unit.INSTANCE;
                 */
                @Override // okio.Sink
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void write(@org.jetbrains.annotations.NotNull okio.Buffer r13, long r14) {
                    /*
                        Method dump skipped, instructions count: 291
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: okio.Pipe$sink$1.write(okio.Buffer, long):void");
                }
            };
            this.source = new Source() { // from class: okio.Pipe$source$1
                @NotNull
                private final Timeout timeout = new Timeout();

                @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        pipe.setSourceClosed$okio(true);
                        pipe.getBuffer$okio().notifyAll();
                        Unit unit = Unit.INSTANCE;
                    }
                }

                @Override // okio.Source
                public long read(@NotNull Buffer sink, long j11) {
                    Intrinsics.checkNotNullParameter(sink, "sink");
                    Buffer buffer$okio = Pipe.this.getBuffer$okio();
                    Pipe pipe = Pipe.this;
                    synchronized (buffer$okio) {
                        if (!pipe.getSourceClosed$okio()) {
                            if (!pipe.getCanceled$okio()) {
                                while (pipe.getBuffer$okio().size() == 0) {
                                    if (pipe.getSinkClosed$okio()) {
                                        return -1L;
                                    }
                                    this.timeout.waitUntilNotified(pipe.getBuffer$okio());
                                    if (pipe.getCanceled$okio()) {
                                        throw new IOException("canceled");
                                    }
                                }
                                long read = pipe.getBuffer$okio().read(sink, j11);
                                pipe.getBuffer$okio().notifyAll();
                                return read;
                            }
                            throw new IOException("canceled");
                        }
                        throw new IllegalStateException("closed".toString());
                    }
                }

                @Override // okio.Source
                @NotNull
                public Timeout timeout() {
                    return this.timeout;
                }
            };
            return;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("maxBufferSize < 1: ", Long.valueOf(getMaxBufferSize$okio())).toString());
    }

    private final void forward(Sink sink, Function1<? super Sink, Unit> function1) {
        Timeout timeout = sink.timeout();
        Timeout timeout2 = sink().timeout();
        long timeoutNanos = timeout.timeoutNanos();
        long minTimeout = Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos());
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        timeout.timeout(minTimeout, timeUnit);
        if (timeout.hasDeadline()) {
            long deadlineNanoTime = timeout.deadlineNanoTime();
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
            }
            try {
                function1.invoke(sink);
                Unit unit = Unit.INSTANCE;
                InlineMarker.finallyStart(1);
                timeout.timeout(timeoutNanos, timeUnit);
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                return;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(deadlineNanoTime);
                }
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        if (timeout2.hasDeadline()) {
            timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
        }
        try {
            function1.invoke(sink);
            Unit unit2 = Unit.INSTANCE;
            InlineMarker.finallyStart(1);
            timeout.timeout(timeoutNanos, timeUnit);
            if (timeout2.hasDeadline()) {
                timeout.clearDeadline();
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th3) {
            InlineMarker.finallyStart(1);
            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (timeout2.hasDeadline()) {
                timeout.clearDeadline();
            }
            InlineMarker.finallyEnd(1);
            throw th3;
        }
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "sink", imports = {}))
    @JvmName(name = "-deprecated_sink")
    @NotNull
    /* renamed from: -deprecated_sink  reason: not valid java name */
    public final Sink m3374deprecated_sink() {
        return this.sink;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = ShareConstants.FEED_SOURCE_PARAM, imports = {}))
    @JvmName(name = "-deprecated_source")
    @NotNull
    /* renamed from: -deprecated_source  reason: not valid java name */
    public final Source m3375deprecated_source() {
        return this.source;
    }

    public final void cancel() {
        synchronized (this.buffer) {
            setCanceled$okio(true);
            getBuffer$okio().clear();
            getBuffer$okio().notifyAll();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void fold(@NotNull Sink sink) throws IOException {
        boolean sinkClosed$okio;
        Buffer buffer;
        Intrinsics.checkNotNullParameter(sink, "sink");
        while (true) {
            synchronized (this.buffer) {
                if (getFoldedSink$okio() == null) {
                    if (!getCanceled$okio()) {
                        if (getBuffer$okio().exhausted()) {
                            setSourceClosed$okio(true);
                            setFoldedSink$okio(sink);
                            return;
                        }
                        sinkClosed$okio = getSinkClosed$okio();
                        buffer = new Buffer();
                        buffer.write(getBuffer$okio(), getBuffer$okio().size());
                        getBuffer$okio().notifyAll();
                        Unit unit = Unit.INSTANCE;
                    } else {
                        setFoldedSink$okio(sink);
                        throw new IOException("canceled");
                    }
                } else {
                    throw new IllegalStateException("sink already folded".toString());
                }
            }
            try {
                sink.write(buffer, buffer.size());
                if (sinkClosed$okio) {
                    sink.close();
                } else {
                    sink.flush();
                }
            } catch (Throwable th2) {
                synchronized (this.buffer) {
                    setSourceClosed$okio(true);
                    getBuffer$okio().notifyAll();
                    Unit unit2 = Unit.INSTANCE;
                    throw th2;
                }
            }
        }
    }

    @NotNull
    public final Buffer getBuffer$okio() {
        return this.buffer;
    }

    public final boolean getCanceled$okio() {
        return this.canceled;
    }

    @Nullable
    public final Sink getFoldedSink$okio() {
        return this.foldedSink;
    }

    public final long getMaxBufferSize$okio() {
        return this.maxBufferSize;
    }

    public final boolean getSinkClosed$okio() {
        return this.sinkClosed;
    }

    public final boolean getSourceClosed$okio() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z10) {
        this.canceled = z10;
    }

    public final void setFoldedSink$okio(@Nullable Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z10) {
        this.sinkClosed = z10;
    }

    public final void setSourceClosed$okio(boolean z10) {
        this.sourceClosed = z10;
    }

    @JvmName(name = "sink")
    @NotNull
    public final Sink sink() {
        return this.sink;
    }

    @JvmName(name = ShareConstants.FEED_SOURCE_PARAM)
    @NotNull
    public final Source source() {
        return this.source;
    }
}
