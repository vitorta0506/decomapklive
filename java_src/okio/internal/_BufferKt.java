package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.opendevice.i;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;
import okhttp3.internal.connection.RealConnection;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio.Utf8;
import okio._JvmPlatformKt;
import okio._UtilKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\r\u0010\u0013\u001a\u00020\u0014*\u00020\u0015H\u0080\b\u001a\r\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0080\b\u001a\r\u0010\u0018\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0015*\u00020\u0015H\u0080\b\u001a%\u0010\u001a\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0017\u0010\u001e\u001a\u00020\f*\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0080\b\u001a\u0015\u0010!\u001a\u00020\u0007*\u00020\u00172\u0006\u0010\"\u001a\u00020\nH\u0080\b\u001a\u0015\u0010#\u001a\u00020$*\u00020\u00152\u0006\u0010%\u001a\u00020\u0007H\u0080\b\u001a\r\u0010&\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a%\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010'\u001a\u00020\u0007*\u00020\u00152\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\u001d\u0010,\u001a\u00020\u0007*\u00020\u00152\u0006\u0010-\u001a\u00020+2\u0006\u0010)\u001a\u00020\u0007H\u0080\b\u001a\r\u0010.\u001a\u00020\n*\u00020\u0017H\u0080\b\u001a-\u0010/\u001a\u00020\f*\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a%\u00100\u001a\u00020\n*\u00020\u00152\u0006\u00101\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u00100\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u00102\u001a\u00020\u0007*\u00020\u00152\u0006\u00101\u001a\u000203H\u0080\b\u001a\u0014\u00104\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\r\u00106\u001a\u00020$*\u00020\u0015H\u0080\b\u001a\r\u00107\u001a\u00020\u0001*\u00020\u0015H\u0080\b\u001a\u0015\u00107\u001a\u00020\u0001*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00108\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u00108\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u00109\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\u0015\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010:\u001a\u00020\u0014*\u00020\u00152\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010;\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010<\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\r\u0010=\u001a\u00020\u0007*\u00020\u0015H\u0080\b\u001a\r\u0010>\u001a\u00020?*\u00020\u0015H\u0080\b\u001a\u0014\u0010@\u001a\u00020\u0017*\u00020\u00152\u0006\u00105\u001a\u00020\u0017H\u0000\u001a\u0015\u0010A\u001a\u00020B*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010C\u001a\u00020\n*\u00020\u0015H\u0080\b\u001a\u000f\u0010D\u001a\u0004\u0018\u00010B*\u00020\u0015H\u0080\b\u001a\u0015\u0010E\u001a\u00020B*\u00020\u00152\u0006\u0010F\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010G\u001a\u00020\u0007*\u00020\u00172\u0006\u0010H\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010I\u001a\u00020\n*\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010J\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020LH\u0080\b\u001a\u0015\u0010M\u001a\u00020\u0014*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\r\u0010N\u001a\u00020+*\u00020\u0015H\u0080\b\u001a\u0015\u0010N\u001a\u00020+*\u00020\u00152\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u0015\u0010O\u001a\u00020\u000e*\u00020\u00152\u0006\u0010P\u001a\u00020\nH\u0080\b\u001a\u0015\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u0001H\u0080\b\u001a%\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0014*\u00020\u00152\u0006\u0010R\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a)\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010S\u001a\u00020+2\b\b\u0002\u0010\u001c\u001a\u00020\n2\b\b\u0002\u0010\u001d\u001a\u00020\nH\u0080\b\u001a\u001d\u0010Q\u001a\u00020\u0015*\u00020\u00152\u0006\u0010R\u001a\u00020T2\u0006\u0010\u001d\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010U\u001a\u00020\u0007*\u00020\u00152\u0006\u0010R\u001a\u00020TH\u0080\b\u001a\u0015\u0010V\u001a\u00020\u0015*\u00020\u00152\u0006\u0010(\u001a\u00020\nH\u0080\b\u001a\u0015\u0010W\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Y\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010Z\u001a\u00020\u0015*\u00020\u00152\u0006\u0010[\u001a\u00020\nH\u0080\b\u001a\u0015\u0010\\\u001a\u00020\u0015*\u00020\u00152\u0006\u0010X\u001a\u00020\u0007H\u0080\b\u001a\u0015\u0010]\u001a\u00020\u0015*\u00020\u00152\u0006\u0010^\u001a\u00020\nH\u0080\b\u001a%\u0010_\u001a\u00020\u0015*\u00020\u00152\u0006\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\n2\u0006\u0010b\u001a\u00020\nH\u0080\b\u001a\u0015\u0010c\u001a\u00020\u0015*\u00020\u00152\u0006\u0010d\u001a\u00020\nH\u0080\b\u001a\u0014\u0010e\u001a\u00020B*\u00020\u00152\u0006\u0010f\u001a\u00020\u0007H\u0000\u001a?\u0010g\u001a\u0002Hh\"\u0004\b\u0000\u0010h*\u00020\u00152\u0006\u0010)\u001a\u00020\u00072\u001a\u0010i\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002Hh0jH\u0080\bø\u0001\u0000¢\u0006\u0002\u0010k\u001a\u001e\u0010l\u001a\u00020\n*\u00020\u00152\u0006\u0010K\u001a\u00020L2\b\b\u0002\u0010m\u001a\u00020\fH\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006n"}, d2 = {"HEX_DIGIT_BYTES", "", "getHEX_DIGIT_BYTES$annotations", "()V", "getHEX_DIGIT_BYTES", "()[B", "OVERFLOW_DIGIT_START", "", "OVERFLOW_ZONE", "SEGMENTING_THRESHOLD", "", "rangeEquals", "", "segment", "Lokio/Segment;", "segmentPos", "bytes", "bytesOffset", "bytesLimit", "commonClear", "", "Lokio/Buffer;", "commonClose", "Lokio/Buffer$UnsafeCursor;", "commonCompleteSegmentByteCount", "commonCopy", "commonCopyTo", "out", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "commonEquals", "other", "", "commonExpandBuffer", "minByteCount", "commonGet", "", "pos", "commonHashCode", "commonIndexOf", "b", "fromIndex", "toIndex", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonNext", "commonRangeEquals", "commonRead", "sink", "commonReadAll", "Lokio/Sink;", "commonReadAndWriteUnsafe", "unsafeCursor", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadLong", "commonReadShort", "", "commonReadUnsafe", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonResizeBuffer", "newSize", "commonSeek", "commonSelect", "options", "Lokio/Options;", "commonSkip", "commonSnapshot", "commonWritableSegment", "minimumCapacity", "commonWrite", ShareConstants.FEED_SOURCE_PARAM, "byteString", "Lokio/Source;", "commonWriteAll", "commonWriteByte", "commonWriteDecimalLong", NotifyType.VIBRATE, "commonWriteHexadecimalUnsignedLong", "commonWriteInt", i.TAG, "commonWriteLong", "commonWriteShort", NotifyType.SOUND, "commonWriteUtf8", TypedValues.Custom.S_STRING, "beginIndex", "endIndex", "commonWriteUtf8CodePoint", "codePoint", "readUtf8Line", "newline", "seek", ExifInterface.GPS_DIRECTION_TRUE, "lambda", "Lkotlin/Function2;", "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "selectPrefix", "selectTruncated", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class _BufferKt {
    @NotNull
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        if (unsafeCursor.buffer != null) {
            unsafeCursor.buffer = null;
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = -1L;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return;
        }
        throw new IllegalStateException("not attached to a buffer".toString());
    }

    public static final long commonCompleteSegmentByteCount(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = segment.prev;
        Intrinsics.checkNotNull(segment2);
        int i9 = segment2.limit;
        return (i9 >= 8192 || !segment2.owner) ? size : size - (i9 - segment2.pos);
    }

    @NotNull
    public static final Buffer commonCopy(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        Intrinsics.checkNotNull(segment);
        Segment sharedCopy = segment.sharedCopy();
        buffer2.head = sharedCopy;
        sharedCopy.prev = sharedCopy;
        sharedCopy.next = sharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = sharedCopy.prev;
            Intrinsics.checkNotNull(segment3);
            Intrinsics.checkNotNull(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    @NotNull
    public static final Buffer commonCopyTo(@NotNull Buffer buffer, @NotNull Buffer out, long j10, long j11) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(buffer.size(), j10, j11);
        if (j11 == 0) {
            return buffer;
        }
        out.setSize$okio(out.size() + j11);
        Segment segment = buffer.head;
        while (true) {
            Intrinsics.checkNotNull(segment);
            int i9 = segment.limit;
            int i10 = segment.pos;
            if (j10 < i9 - i10) {
                break;
            }
            j10 -= i9 - i10;
            segment = segment.next;
        }
        while (j11 > 0) {
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            int i11 = sharedCopy.pos + ((int) j10);
            sharedCopy.pos = i11;
            sharedCopy.limit = Math.min(i11 + ((int) j11), sharedCopy.limit);
            Segment segment2 = out.head;
            if (segment2 == null) {
                sharedCopy.prev = sharedCopy;
                sharedCopy.next = sharedCopy;
                out.head = sharedCopy;
            } else {
                Intrinsics.checkNotNull(segment2);
                Segment segment3 = segment2.prev;
                Intrinsics.checkNotNull(segment3);
                segment3.push(sharedCopy);
            }
            j11 -= sharedCopy.limit - sharedCopy.pos;
            segment = segment.next;
            j10 = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(@NotNull Buffer buffer, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (obj instanceof Buffer) {
            Buffer buffer2 = (Buffer) obj;
            if (buffer.size() != buffer2.size()) {
                return false;
            }
            if (buffer.size() == 0) {
                return true;
            }
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            Segment segment2 = buffer2.head;
            Intrinsics.checkNotNull(segment2);
            int i9 = segment.pos;
            int i10 = segment2.pos;
            long j10 = 0;
            while (j10 < buffer.size()) {
                long min = Math.min(segment.limit - i9, segment2.limit - i10);
                if (0 < min) {
                    long j11 = 0;
                    while (true) {
                        j11++;
                        int i11 = i9 + 1;
                        int i12 = i10 + 1;
                        if (segment.data[i9] != segment2.data[i10]) {
                            return false;
                        }
                        if (j11 >= min) {
                            i9 = i11;
                            i10 = i12;
                            break;
                        }
                        i9 = i11;
                        i10 = i12;
                    }
                }
                if (i9 == segment.limit) {
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    i9 = segment.pos;
                }
                if (i10 == segment2.limit) {
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                    i10 = segment2.pos;
                }
                j10 += min;
            }
            return true;
        }
        return false;
    }

    public static final long commonExpandBuffer(@NotNull Buffer.UnsafeCursor unsafeCursor, int i9) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        if (i9 > 0) {
            if (i9 <= 8192) {
                Buffer buffer = unsafeCursor.buffer;
                if (buffer != null) {
                    if (unsafeCursor.readWrite) {
                        long size = buffer.size();
                        Segment writableSegment$okio = buffer.writableSegment$okio(i9);
                        int i10 = 8192 - writableSegment$okio.limit;
                        writableSegment$okio.limit = 8192;
                        long j10 = i10;
                        buffer.setSize$okio(size + j10);
                        unsafeCursor.setSegment$okio(writableSegment$okio);
                        unsafeCursor.offset = size;
                        unsafeCursor.data = writableSegment$okio.data;
                        unsafeCursor.start = 8192 - i10;
                        unsafeCursor.end = 8192;
                        return j10;
                    }
                    throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
                }
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("minByteCount > Segment.SIZE: ", Integer.valueOf(i9)).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("minByteCount <= 0: ", Integer.valueOf(i9)).toString());
    }

    public static final byte commonGet(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        _UtilKt.checkOffsetAndCount(buffer.size(), j10, 1L);
        Segment segment = buffer.head;
        if (segment != null) {
            if (buffer.size() - j10 < j10) {
                long size = buffer.size();
                while (size > j10) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    size -= segment.limit - segment.pos;
                }
                Intrinsics.checkNotNull(segment);
                return segment.data[(int) ((segment.pos + j10) - size)];
            }
            long j11 = 0;
            while (true) {
                long j12 = (segment.limit - segment.pos) + j11;
                if (j12 > j10) {
                    Intrinsics.checkNotNull(segment);
                    return segment.data[(int) ((segment.pos + j10) - j11)];
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j11 = j12;
            }
        } else {
            Intrinsics.checkNotNull(null);
            throw null;
        }
    }

    public static final int commonHashCode(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment segment = buffer.head;
        if (segment == null) {
            return 0;
        }
        int i9 = 1;
        do {
            int i10 = segment.limit;
            for (int i11 = segment.pos; i11 < i10; i11++) {
                i9 = (i9 * 31) + segment.data[i11];
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        } while (segment != buffer.head);
        return i9;
    }

    public static final long commonIndexOf(@NotNull Buffer buffer, byte b10, long j10, long j11) {
        Segment segment;
        long j12 = j10;
        long j13 = j11;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        boolean z10 = false;
        long j14 = 0;
        if (0 <= j12 && j12 <= j13) {
            z10 = true;
        }
        if (z10) {
            if (j13 > buffer.size()) {
                j13 = buffer.size();
            }
            long j15 = j13;
            if (j12 == j15 || (segment = buffer.head) == null) {
                return -1L;
            }
            if (buffer.size() - j12 < j12) {
                long size = buffer.size();
                while (size > j12) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    size -= segment.limit - segment.pos;
                }
                while (size < j15) {
                    byte[] bArr = segment.data;
                    int min = (int) Math.min(segment.limit, (segment.pos + j15) - size);
                    for (int i9 = (int) ((segment.pos + j12) - size); i9 < min; i9++) {
                        if (bArr[i9] == b10) {
                            return (i9 - segment.pos) + size;
                        }
                    }
                    size += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j12 = size;
                }
                return -1L;
            }
            while (true) {
                long j16 = (segment.limit - segment.pos) + j14;
                if (j16 > j12) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j14 = j16;
            }
            while (j14 < j15) {
                byte[] bArr2 = segment.data;
                int min2 = (int) Math.min(segment.limit, (segment.pos + j15) - j14);
                for (int i10 = (int) ((segment.pos + j12) - j14); i10 < min2; i10++) {
                    if (bArr2[i10] == b10) {
                        return (i10 - segment.pos) + j14;
                    }
                }
                j14 += segment.limit - segment.pos;
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j12 = j14;
            }
            return -1L;
        }
        throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j12 + " toIndex=" + j13).toString());
    }

    public static final long commonIndexOfElement(@NotNull Buffer buffer, @NotNull ByteString targetBytes, long j10) {
        int i9;
        int i10;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long j11 = 0;
        if (j10 >= 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                return -1L;
            }
            if (buffer.size() - j10 < j10) {
                j11 = buffer.size();
                while (j11 > j10) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j11 -= segment.limit - segment.pos;
                }
                if (targetBytes.size() == 2) {
                    byte b10 = targetBytes.getByte(0);
                    byte b11 = targetBytes.getByte(1);
                    while (j11 < buffer.size()) {
                        byte[] bArr = segment.data;
                        i9 = (int) ((segment.pos + j10) - j11);
                        int i11 = segment.limit;
                        while (i9 < i11) {
                            byte b12 = bArr[i9];
                            if (b12 != b10 && b12 != b11) {
                                i9++;
                            }
                            i10 = segment.pos;
                        }
                        j11 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j10 = j11;
                    }
                } else {
                    byte[] internalArray$okio = targetBytes.internalArray$okio();
                    while (j11 < buffer.size()) {
                        byte[] bArr2 = segment.data;
                        i9 = (int) ((segment.pos + j10) - j11);
                        int i12 = segment.limit;
                        while (i9 < i12) {
                            byte b13 = bArr2[i9];
                            int length = internalArray$okio.length;
                            int i13 = 0;
                            while (i13 < length) {
                                byte b14 = internalArray$okio[i13];
                                i13++;
                                if (b13 == b14) {
                                    i10 = segment.pos;
                                }
                            }
                            i9++;
                        }
                        j11 += segment.limit - segment.pos;
                        segment = segment.next;
                        Intrinsics.checkNotNull(segment);
                        j10 = j11;
                    }
                }
                return -1L;
            }
            while (true) {
                long j12 = (segment.limit - segment.pos) + j11;
                if (j12 > j10) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j11 = j12;
            }
            if (targetBytes.size() == 2) {
                byte b15 = targetBytes.getByte(0);
                byte b16 = targetBytes.getByte(1);
                while (j11 < buffer.size()) {
                    byte[] bArr3 = segment.data;
                    i9 = (int) ((segment.pos + j10) - j11);
                    int i14 = segment.limit;
                    while (i9 < i14) {
                        byte b17 = bArr3[i9];
                        if (b17 != b15 && b17 != b16) {
                            i9++;
                        }
                        i10 = segment.pos;
                    }
                    j11 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j10 = j11;
                }
            } else {
                byte[] internalArray$okio2 = targetBytes.internalArray$okio();
                while (j11 < buffer.size()) {
                    byte[] bArr4 = segment.data;
                    i9 = (int) ((segment.pos + j10) - j11);
                    int i15 = segment.limit;
                    while (i9 < i15) {
                        byte b18 = bArr4[i9];
                        int length2 = internalArray$okio2.length;
                        int i16 = 0;
                        while (i16 < length2) {
                            byte b19 = internalArray$okio2[i16];
                            i16++;
                            if (b18 == b19) {
                                i10 = segment.pos;
                            }
                        }
                        i9++;
                    }
                    j11 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j10 = j11;
                }
            }
            return -1L;
            return (i9 - i10) + j11;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j10)).toString());
    }

    public static final int commonNext(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        long j10 = unsafeCursor.offset;
        Buffer buffer = unsafeCursor.buffer;
        Intrinsics.checkNotNull(buffer);
        if (j10 != buffer.size()) {
            long j11 = unsafeCursor.offset;
            return unsafeCursor.seek(j11 == -1 ? 0L : j11 + (unsafeCursor.end - unsafeCursor.start));
        }
        throw new IllegalStateException("no more bytes".toString());
    }

    public static final boolean commonRangeEquals(@NotNull Buffer buffer, long j10, @NotNull ByteString bytes, int i9, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j10 < 0 || i9 < 0 || i10 < 0 || buffer.size() - j10 < i10 || bytes.size() - i9 < i10) {
            return false;
        }
        if (i10 <= 0) {
            return true;
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            if (buffer.getByte(i11 + j10) != bytes.getByte(i11 + i9)) {
                return false;
            }
            if (i12 >= i10) {
                return true;
            }
            i11 = i12;
        }
    }

    public static final int commonRead(@NotNull Buffer buffer, @NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    public static final long commonReadAll(@NotNull Buffer buffer, @NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    @NotNull
    public static final Buffer.UnsafeCursor commonReadAndWriteUnsafe(@NotNull Buffer buffer, @NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor resolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (resolveDefaultParameter.buffer == null) {
            resolveDefaultParameter.buffer = buffer;
            resolveDefaultParameter.readWrite = true;
            return resolveDefaultParameter;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    public static final byte commonReadByte(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() != 0) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            int i11 = i9 + 1;
            byte b10 = segment.data[i9];
            buffer.setSize$okio(buffer.size() - 1);
            if (i11 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i11;
            }
            return b10;
        }
        throw new EOFException();
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0096, code lost:
        r17.setSize$okio(r17.size() - r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x009f, code lost:
        if (r6 == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00a1, code lost:
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00a3, code lost:
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00a4, code lost:
        if (r5 >= r14) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00ae, code lost:
        if (r17.size() == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00b0, code lost:
        if (r6 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00b2, code lost:
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x00b5, code lost:
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x00da, code lost:
        throw new java.lang.NumberFormatException(r1 + " but was 0x" + okio._UtilKt.toHexString(r17.getByte(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x00e0, code lost:
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x00e1, code lost:
        if (r6 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00e5, code lost:
        return -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:?, code lost:
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadDecimalLong(@org.jetbrains.annotations.NotNull okio.Buffer r17) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._BufferKt.commonReadDecimalLong(okio.Buffer):long");
    }

    public static final void commonReadFully(@NotNull Buffer buffer, @NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i9 = 0;
        while (i9 < sink.length) {
            int read = buffer.read(sink, i9, sink.length - i9);
            if (read == -1) {
                throw new EOFException();
            }
            i9 += read;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x009d A[EDGE_INSN: B:90:0x009d->B:85:0x009d ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadHexadecimalUnsignedLong(@org.jetbrains.annotations.NotNull okio.Buffer r15) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            long r0 = r15.size()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La7
            r0 = 0
            r4 = r2
            r1 = 0
        L12:
            okio.Segment r6 = r15.head
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L1d:
            if (r8 >= r9) goto L89
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L2e
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L2e
            int r11 = r10 - r11
            goto L48
        L2e:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L3d
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L3d
        L38:
            int r11 = r10 - r11
            int r11 = r11 + 10
            goto L48
        L3d:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L75
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L75
            goto L38
        L48:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L58
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L1d
        L58:
            okio.Buffer r15 = new okio.Buffer
            r15.<init>()
            okio.Buffer r15 = r15.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r15 = r15.writeByte(r10)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.readUtf8()
            java.lang.String r1 = "Number too large: "
            java.lang.String r15 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r15)
            r0.<init>(r15)
            throw r0
        L75:
            if (r0 == 0) goto L79
            r1 = 1
            goto L89
        L79:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            java.lang.String r0 = okio._UtilKt.toHexString(r10)
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r0)
            r15.<init>(r0)
            throw r15
        L89:
            if (r8 != r9) goto L95
            okio.Segment r7 = r6.pop()
            r15.head = r7
            okio.SegmentPool.recycle(r6)
            goto L97
        L95:
            r6.pos = r8
        L97:
            if (r1 != 0) goto L9d
            okio.Segment r6 = r15.head
            if (r6 != 0) goto L12
        L9d:
            long r1 = r15.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.setSize$okio(r1)
            return r4
        La7:
            java.io.EOFException r15 = new java.io.EOFException
            r15.<init>()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._BufferKt.commonReadHexadecimalUnsignedLong(okio.Buffer):long");
    }

    public static final int commonReadInt(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 4) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i9 < 4) {
                return (buffer.readByte() & UByte.MAX_VALUE) | ((buffer.readByte() & UByte.MAX_VALUE) << 24) | ((buffer.readByte() & UByte.MAX_VALUE) << 16) | ((buffer.readByte() & UByte.MAX_VALUE) << 8);
            }
            byte[] bArr = segment.data;
            int i11 = i9 + 1;
            int i12 = i11 + 1;
            int i13 = ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i11] & UByte.MAX_VALUE) << 16);
            int i14 = i12 + 1;
            int i15 = i13 | ((bArr[i12] & UByte.MAX_VALUE) << 8);
            int i16 = i14 + 1;
            int i17 = i15 | (bArr[i14] & UByte.MAX_VALUE);
            buffer.setSize$okio(buffer.size() - 4);
            if (i16 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i16;
            }
            return i17;
        }
        throw new EOFException();
    }

    public static final long commonReadLong(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 8) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i9 < 8) {
                return ((buffer.readInt() & 4294967295L) << 32) | (4294967295L & buffer.readInt());
            }
            byte[] bArr = segment.data;
            int i11 = i9 + 1;
            int i12 = i11 + 1;
            int i13 = i12 + 1;
            long j10 = ((bArr[i9] & 255) << 56) | ((bArr[i11] & 255) << 48) | ((bArr[i12] & 255) << 40);
            int i14 = i13 + 1;
            long j11 = ((bArr[i13] & 255) << 32) | j10;
            int i15 = i14 + 1;
            int i16 = i15 + 1;
            long j12 = j11 | ((bArr[i14] & 255) << 24) | ((bArr[i15] & 255) << 16);
            int i17 = i16 + 1;
            int i18 = i17 + 1;
            long j13 = j12 | ((bArr[i16] & 255) << 8) | (bArr[i17] & 255);
            buffer.setSize$okio(buffer.size() - 8);
            if (i18 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i18;
            }
            return j13;
        }
        throw new EOFException();
    }

    public static final short commonReadShort(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() >= 2) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i9 < 2) {
                return (short) ((buffer.readByte() & UByte.MAX_VALUE) | ((buffer.readByte() & UByte.MAX_VALUE) << 8));
            }
            byte[] bArr = segment.data;
            int i11 = i9 + 1;
            int i12 = i11 + 1;
            int i13 = ((bArr[i9] & UByte.MAX_VALUE) << 8) | (bArr[i11] & UByte.MAX_VALUE);
            buffer.setSize$okio(buffer.size() - 2);
            if (i12 == i10) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            return (short) i13;
        }
        throw new EOFException();
    }

    @NotNull
    public static final Buffer.UnsafeCursor commonReadUnsafe(@NotNull Buffer buffer, @NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor resolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (resolveDefaultParameter.buffer == null) {
            resolveDefaultParameter.buffer = buffer;
            resolveDefaultParameter.readWrite = false;
            return resolveDefaultParameter;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 >= 0 && j10 <= 2147483647L) {
            if (buffer.size() >= j10) {
                if (i9 == 0) {
                    return "";
                }
                Segment segment = buffer.head;
                Intrinsics.checkNotNull(segment);
                int i10 = segment.pos;
                if (i10 + j10 > segment.limit) {
                    return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j10), 0, 0, 3, null);
                }
                int i11 = (int) j10;
                String commonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i10, i10 + i11);
                segment.pos += i11;
                buffer.setSize$okio(buffer.size() - j10);
                if (segment.pos == segment.limit) {
                    buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
                return commonToUtf8String;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j10)).toString());
    }

    public static final int commonReadUtf8CodePoint(@NotNull Buffer buffer) {
        int i9;
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() != 0) {
            byte b10 = buffer.getByte(0L);
            boolean z10 = false;
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                i9 = b10 & ByteCompanionObject.MAX_VALUE;
                i10 = 1;
                i11 = 0;
            } else if ((b10 & 224) == 192) {
                i9 = b10 & 31;
                i10 = 2;
                i11 = 128;
            } else if ((b10 & 240) == 224) {
                i9 = b10 & 15;
                i10 = 3;
                i11 = 2048;
            } else if ((b10 & 248) != 240) {
                buffer.skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            } else {
                i9 = b10 & 7;
                i10 = 4;
                i11 = 65536;
            }
            long j10 = i10;
            if (buffer.size() >= j10) {
                if (1 < i10) {
                    int i12 = 1;
                    while (true) {
                        int i13 = i12 + 1;
                        long j11 = i12;
                        byte b11 = buffer.getByte(j11);
                        if ((b11 & 192) != 128) {
                            buffer.skip(j11);
                            return Utf8.REPLACEMENT_CODE_POINT;
                        }
                        i9 = (i9 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
                        if (i13 >= i10) {
                            break;
                        }
                        i12 = i13;
                    }
                }
                buffer.skip(j10);
                if (i9 > 1114111) {
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                if (55296 <= i9 && i9 <= 57343) {
                    z10 = true;
                }
                return (!z10 && i9 >= i11) ? i9 : Utf8.REPLACEMENT_CODE_POINT;
            }
            throw new EOFException("size < " + i10 + ": " + buffer.size() + " (to read code point prefixed 0x" + _UtilKt.toHexString(b10) + ')');
        }
        throw new EOFException();
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long indexOf = buffer.indexOf((byte) 10);
        if (indexOf != -1) {
            return readUtf8Line(buffer, indexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 >= 0) {
            long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
            byte b10 = (byte) 10;
            long indexOf = buffer.indexOf(b10, 0L, j11);
            if (indexOf != -1) {
                return readUtf8Line(buffer, indexOf);
            }
            if (j11 < buffer.size() && buffer.getByte(j11 - 1) == ((byte) 13) && buffer.getByte(j11) == b10) {
                return readUtf8Line(buffer, j11);
            }
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j10) + " content=" + buffer2.readByteString().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j10)).toString());
    }

    public static final long commonResizeBuffer(@NotNull Buffer.UnsafeCursor unsafeCursor, long j10) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer != null) {
            if (unsafeCursor.readWrite) {
                long size = buffer.size();
                int i9 = 1;
                int i10 = (j10 > size ? 1 : (j10 == size ? 0 : -1));
                if (i10 <= 0) {
                    if (j10 >= 0) {
                        long j11 = size - j10;
                        while (true) {
                            if (j11 <= 0) {
                                break;
                            }
                            Segment segment = buffer.head;
                            Intrinsics.checkNotNull(segment);
                            Segment segment2 = segment.prev;
                            Intrinsics.checkNotNull(segment2);
                            int i11 = segment2.limit;
                            long j12 = i11 - segment2.pos;
                            if (j12 <= j11) {
                                buffer.head = segment2.pop();
                                SegmentPool.recycle(segment2);
                                j11 -= j12;
                            } else {
                                segment2.limit = i11 - ((int) j11);
                                break;
                            }
                        }
                        unsafeCursor.setSegment$okio(null);
                        unsafeCursor.offset = j10;
                        unsafeCursor.data = null;
                        unsafeCursor.start = -1;
                        unsafeCursor.end = -1;
                    } else {
                        throw new IllegalArgumentException(Intrinsics.stringPlus("newSize < 0: ", Long.valueOf(j10)).toString());
                    }
                } else if (i10 > 0) {
                    long j13 = j10 - size;
                    boolean z10 = true;
                    while (j13 > 0) {
                        Segment writableSegment$okio = buffer.writableSegment$okio(i9);
                        int min = (int) Math.min(j13, 8192 - writableSegment$okio.limit);
                        writableSegment$okio.limit += min;
                        j13 -= min;
                        if (z10) {
                            unsafeCursor.setSegment$okio(writableSegment$okio);
                            unsafeCursor.offset = size;
                            unsafeCursor.data = writableSegment$okio.data;
                            int i12 = writableSegment$okio.limit;
                            unsafeCursor.start = i12 - min;
                            unsafeCursor.end = i12;
                            i9 = 1;
                            z10 = false;
                        } else {
                            i9 = 1;
                        }
                    }
                }
                buffer.setSize$okio(j10);
                return size;
            }
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
        }
        throw new IllegalStateException("not attached to a buffer".toString());
    }

    public static final int commonSeek(@NotNull Buffer.UnsafeCursor unsafeCursor, long j10) {
        Segment segment;
        Intrinsics.checkNotNullParameter(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer != null) {
            int i9 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
            if (i9 >= 0 && j10 <= buffer.size()) {
                if (i9 != 0 && j10 != buffer.size()) {
                    long j11 = 0;
                    long size = buffer.size();
                    Segment segment2 = buffer.head;
                    if (unsafeCursor.getSegment$okio() != null) {
                        long j12 = unsafeCursor.offset;
                        int i10 = unsafeCursor.start;
                        Segment segment$okio = unsafeCursor.getSegment$okio();
                        Intrinsics.checkNotNull(segment$okio);
                        long j13 = j12 - (i10 - segment$okio.pos);
                        if (j13 > j10) {
                            segment2 = unsafeCursor.getSegment$okio();
                            size = j13;
                            segment = segment2;
                        } else {
                            segment = unsafeCursor.getSegment$okio();
                            j11 = j13;
                        }
                    } else {
                        segment = segment2;
                    }
                    if (size - j10 > j10 - j11) {
                        while (true) {
                            Intrinsics.checkNotNull(segment);
                            int i11 = segment.limit;
                            int i12 = segment.pos;
                            if (j10 < (i11 - i12) + j11) {
                                break;
                            }
                            j11 += i11 - i12;
                            segment = segment.next;
                        }
                    } else {
                        while (size > j10) {
                            Intrinsics.checkNotNull(segment2);
                            segment2 = segment2.prev;
                            Intrinsics.checkNotNull(segment2);
                            size -= segment2.limit - segment2.pos;
                        }
                        j11 = size;
                        segment = segment2;
                    }
                    if (unsafeCursor.readWrite) {
                        Intrinsics.checkNotNull(segment);
                        if (segment.shared) {
                            Segment unsharedCopy = segment.unsharedCopy();
                            if (buffer.head == segment) {
                                buffer.head = unsharedCopy;
                            }
                            segment = segment.push(unsharedCopy);
                            Segment segment3 = segment.prev;
                            Intrinsics.checkNotNull(segment3);
                            segment3.pop();
                        }
                    }
                    unsafeCursor.setSegment$okio(segment);
                    unsafeCursor.offset = j10;
                    Intrinsics.checkNotNull(segment);
                    unsafeCursor.data = segment.data;
                    int i13 = segment.pos + ((int) (j10 - j11));
                    unsafeCursor.start = i13;
                    int i14 = segment.limit;
                    unsafeCursor.end = i14;
                    return i14 - i13;
                }
                unsafeCursor.setSegment$okio(null);
                unsafeCursor.offset = j10;
                unsafeCursor.data = null;
                unsafeCursor.start = -1;
                unsafeCursor.end = -1;
                return -1;
            }
            throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + buffer.size());
        }
        throw new IllegalStateException("not attached to a buffer".toString());
    }

    public static final int commonSelect(@NotNull Buffer buffer, @NotNull Options options) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings$okio()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    public static final void commonSkip(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        while (j10 > 0) {
            Segment segment = buffer.head;
            if (segment != null) {
                int min = (int) Math.min(j10, segment.limit - segment.pos);
                long j11 = min;
                buffer.setSize$okio(buffer.size() - j11);
                j10 -= j11;
                int i9 = segment.pos + min;
                segment.pos = i9;
                if (i9 == segment.limit) {
                    buffer.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @NotNull
    public static final ByteString commonSnapshot(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.size() <= 2147483647L) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(Intrinsics.stringPlus("size > Int.MAX_VALUE: ", Long.valueOf(buffer.size())).toString());
    }

    @NotNull
    public static final Segment commonWritableSegment(@NotNull Buffer buffer, int i9) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        boolean z10 = true;
        if ((i9 < 1 || i9 > 8192) ? false : false) {
            Segment segment = buffer.head;
            if (segment == null) {
                Segment take = SegmentPool.take();
                buffer.head = take;
                take.prev = take;
                take.next = take;
                return take;
            }
            Intrinsics.checkNotNull(segment);
            Segment segment2 = segment.prev;
            Intrinsics.checkNotNull(segment2);
            return (segment2.limit + i9 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull ByteString byteString, int i9, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(buffer, i9, i10);
        return buffer;
    }

    public static /* synthetic */ Buffer commonWrite$default(Buffer buffer, ByteString byteString, int i9, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i9 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = byteString.size();
        }
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(buffer, i9, i10);
        return buffer;
    }

    public static final long commonWriteAll(@NotNull Buffer buffer, @NotNull Source source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = 0;
        while (true) {
            long read = source.read(buffer, 8192L);
            if (read == -1) {
                return j10;
            }
            j10 += read;
        }
    }

    @NotNull
    public static final Buffer commonWriteByte(@NotNull Buffer buffer, int i9) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        writableSegment$okio.limit = i10 + 1;
        bArr[i10] = (byte) i9;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteDecimalLong(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 == 0) {
            return buffer.writeByte(48);
        }
        boolean z10 = false;
        int i10 = 1;
        if (i9 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return buffer.writeUtf8("-9223372036854775808");
            }
            z10 = true;
        }
        if (j10 >= 100000000) {
            i10 = j10 < 1000000000000L ? j10 < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? j10 < 1000000000 ? 9 : 10 : j10 < 100000000000L ? 11 : 12 : j10 < 1000000000000000L ? j10 < 10000000000000L ? 13 : j10 < 100000000000000L ? 14 : 15 : j10 < 100000000000000000L ? j10 < 10000000000000000L ? 16 : 17 : j10 < 1000000000000000000L ? 18 : 19;
        } else if (j10 >= 10000) {
            i10 = j10 < 1000000 ? j10 < 100000 ? 5 : 6 : j10 < 10000000 ? 7 : 8;
        } else if (j10 >= 100) {
            i10 = j10 < 1000 ? 3 : 4;
        } else if (j10 >= 10) {
            i10 = 2;
        }
        if (z10) {
            i10++;
        }
        Segment writableSegment$okio = buffer.writableSegment$okio(i10);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit + i10;
        while (j10 != 0) {
            long j11 = 10;
            i11--;
            bArr[i11] = getHEX_DIGIT_BYTES()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z10) {
            bArr[i11 - 1] = (byte) 45;
        }
        writableSegment$okio.limit += i10;
        buffer.setSize$okio(buffer.size() + i10);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteHexadecimalUnsignedLong(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 == 0) {
            return buffer.writeByte(48);
        }
        long j11 = (j10 >>> 1) | j10;
        long j12 = j11 | (j11 >>> 2);
        long j13 = j12 | (j12 >>> 4);
        long j14 = j13 | (j13 >>> 8);
        long j15 = j14 | (j14 >>> 16);
        long j16 = j15 | (j15 >>> 32);
        long j17 = j16 - ((j16 >>> 1) & 6148914691236517205L);
        long j18 = ((j17 >>> 2) & 3689348814741910323L) + (j17 & 3689348814741910323L);
        long j19 = ((j18 >>> 4) + j18) & 1085102592571150095L;
        long j20 = j19 + (j19 >>> 8);
        long j21 = j20 + (j20 >>> 16);
        int i9 = (int) ((((j21 & 63) + ((j21 >>> 32) & 63)) + 3) / 4);
        Segment writableSegment$okio = buffer.writableSegment$okio(i9);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        for (int i11 = (i10 + i9) - 1; i11 >= i10; i11--) {
            bArr[i11] = getHEX_DIGIT_BYTES()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        writableSegment$okio.limit += i9;
        buffer.setSize$okio(buffer.size() + i9);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteInt(@NotNull Buffer buffer, int i9) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i9 >>> 24) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((i9 >>> 16) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((i9 >>> 8) & 255);
        bArr[i13] = (byte) (i9 & 255);
        writableSegment$okio.limit = i13 + 1;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteLong(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(8);
        byte[] bArr = writableSegment$okio.data;
        int i9 = writableSegment$okio.limit;
        int i10 = i9 + 1;
        bArr[i9] = (byte) ((j10 >>> 56) & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((j10 >>> 48) & 255);
        int i12 = i11 + 1;
        bArr[i11] = (byte) ((j10 >>> 40) & 255);
        int i13 = i12 + 1;
        bArr[i12] = (byte) ((j10 >>> 32) & 255);
        int i14 = i13 + 1;
        bArr[i13] = (byte) ((j10 >>> 24) & 255);
        int i15 = i14 + 1;
        bArr[i14] = (byte) ((j10 >>> 16) & 255);
        int i16 = i15 + 1;
        bArr[i15] = (byte) ((j10 >>> 8) & 255);
        bArr[i16] = (byte) (j10 & 255);
        writableSegment$okio.limit = i16 + 1;
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteShort(@NotNull Buffer buffer, int i9) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Segment writableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i9 >>> 8) & 255);
        bArr[i11] = (byte) (i9 & 255);
        writableSegment$okio.limit = i11 + 1;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteUtf8(@NotNull Buffer buffer, @NotNull String string, int i9, int i10) {
        char charAt;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (i9 >= 0) {
            if (i10 >= i9) {
                if (!(i10 <= string.length())) {
                    throw new IllegalArgumentException(("endIndex > string.length: " + i10 + " > " + string.length()).toString());
                }
                while (i9 < i10) {
                    char charAt2 = string.charAt(i9);
                    if (charAt2 < 128) {
                        Segment writableSegment$okio = buffer.writableSegment$okio(1);
                        byte[] bArr = writableSegment$okio.data;
                        int i11 = writableSegment$okio.limit - i9;
                        int min = Math.min(i10, 8192 - i11);
                        int i12 = i9 + 1;
                        bArr[i9 + i11] = (byte) charAt2;
                        while (true) {
                            i9 = i12;
                            if (i9 >= min || (charAt = string.charAt(i9)) >= 128) {
                                break;
                            }
                            i12 = i9 + 1;
                            bArr[i9 + i11] = (byte) charAt;
                        }
                        int i13 = writableSegment$okio.limit;
                        int i14 = (i11 + i9) - i13;
                        writableSegment$okio.limit = i13 + i14;
                        buffer.setSize$okio(buffer.size() + i14);
                    } else {
                        if (charAt2 < 2048) {
                            Segment writableSegment$okio2 = buffer.writableSegment$okio(2);
                            byte[] bArr2 = writableSegment$okio2.data;
                            int i15 = writableSegment$okio2.limit;
                            bArr2[i15] = (byte) ((charAt2 >> 6) | 192);
                            bArr2[i15 + 1] = (byte) ((charAt2 & '?') | 128);
                            writableSegment$okio2.limit = i15 + 2;
                            buffer.setSize$okio(buffer.size() + 2);
                        } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                            int i16 = i9 + 1;
                            char charAt3 = i16 < i10 ? string.charAt(i16) : (char) 0;
                            if (charAt2 <= 56319) {
                                if (56320 <= charAt3 && charAt3 <= 57343) {
                                    int i17 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                    Segment writableSegment$okio3 = buffer.writableSegment$okio(4);
                                    byte[] bArr3 = writableSegment$okio3.data;
                                    int i18 = writableSegment$okio3.limit;
                                    bArr3[i18] = (byte) ((i17 >> 18) | 240);
                                    bArr3[i18 + 1] = (byte) (((i17 >> 12) & 63) | 128);
                                    bArr3[i18 + 2] = (byte) (((i17 >> 6) & 63) | 128);
                                    bArr3[i18 + 3] = (byte) ((i17 & 63) | 128);
                                    writableSegment$okio3.limit = i18 + 4;
                                    buffer.setSize$okio(buffer.size() + 4);
                                    i9 += 2;
                                }
                            }
                            buffer.writeByte(63);
                            i9 = i16;
                        } else {
                            Segment writableSegment$okio4 = buffer.writableSegment$okio(3);
                            byte[] bArr4 = writableSegment$okio4.data;
                            int i19 = writableSegment$okio4.limit;
                            bArr4[i19] = (byte) ((charAt2 >> '\f') | 224);
                            bArr4[i19 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                            bArr4[i19 + 2] = (byte) ((charAt2 & '?') | 128);
                            writableSegment$okio4.limit = i19 + 3;
                            buffer.setSize$okio(buffer.size() + 3);
                        }
                        i9++;
                    }
                }
                return buffer;
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i10 + " < " + i9).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i9)).toString());
    }

    @NotNull
    public static final Buffer commonWriteUtf8CodePoint(@NotNull Buffer buffer, int i9) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i9 < 128) {
            buffer.writeByte(i9);
        } else if (i9 < 2048) {
            Segment writableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.data;
            int i10 = writableSegment$okio.limit;
            bArr[i10] = (byte) ((i9 >> 6) | 192);
            bArr[i10 + 1] = (byte) ((i9 & 63) | 128);
            writableSegment$okio.limit = i10 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else {
            boolean z10 = false;
            if (55296 <= i9 && i9 <= 57343) {
                z10 = true;
            }
            if (z10) {
                buffer.writeByte(63);
            } else if (i9 < 65536) {
                Segment writableSegment$okio2 = buffer.writableSegment$okio(3);
                byte[] bArr2 = writableSegment$okio2.data;
                int i11 = writableSegment$okio2.limit;
                bArr2[i11] = (byte) ((i9 >> 12) | 224);
                bArr2[i11 + 1] = (byte) (((i9 >> 6) & 63) | 128);
                bArr2[i11 + 2] = (byte) ((i9 & 63) | 128);
                writableSegment$okio2.limit = i11 + 3;
                buffer.setSize$okio(buffer.size() + 3);
            } else if (i9 <= 1114111) {
                Segment writableSegment$okio3 = buffer.writableSegment$okio(4);
                byte[] bArr3 = writableSegment$okio3.data;
                int i12 = writableSegment$okio3.limit;
                bArr3[i12] = (byte) ((i9 >> 18) | 240);
                bArr3[i12 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                bArr3[i12 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                bArr3[i12 + 3] = (byte) ((i9 & 63) | 128);
                writableSegment$okio3.limit = i12 + 4;
                buffer.setSize$okio(buffer.size() + 4);
            } else {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected code point: 0x", _UtilKt.toHexString(i9)));
            }
        }
        return buffer;
    }

    @NotNull
    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final boolean rangeEquals(@NotNull Segment segment, int i9, @NotNull byte[] bytes, int i10, int i11) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int i12 = segment.limit;
        byte[] bArr = segment.data;
        while (i10 < i11) {
            if (i9 == i12) {
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i9 = segment.pos;
                i12 = segment.limit;
            }
            if (bArr[i9] != bytes[i10]) {
                return false;
            }
            i9++;
            i10++;
        }
        return true;
    }

    @NotNull
    public static final String readUtf8Line(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (buffer.getByte(j11) == ((byte) 13)) {
                String readUtf8 = buffer.readUtf8(j11);
                buffer.skip(2L);
                return readUtf8;
            }
        }
        String readUtf82 = buffer.readUtf8(j10);
        buffer.skip(1L);
        return readUtf82;
    }

    public static final <T> T seek(@NotNull Buffer buffer, long j10, @NotNull Function2<? super Segment, ? super Long, ? extends T> lambda) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(lambda, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return lambda.mo1invoke(null, -1L);
        }
        if (buffer.size() - j10 < j10) {
            long size = buffer.size();
            while (size > j10) {
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                size -= segment.limit - segment.pos;
            }
            return lambda.mo1invoke(segment, Long.valueOf(size));
        }
        long j11 = 0;
        while (true) {
            long j12 = (segment.limit - segment.pos) + j11;
            if (j12 > j10) {
                return lambda.mo1invoke(segment, Long.valueOf(j11));
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            j11 = j12;
        }
    }

    public static final int selectPrefix(@NotNull Buffer buffer, @NotNull Options options, boolean z10) {
        int i9;
        int i10;
        int i11;
        int i12;
        Segment segment;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 == null) {
            return z10 ? -2 : -1;
        }
        byte[] bArr = segment2.data;
        int i13 = segment2.pos;
        int i14 = segment2.limit;
        int[] trie$okio = options.getTrie$okio();
        Segment segment3 = segment2;
        int i15 = 0;
        int i16 = -1;
        loop0: while (true) {
            int i17 = i15 + 1;
            int i18 = trie$okio[i15];
            int i19 = i17 + 1;
            int i20 = trie$okio[i17];
            if (i20 != -1) {
                i16 = i20;
            }
            if (segment3 == null) {
                break;
            }
            if (i18 >= 0) {
                i9 = i13 + 1;
                int i21 = bArr[i13] & UByte.MAX_VALUE;
                int i22 = i19 + i18;
                while (i19 != i22) {
                    if (i21 == trie$okio[i19]) {
                        i10 = trie$okio[i19 + i18];
                        if (i9 == i14) {
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            i9 = segment3.pos;
                            bArr = segment3.data;
                            i14 = segment3.limit;
                            if (segment3 == segment2) {
                                segment3 = null;
                            }
                        }
                    } else {
                        i19++;
                    }
                }
                return i16;
            }
            int i23 = i19 + (i18 * (-1));
            while (true) {
                int i24 = i13 + 1;
                int i25 = i19 + 1;
                if ((bArr[i13] & UByte.MAX_VALUE) != trie$okio[i19]) {
                    return i16;
                }
                boolean z11 = i25 == i23;
                if (i24 == i14) {
                    Intrinsics.checkNotNull(segment3);
                    Segment segment4 = segment3.next;
                    Intrinsics.checkNotNull(segment4);
                    i12 = segment4.pos;
                    byte[] bArr2 = segment4.data;
                    i11 = segment4.limit;
                    if (segment4 != segment2) {
                        segment = segment4;
                        bArr = bArr2;
                    } else if (!z11) {
                        break loop0;
                    } else {
                        bArr = bArr2;
                        segment = null;
                    }
                } else {
                    Segment segment5 = segment3;
                    i11 = i14;
                    i12 = i24;
                    segment = segment5;
                }
                if (z11) {
                    i10 = trie$okio[i25];
                    i9 = i12;
                    i14 = i11;
                    segment3 = segment;
                    break;
                }
                i13 = i12;
                i14 = i11;
                i19 = i25;
                segment3 = segment;
            }
            if (i10 >= 0) {
                return i10;
            }
            i15 = -i10;
            i13 = i9;
        }
        if (z10) {
            return -2;
        }
        return i16;
    }

    public static /* synthetic */ int selectPrefix$default(Buffer buffer, Options options, boolean z10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            z10 = false;
        }
        return selectPrefix(buffer, options, z10);
    }

    public static final int commonRead(@NotNull Buffer buffer, @NotNull byte[] sink, int i9, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i9, i10);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i10, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i11 = segment.pos;
        ArraysKt___ArraysJvmKt.copyInto(bArr, sink, i9, i11, i11 + min);
        segment.pos += min;
        buffer.setSize$okio(buffer.size() - min);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 >= 0 && j10 <= 2147483647L) {
            if (buffer.size() >= j10) {
                byte[] bArr = new byte[(int) j10];
                buffer.readFully(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j10)).toString());
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull Buffer buffer, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j10 >= 0 && j10 <= 2147483647L) {
            if (buffer.size() >= j10) {
                if (j10 >= 4096) {
                    ByteString snapshot = buffer.snapshot((int) j10);
                    buffer.skip(j10);
                    return snapshot;
                }
                return new ByteString(buffer.readByteArray(j10));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j10)).toString());
    }

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        return buffer.write(source, 0, source.length);
    }

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull byte[] source, int i9, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = i10;
        _UtilKt.checkOffsetAndCount(source.length, i9, j10);
        int i11 = i10 + i9;
        while (i9 < i11) {
            Segment writableSegment$okio = buffer.writableSegment$okio(1);
            int min = Math.min(i11 - i9, 8192 - writableSegment$okio.limit);
            int i12 = i9 + min;
            ArraysKt___ArraysJvmKt.copyInto(source, writableSegment$okio.data, writableSegment$okio.limit, i9, i12);
            writableSegment$okio.limit += min;
            i9 = i12;
        }
        buffer.setSize$okio(buffer.size() + j10);
        return buffer;
    }

    public static final void commonReadFully(@NotNull Buffer buffer, @NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (buffer.size() >= j10) {
            sink.write(buffer, j10);
        } else {
            sink.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    @NotNull
    public static final ByteString commonSnapshot(@NotNull Buffer buffer, int i9) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i9 == 0) {
            return ByteString.EMPTY;
        }
        _UtilKt.checkOffsetAndCount(buffer.size(), 0L, i9);
        Segment segment = buffer.head;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i11 < i9) {
            Intrinsics.checkNotNull(segment);
            int i13 = segment.limit;
            int i14 = segment.pos;
            if (i13 != i14) {
                i11 += i13 - i14;
                i12++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i12];
        int[] iArr = new int[i12 * 2];
        Segment segment2 = buffer.head;
        int i15 = 0;
        while (i10 < i9) {
            Intrinsics.checkNotNull(segment2);
            bArr[i15] = segment2.data;
            i10 += segment2.limit - segment2.pos;
            iArr[i15] = Math.min(i10, i9);
            iArr[i15 + i12] = segment2.pos;
            segment2.shared = true;
            i15++;
            segment2 = segment2.next;
        }
        return new SegmentedByteString(bArr, iArr);
    }

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull Source source, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        while (j10 > 0) {
            long read = source.read(buffer, j10);
            if (read == -1) {
                throw new EOFException();
            }
            j10 -= read;
        }
        return buffer;
    }

    public static final long commonRead(@NotNull Buffer buffer, @NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j10 >= 0) {
            if (buffer.size() == 0) {
                return -1L;
            }
            if (j10 > buffer.size()) {
                j10 = buffer.size();
            }
            sink.write(buffer, j10);
            return j10;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
    }

    public static final void commonWrite(@NotNull Buffer buffer, @NotNull Buffer source, long j10) {
        Segment segment;
        Segment segment2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != buffer) {
            _UtilKt.checkOffsetAndCount(source.size(), 0L, j10);
            while (j10 > 0) {
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                int i9 = segment3.limit;
                Intrinsics.checkNotNull(source.head);
                if (j10 < i9 - segment.pos) {
                    Segment segment4 = buffer.head;
                    if (segment4 != null) {
                        Intrinsics.checkNotNull(segment4);
                        segment2 = segment4.prev;
                    } else {
                        segment2 = null;
                    }
                    if (segment2 != null && segment2.owner) {
                        if ((segment2.limit + j10) - (segment2.shared ? 0 : segment2.pos) <= 8192) {
                            Segment segment5 = source.head;
                            Intrinsics.checkNotNull(segment5);
                            segment5.writeTo(segment2, (int) j10);
                            source.setSize$okio(source.size() - j10);
                            buffer.setSize$okio(buffer.size() + j10);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    Intrinsics.checkNotNull(segment6);
                    source.head = segment6.split((int) j10);
                }
                Segment segment7 = source.head;
                Intrinsics.checkNotNull(segment7);
                long j11 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = buffer.head;
                if (segment8 == null) {
                    buffer.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    Intrinsics.checkNotNull(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.checkNotNull(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j11);
                buffer.setSize$okio(buffer.size() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    public static final long commonIndexOf(@NotNull Buffer buffer, @NotNull ByteString bytes, long j10) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() > 0) {
            long j11 = 0;
            if (j10 >= 0) {
                Segment segment = buffer.head;
                if (segment == null) {
                    return -1L;
                }
                if (buffer.size() - j10 < j10) {
                    long size = buffer.size();
                    while (size > j10) {
                        segment = segment.prev;
                        Intrinsics.checkNotNull(segment);
                        size -= segment.limit - segment.pos;
                    }
                    byte[] internalArray$okio = bytes.internalArray$okio();
                    byte b10 = internalArray$okio[0];
                    int size2 = bytes.size();
                    long size3 = (buffer.size() - size2) + 1;
                    long j12 = size;
                    Segment segment2 = segment;
                    long j13 = j10;
                    while (j12 < size3) {
                        byte[] bArr = segment2.data;
                        Segment segment3 = segment2;
                        int min = (int) Math.min(segment2.limit, (segment2.pos + size3) - j12);
                        int i9 = (int) ((segment3.pos + j13) - j12);
                        if (i9 < min) {
                            while (true) {
                                int i10 = i9 + 1;
                                if (bArr[i9] == b10 && rangeEquals(segment3, i10, internalArray$okio, 1, size2)) {
                                    return (i9 - segment3.pos) + j12;
                                }
                                if (i10 >= min) {
                                    break;
                                }
                                i9 = i10;
                            }
                        }
                        j12 += segment3.limit - segment3.pos;
                        segment2 = segment3.next;
                        Intrinsics.checkNotNull(segment2);
                        j13 = j12;
                    }
                    return -1L;
                }
                while (true) {
                    long j14 = (segment.limit - segment.pos) + j11;
                    if (j14 > j10) {
                        break;
                    }
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j11 = j14;
                }
                byte[] internalArray$okio2 = bytes.internalArray$okio();
                byte b11 = internalArray$okio2[0];
                int size4 = bytes.size();
                long size5 = (buffer.size() - size4) + 1;
                long j15 = j11;
                Segment segment4 = segment;
                long j16 = j10;
                while (j15 < size5) {
                    byte[] bArr2 = segment4.data;
                    long j17 = size5;
                    int min2 = (int) Math.min(segment4.limit, (segment4.pos + size5) - j15);
                    int i11 = (int) ((segment4.pos + j16) - j15);
                    if (i11 < min2) {
                        while (true) {
                            int i12 = i11 + 1;
                            if (bArr2[i11] == b11 && rangeEquals(segment4, i12, internalArray$okio2, 1, size4)) {
                                return (i11 - segment4.pos) + j15;
                            }
                            if (i12 >= min2) {
                                break;
                            }
                            i11 = i12;
                        }
                    }
                    j15 += segment4.limit - segment4.pos;
                    segment4 = segment4.next;
                    Intrinsics.checkNotNull(segment4);
                    size5 = j17;
                    j16 = j15;
                }
                return -1L;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j10)).toString());
        }
        throw new IllegalArgumentException("bytes is empty".toString());
    }
}
