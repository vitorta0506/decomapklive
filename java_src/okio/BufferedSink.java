package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.opendevice.i;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H'J\b\u0010\u0007\u001a\u00020\u0000H&J\b\u0010\b\u001a\u00020\u0000H&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH&J \u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H&J\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014H&J \u0010\r\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H&J\u0018\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\u0015H&J\u0010\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0011H&J\u0010\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0011H&J\u0010\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0011H&J\u0010\u0010 \u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010!\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0011H&J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0011H&J\u0018\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H&J(\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00112\u0006\u0010(\u001a\u00020)H&J\u0010\u0010,\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'H&J \u0010,\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011H&J\u0010\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0011H&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006/À\u0006\u0001"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "buffer", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "emit", "emitCompleteSegments", "flush", "", "outputStream", "Ljava/io/OutputStream;", "write", ShareConstants.FEED_SOURCE_PARAM, "", TypedValues.CycleType.S_WAVE_OFFSET, "", "byteCount", "byteString", "Lokio/ByteString;", "Lokio/Source;", "", "writeAll", "writeByte", "b", "writeDecimalLong", NotifyType.VIBRATE, "writeHexadecimalUnsignedLong", "writeInt", i.TAG, "writeIntLe", "writeLong", "writeLongLe", "writeShort", NotifyType.SOUND, "writeShortLe", "writeString", TypedValues.Custom.S_STRING, "", "charset", "Ljava/nio/charset/Charset;", "beginIndex", "endIndex", "writeUtf8", "writeUtf8CodePoint", "codePoint", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    @Deprecated(level = DeprecationLevel.WARNING, message = "moved to val: use getBuffer() instead", replaceWith = @ReplaceWith(expression = "buffer", imports = {}))
    @NotNull
    Buffer buffer();

    @NotNull
    BufferedSink emit() throws IOException;

    @NotNull
    BufferedSink emitCompleteSegments() throws IOException;

    @Override // okio.Sink, java.io.Flushable
    void flush() throws IOException;

    @NotNull
    Buffer getBuffer();

    @NotNull
    OutputStream outputStream();

    @NotNull
    BufferedSink write(@NotNull ByteString byteString) throws IOException;

    @NotNull
    BufferedSink write(@NotNull ByteString byteString, int i9, int i10) throws IOException;

    @NotNull
    BufferedSink write(@NotNull Source source, long j10) throws IOException;

    @NotNull
    BufferedSink write(@NotNull byte[] bArr) throws IOException;

    @NotNull
    BufferedSink write(@NotNull byte[] bArr, int i9, int i10) throws IOException;

    long writeAll(@NotNull Source source) throws IOException;

    @NotNull
    BufferedSink writeByte(int i9) throws IOException;

    @NotNull
    BufferedSink writeDecimalLong(long j10) throws IOException;

    @NotNull
    BufferedSink writeHexadecimalUnsignedLong(long j10) throws IOException;

    @NotNull
    BufferedSink writeInt(int i9) throws IOException;

    @NotNull
    BufferedSink writeIntLe(int i9) throws IOException;

    @NotNull
    BufferedSink writeLong(long j10) throws IOException;

    @NotNull
    BufferedSink writeLongLe(long j10) throws IOException;

    @NotNull
    BufferedSink writeShort(int i9) throws IOException;

    @NotNull
    BufferedSink writeShortLe(int i9) throws IOException;

    @NotNull
    BufferedSink writeString(@NotNull String str, int i9, int i10, @NotNull Charset charset) throws IOException;

    @NotNull
    BufferedSink writeString(@NotNull String str, @NotNull Charset charset) throws IOException;

    @NotNull
    BufferedSink writeUtf8(@NotNull String str) throws IOException;

    @NotNull
    BufferedSink writeUtf8(@NotNull String str, int i9, int i10) throws IOException;

    @NotNull
    BufferedSink writeUtf8CodePoint(int i9) throws IOException;
}
