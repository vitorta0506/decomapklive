package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.opendevice.i;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0001H\u0016J\b\u0010\u0011\u001a\u00020\u0001H\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\rH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001eH\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#H\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020$2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020$H\u0016J\u0010\u0010&\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u001bH\u0016J\u0010\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010-\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010/\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0010\u00102\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0018\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00105\u001a\u000206H\u0016J(\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0019H\u0016J \u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001bH\u0016J\u0010\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u001bH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "sink", "Lokio/Sink;", "(Lokio/Sink;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", "close", "", "emit", "emitCompleteSegments", "flush", "isOpen", "outputStream", "Ljava/io/OutputStream;", "timeout", "Lokio/Timeout;", "toString", "", "write", "", ShareConstants.FEED_SOURCE_PARAM, "Ljava/nio/ByteBuffer;", "", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "", "byteString", "Lokio/ByteString;", "Lokio/Source;", "writeAll", "writeByte", "b", "writeDecimalLong", NotifyType.VIBRATE, "writeHexadecimalUnsignedLong", "writeInt", i.TAG, "writeIntLe", "writeLong", "writeLongLe", "writeShort", NotifyType.SOUND, "writeShortLe", "writeString", TypedValues.Custom.S_STRING, "charset", "Ljava/nio/charset/Charset;", "beginIndex", "endIndex", "writeUtf8", "writeUtf8CodePoint", "codePoint", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class RealBufferedSink implements BufferedSink {
    @JvmField
    @NotNull
    public final Buffer bufferField;
    @JvmField
    public boolean closed;
    @JvmField
    @NotNull
    public final Sink sink;

    public RealBufferedSink(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.sink = sink;
        this.bufferField = new Buffer();
    }

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        Throwable th2 = null;
        try {
            if (this.bufferField.size() > 0) {
                Sink sink = this.sink;
                Buffer buffer = this.bufferField;
                sink.write(buffer, buffer.size());
            }
        } catch (Throwable th3) {
            th2 = th3;
        }
        try {
            this.sink.close();
        } catch (Throwable th4) {
            if (th2 == null) {
                th2 = th4;
            }
        }
        this.closed = true;
        if (th2 != null) {
            throw th2;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink emit() {
        if (!this.closed) {
            long size = this.bufferField.size();
            if (size > 0) {
                this.sink.write(this.bufferField, size);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink emitCompleteSegments() {
        if (!this.closed) {
            long completeSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                this.sink.write(this.bufferField, completeSegmentByteCount);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (!this.closed) {
            if (this.bufferField.size() > 0) {
                Sink sink = this.sink;
                Buffer buffer = this.bufferField;
                sink.write(buffer, buffer.size());
            }
            this.sink.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.RealBufferedSink$outputStream$1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSink.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    return;
                }
                realBufferedSink.flush();
            }

            @NotNull
            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i9) {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.bufferField.writeByte((int) ((byte) i9));
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] data, int i9, int i10) {
                Intrinsics.checkNotNullParameter(data, "data");
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.bufferField.write(data, i9, i10);
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.sink + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            int write = this.bufferField.write(source);
            emitCompleteSegments();
            return write;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    public long writeAll(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = 0;
        while (true) {
            long read = source.read(this.bufferField, 8192L);
            if (read == -1) {
                return j10;
            }
            j10 += read;
            emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeByte(int i9) {
        if (!this.closed) {
            this.bufferField.writeByte(i9);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeDecimalLong(long j10) {
        if (!this.closed) {
            this.bufferField.writeDecimalLong(j10);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeHexadecimalUnsignedLong(long j10) {
        if (!this.closed) {
            this.bufferField.writeHexadecimalUnsignedLong(j10);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeInt(int i9) {
        if (!this.closed) {
            this.bufferField.writeInt(i9);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeIntLe(int i9) {
        if (!this.closed) {
            this.bufferField.writeIntLe(i9);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeLong(long j10) {
        if (!this.closed) {
            this.bufferField.writeLong(j10);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeLongLe(long j10) {
        if (!this.closed) {
            this.bufferField.writeLongLe(j10);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeShort(int i9) {
        if (!this.closed) {
            this.bufferField.writeShort(i9);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeShortLe(int i9) {
        if (!this.closed) {
            this.bufferField.writeShortLe(i9);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeString(@NotNull String string, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!this.closed) {
            this.bufferField.writeString(string, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeUtf8(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (!this.closed) {
            this.bufferField.writeUtf8(string);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeUtf8CodePoint(int i9) {
        if (!this.closed) {
            this.bufferField.writeUtf8CodePoint(i9);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j10) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            this.bufferField.write(source, j10);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeString(@NotNull String string, int i9, int i10, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!this.closed) {
            this.bufferField.writeString(string, i9, i10, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeUtf8(@NotNull String string, int i9, int i10) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (!this.closed) {
            this.bufferField.writeUtf8(string, i9, i10);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.write(byteString);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull ByteString byteString, int i9, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.write(byteString, i9, i10);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            this.bufferField.write(source);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull byte[] source, int i9, int i10) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!this.closed) {
            this.bufferField.write(source, i9, i10);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull Source source, long j10) {
        Intrinsics.checkNotNullParameter(source, "source");
        while (j10 > 0) {
            long read = source.read(this.bufferField, j10);
            if (read != -1) {
                j10 -= read;
                emitCompleteSegments();
            } else {
                throw new EOFException();
            }
        }
        return this;
    }
}
