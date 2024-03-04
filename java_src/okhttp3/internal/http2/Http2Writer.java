package okhttp3.internal.http2;

import com.facebook.share.internal.ShareConstants;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u0000 :2\u00020\u0001:\u0001:B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\u0011H\u0016J\u0006\u0010\u0015\u001a\u00020\u0011J(\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ(\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ\u0006\u0010\u001e\u001a\u00020\u0011J&\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000fJ\u001e\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J$\u0010(\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*J\u0006\u0010,\u001a\u00020\u000fJ\u001e\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000fJ$\u00101\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u000f2\f\u00103\u001a\b\u0012\u0004\u0012\u00020+0*J\u0016\u00104\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%J\u000e\u00105\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u0013J\u0016\u00106\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00107\u001a\u000208J\u0018\u00109\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u000208H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "sink", "Lokio/BufferedSink;", "client", "", "(Lokio/BufferedSink;Z)V", "closed", "hpackBuffer", "Lokio/Buffer;", "hpackWriter", "Lokhttp3/internal/http2/Hpack$Writer;", "getHpackWriter", "()Lokhttp3/internal/http2/Hpack$Writer;", "maxFrameSize", "", "applyAndAckSettings", "", "peerSettings", "Lokhttp3/internal/http2/Settings;", "close", "connectionPreface", "data", "outFinished", "streamId", ShareConstants.FEED_SOURCE_PARAM, "byteCount", "dataFrame", "flags", "buffer", "flush", "frameHeader", "length", "type", "goAway", "lastGoodStreamId", "errorCode", "Lokhttp3/internal/http2/ErrorCode;", "debugData", "", "headers", "headerBlock", "", "Lokhttp3/internal/http2/Header;", "maxDataLength", "ping", "ack", "payload1", "payload2", "pushPromise", "promisedStreamId", "requestHeaders", "rstStream", "settings", "windowUpdate", "windowSizeIncrement", "", "writeContinuationFrames", "Companion", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http2Writer implements Closeable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    @NotNull
    private final Buffer hpackBuffer;
    @NotNull
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    @NotNull
    private final BufferedSink sink;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Writer$Companion;", "", "()V", "logger", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Http2Writer(@NotNull BufferedSink sink, boolean z10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.sink = sink;
        this.client = z10;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.maxFrameSize = 16384;
        this.hpackWriter = new Hpack.Writer(0, false, buffer, 3, null);
    }

    private final void writeContinuationFrames(int i9, long j10) throws IOException {
        while (j10 > 0) {
            long min = Math.min(this.maxFrameSize, j10);
            j10 -= min;
            frameHeader(i9, (int) min, 9, j10 == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, min);
        }
    }

    public final synchronized void applyAndAckSettings(@NotNull Settings peerSettings) throws IOException {
        Intrinsics.checkNotNullParameter(peerSettings, "peerSettings");
        if (!this.closed) {
            this.maxFrameSize = peerSettings.getMaxFrameSize(this.maxFrameSize);
            if (peerSettings.getHeaderTableSize() != -1) {
                this.hpackWriter.resizeHeaderTable(peerSettings.getHeaderTableSize());
            }
            frameHeader(0, 0, 4, 1);
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    public final synchronized void connectionPreface() throws IOException {
        if (!this.closed) {
            if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(Intrinsics.stringPlus(">> CONNECTION ", Http2.CONNECTION_PREFACE.hex()), new Object[0]));
                }
                this.sink.write(Http2.CONNECTION_PREFACE);
                this.sink.flush();
                return;
            }
            return;
        }
        throw new IOException("closed");
    }

    public final synchronized void data(boolean z10, int i9, @Nullable Buffer buffer, int i10) throws IOException {
        if (!this.closed) {
            dataFrame(i9, z10 ? 1 : 0, buffer, i10);
        } else {
            throw new IOException("closed");
        }
    }

    public final void dataFrame(int i9, int i10, @Nullable Buffer buffer, int i11) throws IOException {
        frameHeader(i9, i11, 0, i10);
        if (i11 > 0) {
            BufferedSink bufferedSink = this.sink;
            Intrinsics.checkNotNull(buffer);
            bufferedSink.write(buffer, i11);
        }
    }

    public final synchronized void flush() throws IOException {
        if (!this.closed) {
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final void frameHeader(int i9, int i10, int i11, int i12) throws IOException {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.INSTANCE.frameLog(false, i9, i10, i11, i12));
        }
        if (!(i10 <= this.maxFrameSize)) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i10).toString());
        }
        if ((Integer.MIN_VALUE & i9) == 0) {
            Util.writeMedium(this.sink, i10);
            this.sink.writeByte(i11 & 255);
            this.sink.writeByte(i12 & 255);
            this.sink.writeInt(i9 & Integer.MAX_VALUE);
            return;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("reserved bit set: ", Integer.valueOf(i9)).toString());
    }

    @NotNull
    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final synchronized void goAway(int i9, @NotNull ErrorCode errorCode, @NotNull byte[] debugData) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(debugData, "debugData");
        if (!this.closed) {
            if (errorCode.getHttpCode() != -1) {
                frameHeader(0, debugData.length + 8, 7, 0);
                this.sink.writeInt(i9);
                this.sink.writeInt(errorCode.getHttpCode());
                if (!(debugData.length == 0)) {
                    this.sink.write(debugData);
                }
                this.sink.flush();
            } else {
                throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void headers(boolean z10, int i9, @NotNull List<Header> headerBlock) throws IOException {
        Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
        if (!this.closed) {
            this.hpackWriter.writeHeaders(headerBlock);
            long size = this.hpackBuffer.size();
            long min = Math.min(this.maxFrameSize, size);
            int i10 = (size > min ? 1 : (size == min ? 0 : -1));
            int i11 = i10 == 0 ? 4 : 0;
            if (z10) {
                i11 |= 1;
            }
            frameHeader(i9, (int) min, 1, i11);
            this.sink.write(this.hpackBuffer, min);
            if (i10 > 0) {
                writeContinuationFrames(i9, size - min);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final synchronized void ping(boolean z10, int i9, int i10) throws IOException {
        if (!this.closed) {
            frameHeader(0, 8, 6, z10 ? 1 : 0);
            this.sink.writeInt(i9);
            this.sink.writeInt(i10);
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void pushPromise(int i9, int i10, @NotNull List<Header> requestHeaders) throws IOException {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (!this.closed) {
            this.hpackWriter.writeHeaders(requestHeaders);
            long size = this.hpackBuffer.size();
            int min = (int) Math.min(this.maxFrameSize - 4, size);
            int i11 = min + 4;
            long j10 = min;
            int i12 = (size > j10 ? 1 : (size == j10 ? 0 : -1));
            frameHeader(i9, i11, 5, i12 == 0 ? 4 : 0);
            this.sink.writeInt(i10 & Integer.MAX_VALUE);
            this.sink.write(this.hpackBuffer, j10);
            if (i12 > 0) {
                writeContinuationFrames(i9, size - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void rstStream(int i9, @NotNull ErrorCode errorCode) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (!this.closed) {
            if (errorCode.getHttpCode() != -1) {
                frameHeader(i9, 4, 3, 0);
                this.sink.writeInt(errorCode.getHttpCode());
                this.sink.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void settings(@NotNull Settings settings) throws IOException {
        Intrinsics.checkNotNullParameter(settings, "settings");
        if (!this.closed) {
            int i9 = 0;
            frameHeader(0, settings.size() * 6, 4, 0);
            while (i9 < 10) {
                int i10 = i9 + 1;
                if (settings.isSet(i9)) {
                    this.sink.writeShort(i9 != 4 ? i9 != 7 ? i9 : 4 : 3);
                    this.sink.writeInt(settings.get(i9));
                }
                i9 = i10;
            }
            this.sink.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void windowUpdate(int i9, long j10) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (j10 != 0 && j10 <= 2147483647L) {
            frameHeader(i9, 4, 8, 0);
            this.sink.writeInt((int) j10);
            this.sink.flush();
        } else {
            throw new IllegalArgumentException(Intrinsics.stringPlus("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: ", Long.valueOf(j10)).toString());
        }
    }
}
