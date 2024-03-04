package okio;

import com.facebook.share.internal.ShareConstants;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokio/OutputStreamSink;", "Lokio/Sink;", "out", "Ljava/io/OutputStream;", "timeout", "Lokio/Timeout;", "(Ljava/io/OutputStream;Lokio/Timeout;)V", "close", "", "flush", "toString", "", "write", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class OutputStreamSink implements Sink {
    @NotNull
    private final OutputStream out;
    @NotNull
    private final Timeout timeout;

    public OutputStreamSink(@NotNull OutputStream out, @NotNull Timeout timeout) {
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.out = out;
        this.timeout = timeout;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.out.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.out.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.timeout;
    }

    @NotNull
    public String toString() {
        return "sink(" + this.out + ')';
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j10) {
        Intrinsics.checkNotNullParameter(source, "source");
        _UtilKt.checkOffsetAndCount(source.size(), 0L, j10);
        while (j10 > 0) {
            this.timeout.throwIfReached();
            Segment segment = source.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j10, segment.limit - segment.pos);
            this.out.write(segment.data, segment.pos, min);
            segment.pos += min;
            long j11 = min;
            j10 -= j11;
            source.setSize$okio(source.size() - j11);
            if (segment.pos == segment.limit) {
                source.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }
}
