package okhttp3.internal.cache2;

import com.facebook.share.internal.ShareConstants;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bJ\u001e\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/cache2/FileOperator;", "", "fileChannel", "Ljava/nio/channels/FileChannel;", "(Ljava/nio/channels/FileChannel;)V", "read", "", "pos", "", "sink", "Lokio/Buffer;", "byteCount", "write", ShareConstants.FEED_SOURCE_PARAM, "okhttp"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class FileOperator {
    @NotNull
    private final FileChannel fileChannel;

    public FileOperator(@NotNull FileChannel fileChannel) {
        Intrinsics.checkNotNullParameter(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j10, @NotNull Buffer sink, long j11) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j11 > 0) {
            long transferTo = this.fileChannel.transferTo(j10, j11, sink);
            j10 += transferTo;
            j11 -= transferTo;
        }
    }

    public final void write(long j10, @NotNull Buffer source, long j11) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (j11 < 0 || j11 > source.size()) {
            throw new IndexOutOfBoundsException();
        }
        long j12 = j10;
        long j13 = j11;
        while (j13 > 0) {
            long transferFrom = this.fileChannel.transferFrom(source, j12, j13);
            j12 += transferFrom;
            j13 -= transferFrom;
        }
    }
}
