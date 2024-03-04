package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.opendevice.i;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Typography;
import okhttp3.internal.connection.RealConnection;
import okio.internal._BufferKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0000H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\u0000H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u0010\u0016\u001a\u00020\u0000J$\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u001a\u001a\u00020\fJ \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020\u0000H\u0016J\b\u0010!\u001a\u00020\u0000H\u0016J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020#H\u0016J\b\u0010'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\fH\u0087\u0002¢\u0006\u0002\b+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\fH\u0007¢\u0006\u0002\b-J\b\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\fH\u0016J \u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\f2\u0006\u00108\u001a\u00020\fH\u0016J\u0010\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\u0010\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\b\u0010@\u001a\u00020\u0019H\u0016J\b\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\f2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010H\u001a\u00020\f2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010M\u001a\u00020)H\u0016J\b\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010P\u001a\u00020\fH\u0016J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\fJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010U\u001a\u00020\fH\u0016J\b\u0010V\u001a\u00020/H\u0016J\b\u0010W\u001a\u00020/H\u0016J\b\u0010X\u001a\u00020\fH\u0016J\b\u0010Y\u001a\u00020\fH\u0016J\b\u0010Z\u001a\u00020[H\u0016J\b\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\fH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0002\bnJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\b\u0010q\u001a\u00020rH\u0016J\b\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H\u0000¢\u0006\u0002\bvJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010{\u001a\u00020\f2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020\u00002\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R&\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8G@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0091\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "()V", "buffer", "getBuffer", "()Lokio/Buffer;", "head", "Lokio/Segment;", "<set-?>", "", "size", "()J", "setSize$okio", "(J)V", "clear", "", "clone", "close", "completeSegmentByteCount", "copy", "copyTo", "out", "Ljava/io/OutputStream;", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "digest", "Lokio/ByteString;", "algorithm", "", "emit", "emitCompleteSegments", "equals", "", "other", "", "exhausted", "flush", "get", "", "pos", "getByte", "index", "-deprecated_getByte", "hashCode", "", "hmac", "key", "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", "b", "fromIndex", "toIndex", "bytes", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "md5", "outputStream", "peek", "rangeEquals", "bytesOffset", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readAndWriteUnsafe", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFrom", "input", "forever", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "charset", "Ljava/nio/charset/Charset;", "readUnsafe", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "require", "select", "options", "Lokio/Options;", "sha1", "sha256", "sha512", "-deprecated_size", "skip", "snapshot", "timeout", "Lokio/Timeout;", "toString", "writableSegment", "minimumCapacity", "writableSegment$okio", "write", ShareConstants.FEED_SOURCE_PARAM, "byteString", "Lokio/Source;", "writeAll", "writeByte", "writeDecimalLong", NotifyType.VIBRATE, "writeHexadecimalUnsignedLong", "writeInt", i.TAG, "writeIntLe", "writeLong", "writeLongLe", "writeShort", NotifyType.SOUND, "writeShortLe", "writeString", TypedValues.Custom.S_STRING, "beginIndex", "endIndex", "writeTo", "writeUtf8", "writeUtf8CodePoint", "codePoint", "UnsafeCursor", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    @JvmField
    @Nullable
    public Segment head;
    private long size;

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\bJ\u0006\u0010\u0018\u001a\u00020\bJ\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u000e\u0010\u001b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "()V", "buffer", "Lokio/Buffer;", "data", "", "end", "", TypedValues.CycleType.S_WAVE_OFFSET, "", "readWrite", "", "segment", "Lokio/Segment;", "getSegment$okio", "()Lokio/Segment;", "setSegment$okio", "(Lokio/Segment;)V", "start", "close", "", "expandBuffer", "minByteCount", "next", "resizeBuffer", "newSize", "seek", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class UnsafeCursor implements Closeable {
        @JvmField
        @Nullable
        public Buffer buffer;
        @JvmField
        @Nullable
        public byte[] data;
        @JvmField
        public boolean readWrite;
        @Nullable
        private Segment segment;
        @JvmField
        public long offset = -1;
        @JvmField
        public int start = -1;
        @JvmField
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer != null) {
                this.buffer = null;
                setSegment$okio(null);
                this.offset = -1L;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        public final long expandBuffer(int i9) {
            if (i9 > 0) {
                if (i9 <= 8192) {
                    Buffer buffer = this.buffer;
                    if (buffer != null) {
                        if (this.readWrite) {
                            long size = buffer.size();
                            Segment writableSegment$okio = buffer.writableSegment$okio(i9);
                            int i10 = 8192 - writableSegment$okio.limit;
                            writableSegment$okio.limit = 8192;
                            long j10 = i10;
                            buffer.setSize$okio(size + j10);
                            setSegment$okio(writableSegment$okio);
                            this.offset = size;
                            this.data = writableSegment$okio.data;
                            this.start = 8192 - i10;
                            this.end = 8192;
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

        @Nullable
        public final Segment getSegment$okio() {
            return this.segment;
        }

        public final int next() {
            long j10 = this.offset;
            Buffer buffer = this.buffer;
            Intrinsics.checkNotNull(buffer);
            if (j10 != buffer.size()) {
                long j11 = this.offset;
                return seek(j11 == -1 ? 0L : j11 + (this.end - this.start));
            }
            throw new IllegalStateException("no more bytes".toString());
        }

        public final long resizeBuffer(long j10) {
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (this.readWrite) {
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
                            setSegment$okio(null);
                            this.offset = j10;
                            this.data = null;
                            this.start = -1;
                            this.end = -1;
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
                                setSegment$okio(writableSegment$okio);
                                this.offset = size;
                                this.data = writableSegment$okio.data;
                                int i12 = writableSegment$okio.limit;
                                this.start = i12 - min;
                                this.end = i12;
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

        public final int seek(long j10) {
            Segment segment;
            Buffer buffer = this.buffer;
            if (buffer != null) {
                int i9 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
                if (i9 >= 0 && j10 <= buffer.size()) {
                    if (i9 != 0 && j10 != buffer.size()) {
                        long j11 = 0;
                        long size = buffer.size();
                        Segment segment2 = buffer.head;
                        if (getSegment$okio() != null) {
                            long j12 = this.offset;
                            int i10 = this.start;
                            Segment segment$okio = getSegment$okio();
                            Intrinsics.checkNotNull(segment$okio);
                            long j13 = j12 - (i10 - segment$okio.pos);
                            if (j13 > j10) {
                                segment2 = getSegment$okio();
                                size = j13;
                                segment = segment2;
                            } else {
                                segment = getSegment$okio();
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
                        if (this.readWrite) {
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
                        setSegment$okio(segment);
                        this.offset = j10;
                        Intrinsics.checkNotNull(segment);
                        this.data = segment.data;
                        int i13 = segment.pos + ((int) (j10 - j11));
                        this.start = i13;
                        int i14 = segment.limit;
                        this.end = i14;
                        return i14 - i13;
                    }
                    setSegment$okio(null);
                    this.offset = j10;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                    return -1;
                }
                throw new ArrayIndexOutOfBoundsException("offset=" + j10 + " > size=" + buffer.size());
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        public final void setSegment$okio(@Nullable Segment segment) {
            this.segment = segment;
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j10, long j11, int i9, Object obj) throws IOException {
        if ((i9 & 2) != 0) {
            j10 = 0;
        }
        long j12 = j10;
        if ((i9 & 4) != 0) {
            j11 = buffer.size - j12;
        }
        return buffer.copyTo(outputStream, j12, j11);
    }

    private final ByteString digest(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i9 = segment.pos;
            messageDigest.update(bArr, i9, segment.limit - i9);
            Segment segment2 = segment.next;
            Intrinsics.checkNotNull(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i10 = segment2.pos;
                messageDigest.update(bArr2, i10, segment2.limit - i10);
                segment2 = segment2.next;
                Intrinsics.checkNotNull(segment2);
            }
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "messageDigest.digest()");
        return new ByteString(digest);
    }

    private final ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.internalArray$okio(), str));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i9 = segment.pos;
                mac.update(bArr, i9, segment.limit - i9);
                Segment segment2 = segment.next;
                Intrinsics.checkNotNull(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i10 = segment2.pos;
                    mac.update(bArr2, i10, segment2.limit - i10);
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                }
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "mac.doFinal()");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            unsafeCursor = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            unsafeCursor = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j10, int i9, Object obj) throws IOException {
        if ((i9 & 2) != 0) {
            j10 = buffer.size;
        }
        return buffer.writeTo(outputStream, j10);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to operator function", replaceWith = @ReplaceWith(expression = "this[index]", imports = {}))
    @JvmName(name = "-deprecated_getByte")
    /* renamed from: -deprecated_getByte  reason: not valid java name */
    public final byte m3353deprecated_getByte(long j10) {
        return getByte(j10);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    @JvmName(name = "-deprecated_size")
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final long m3354deprecated_size() {
        return this.size;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this;
    }

    public final void clear() {
        skip(size());
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = segment.prev;
        Intrinsics.checkNotNull(segment2);
        int i9 = segment2.limit;
        if (i9 < 8192 && segment2.owner) {
            size -= i9 - segment2.pos;
        }
        return size;
    }

    @NotNull
    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            buffer.head = sharedCopy;
            sharedCopy.prev = sharedCopy;
            sharedCopy.next = sharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = sharedCopy.prev;
                Intrinsics.checkNotNull(segment3);
                Intrinsics.checkNotNull(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo$default(this, out, 0L, 0L, 6, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo$default(this, out, j10, 0L, 4, (Object) null);
    }

    @JvmOverloads
    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j10, long j11) throws IOException {
        int i9;
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(this.size, j10, j11);
        if (j11 == 0) {
            return this;
        }
        Segment segment = this.head;
        while (true) {
            Intrinsics.checkNotNull(segment);
            int i10 = segment.limit;
            int i11 = segment.pos;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= i10 - i11;
            segment = segment.next;
        }
        while (j11 > 0) {
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(segment.limit - i9, j11);
            out.write(segment.data, (int) (segment.pos + j10), min);
            j11 -= min;
            segment = segment.next;
            j10 = 0;
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (!(obj instanceof Buffer)) {
                return false;
            }
            Buffer buffer = (Buffer) obj;
            if (size() != buffer.size()) {
                return false;
            }
            if (size() != 0) {
                Segment segment = this.head;
                Intrinsics.checkNotNull(segment);
                Segment segment2 = buffer.head;
                Intrinsics.checkNotNull(segment2);
                int i9 = segment.pos;
                int i10 = segment2.pos;
                long j10 = 0;
                while (j10 < size()) {
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
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this;
    }

    @JvmName(name = "getByte")
    public final byte getByte(long j10) {
        _UtilKt.checkOffsetAndCount(size(), j10, 1L);
        Segment segment = this.head;
        if (segment != null) {
            if (size() - j10 < j10) {
                long size = size();
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

    public int hashCode() {
        Segment segment = this.head;
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
        } while (segment != this.head);
        return i9;
    }

    @NotNull
    public final ByteString hmacSha1(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA1", key);
    }

    @NotNull
    public final ByteString hmacSha256(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA256", key);
    }

    @NotNull
    public final ByteString hmacSha512(@NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10) {
        return indexOf(b10, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & UByte.MAX_VALUE;
                }
                return -1;
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] sink, int i9, int i10) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                return Buffer.this.read(sink, i9, i10);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @NotNull
    public final ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer$outputStream$1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i9) {
                Buffer.this.writeByte(i9);
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] data, int i9, int i10) {
                Intrinsics.checkNotNullParameter(data, "data");
                Buffer.this.write(data, i9, i10);
            }
        };
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j10, @NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return rangeEquals(j10, bytes, 0, bytes.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, min);
        int i9 = segment.pos + min;
        segment.pos = i9;
        this.size -= min;
        if (i9 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readAndWriteUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            int i11 = i9 + 1;
            byte b10 = segment.data[i9];
            setSize$okio(size() - 1);
            if (i11 == i10) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i11;
            }
            return b10;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() {
        return readByteString(size());
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0091, code lost:
        setSize$okio(size() - r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009a, code lost:
        if (r6 == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009c, code lost:
        r14 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009e, code lost:
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009f, code lost:
        if (r5 >= r14) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00a9, code lost:
        if (size() == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ab, code lost:
        if (r6 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ad, code lost:
        r1 = "Expected a digit";
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b0, code lost:
        r1 = "Expected a digit or '-'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
        throw new java.lang.NumberFormatException(r1 + " but was 0x" + okio._UtilKt.toHexString(getByte(0)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00db, code lost:
        throw new java.io.EOFException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dc, code lost:
        if (r6 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e0, code lost:
        return -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        return r8;
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        readFrom(input, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long j10) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (size() >= j10) {
            sink.write(this, j10);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0098 A[EDGE_INSN: B:42:0x0098->B:37:0x0098 ?: BREAK  , SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.size()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La2
            r0 = 0
            r4 = r2
            r1 = 0
        Ld:
            okio.Segment r6 = r15.head
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.data
            int r8 = r6.pos
            int r9 = r6.limit
        L18:
            if (r8 >= r9) goto L84
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L29
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L29
            int r11 = r10 - r11
            goto L43
        L29:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L38
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L38
        L33:
            int r11 = r10 - r11
            int r11 = r11 + 10
            goto L43
        L38:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L70
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L70
            goto L33
        L43:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L53
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L18
        L53:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            okio.Buffer r0 = r0.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r0 = r0.readUtf8()
            java.lang.String r2 = "Number too large: "
            java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r2, r0)
            r1.<init>(r0)
            throw r1
        L70:
            if (r0 == 0) goto L74
            r1 = 1
            goto L84
        L74:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = okio._UtilKt.toHexString(r10)
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r1 = kotlin.jvm.internal.Intrinsics.stringPlus(r2, r1)
            r0.<init>(r1)
            throw r0
        L84:
            if (r8 != r9) goto L90
            okio.Segment r7 = r6.pop()
            r15.head = r7
            okio.SegmentPool.recycle(r6)
            goto L92
        L90:
            r6.pos = r8
        L92:
            if (r1 != 0) goto L98
            okio.Segment r6 = r15.head
            if (r6 != 0) goto Ld
        L98:
            long r1 = r15.size()
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.setSize$okio(r1)
            return r4
        La2:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (size() >= 4) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i9 < 4) {
                return ((readByte() & UByte.MAX_VALUE) << 24) | ((readByte() & UByte.MAX_VALUE) << 16) | ((readByte() & UByte.MAX_VALUE) << 8) | (readByte() & UByte.MAX_VALUE);
            }
            byte[] bArr = segment.data;
            int i11 = i9 + 1;
            int i12 = i11 + 1;
            int i13 = ((bArr[i9] & UByte.MAX_VALUE) << 24) | ((bArr[i11] & UByte.MAX_VALUE) << 16);
            int i14 = i12 + 1;
            int i15 = i13 | ((bArr[i12] & UByte.MAX_VALUE) << 8);
            int i16 = i14 + 1;
            int i17 = i15 | (bArr[i14] & UByte.MAX_VALUE);
            setSize$okio(size() - 4);
            if (i16 == i10) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i16;
            }
            return i17;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        return _UtilKt.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (size() >= 8) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i9 < 8) {
                return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
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
            setSize$okio(size() - 8);
            if (i18 == i10) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i18;
            }
            return j13;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        return _UtilKt.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (size() >= 2) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i9 = segment.pos;
            int i10 = segment.limit;
            if (i10 - i9 < 2) {
                return (short) (((readByte() & UByte.MAX_VALUE) << 8) | (readByte() & UByte.MAX_VALUE));
            }
            byte[] bArr = segment.data;
            int i11 = i9 + 1;
            int i12 = i11 + 1;
            int i13 = ((bArr[i9] & UByte.MAX_VALUE) << 8) | (bArr[i11] & UByte.MAX_VALUE);
            setSize$okio(size() - 2);
            if (i12 == i10) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            return (short) i13;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        return _UtilKt.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return readString(this.size, charset);
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @JvmOverloads
    @NotNull
    public final UnsafeCursor readUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() {
        return readString(this.size, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i9;
        int i10;
        int i11;
        if (size() != 0) {
            byte b10 = getByte(0L);
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
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            } else {
                i9 = b10 & 7;
                i10 = 4;
                i11 = 65536;
            }
            long j10 = i10;
            if (size() >= j10) {
                if (1 < i10) {
                    int i12 = 1;
                    while (true) {
                        int i13 = i12 + 1;
                        long j11 = i12;
                        byte b11 = getByte(j11);
                        if ((b11 & 192) != 128) {
                            skip(j11);
                            return Utf8.REPLACEMENT_CODE_POINT;
                        }
                        i9 = (i9 << 6) | (b11 & Utf8.REPLACEMENT_BYTE);
                        if (i13 >= i10) {
                            break;
                        }
                        i12 = i13;
                    }
                }
                skip(j10);
                if (i9 > 1114111) {
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                if (55296 <= i9 && i9 <= 57343) {
                    z10 = true;
                }
                return (!z10 && i9 >= i11) ? i9 : Utf8.REPLACEMENT_CODE_POINT;
            }
            throw new EOFException("size < " + i10 + ": " + size() + " (to read code point prefixed 0x" + _UtilKt.toHexString(b10) + ')');
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws EOFException {
        long indexOf = indexOf((byte) 10);
        if (indexOf != -1) {
            return _BufferKt.readUtf8Line(this, indexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j10) {
        return this.size >= j10;
    }

    @Override // okio.BufferedSource
    public void require(long j10) throws EOFException {
        if (this.size < j10) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = _BufferKt.selectPrefix$default(this, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings$okio()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    public final void setSize$okio(long j10) {
        this.size = j10;
    }

    @NotNull
    public final ByteString sha1() {
        return digest("SHA-1");
    }

    @NotNull
    public final ByteString sha256() {
        return digest("SHA-256");
    }

    @NotNull
    public final ByteString sha512() {
        return digest("SHA-512");
    }

    @JvmName(name = "size")
    public final long size() {
        return this.size;
    }

    @Override // okio.BufferedSource
    public void skip(long j10) throws EOFException {
        while (j10 > 0) {
            Segment segment = this.head;
            if (segment != null) {
                int min = (int) Math.min(j10, segment.limit - segment.pos);
                long j11 = min;
                setSize$okio(size() - j11);
                j10 -= j11;
                int i9 = segment.pos + min;
                segment.pos = i9;
                if (i9 == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @NotNull
    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(Intrinsics.stringPlus("size > Int.MAX_VALUE: ", Long.valueOf(size())).toString());
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @NotNull
    public String toString() {
        return snapshot().toString();
    }

    @NotNull
    public final Segment writableSegment$okio(int i9) {
        boolean z10 = true;
        if ((i9 < 1 || i9 > 8192) ? false : false) {
            Segment segment = this.head;
            if (segment == null) {
                Segment take = SegmentPool.take();
                this.head = take;
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

    @Override // okio.BufferedSink
    public long writeAll(@NotNull Source source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = 0;
        while (true) {
            long read = source.read(this, 8192L);
            if (read == -1) {
                return j10;
            }
            j10 += read;
        }
    }

    @JvmOverloads
    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        return writeTo$default(this, out, 0L, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(this.size, 0L, j10);
        Segment segment = this.head;
        while (j10 > 0) {
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j10, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, min);
            int i9 = segment.pos + min;
            segment.pos = i9;
            long j11 = min;
            this.size -= j11;
            j10 -= j11;
            if (i9 == segment.limit) {
                Segment pop = segment.pop();
                this.head = pop;
                SegmentPool.recycle(segment);
                segment = pop;
            }
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, long j11, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10, j11);
    }

    @NotNull
    public Buffer clone() {
        return copy();
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10, long j10) {
        return indexOf(b10, j10, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long j10) {
        int i9;
        int i10;
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long j11 = 0;
        if (j10 >= 0) {
            Segment segment = this.head;
            if (segment == null) {
                return -1L;
            }
            if (size() - j10 < j10) {
                j11 = size();
                while (j11 > j10) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j11 -= segment.limit - segment.pos;
                }
                if (targetBytes.size() == 2) {
                    byte b10 = targetBytes.getByte(0);
                    byte b11 = targetBytes.getByte(1);
                    while (j11 < size()) {
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
                    return -1L;
                }
                byte[] internalArray$okio = targetBytes.internalArray$okio();
                while (j11 < size()) {
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
                while (j11 < size()) {
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
                return -1L;
            }
            byte[] internalArray$okio2 = targetBytes.internalArray$okio();
            while (j11 < size()) {
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
            return -1L;
            return (i9 - i10) + j11;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j10)).toString());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j10, @NotNull ByteString bytes, int i9, int i10) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j10 < 0 || i9 < 0 || i10 < 0 || size() - j10 < i10 || bytes.size() - i9 < i10) {
            return false;
        }
        if (i10 > 0) {
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (getByte(i11 + j10) != bytes.getByte(i11 + i9)) {
                    return false;
                }
                if (i12 >= i10) {
                    break;
                }
                i11 = i12;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long j10) throws EOFException {
        if (j10 >= 0 && j10 <= 2147483647L) {
            if (size() >= j10) {
                byte[] bArr = new byte[(int) j10];
                readFully(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j10)).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long j10) throws EOFException {
        if (j10 >= 0 && j10 <= 2147483647L) {
            if (size() >= j10) {
                if (j10 >= 4096) {
                    ByteString snapshot = snapshot((int) j10);
                    skip(j10);
                    return snapshot;
                }
                return new ByteString(readByteArray(j10));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j10)).toString());
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        if (j10 >= 0) {
            readFrom(input, j10, false);
            return this;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long j10, @NotNull Charset charset) throws EOFException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 >= 0 && j10 <= 2147483647L) {
            if (this.size >= j10) {
                if (i9 == 0) {
                    return "";
                }
                Segment segment = this.head;
                Intrinsics.checkNotNull(segment);
                int i10 = segment.pos;
                if (i10 + j10 > segment.limit) {
                    return new String(readByteArray(j10), charset);
                }
                int i11 = (int) j10;
                String str = new String(segment.data, i10, i11, charset);
                int i12 = segment.pos + i11;
                segment.pos = i12;
                this.size -= j10;
                if (i12 == segment.limit) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                }
                return str;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j10)).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long j10) throws EOFException {
        return readString(j10, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long j10) throws EOFException {
        if (j10 >= 0) {
            long j11 = j10 != Long.MAX_VALUE ? j10 + 1 : Long.MAX_VALUE;
            byte b10 = (byte) 10;
            long indexOf = indexOf(b10, 0L, j11);
            if (indexOf != -1) {
                return _BufferKt.readUtf8Line(this, indexOf);
            }
            if (j11 < size() && getByte(j11 - 1) == ((byte) 13) && getByte(j11) == b10) {
                return _BufferKt.readUtf8Line(this, j11);
            }
            Buffer buffer = new Buffer();
            copyTo(buffer, 0L, Math.min(32, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j10) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j10)).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeByte(int i9) {
        Segment writableSegment$okio = writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        writableSegment$okio.limit = i10 + 1;
        bArr[i10] = (byte) i9;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeDecimalLong(long j10) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 == 0) {
            return writeByte(48);
        }
        boolean z10 = false;
        int i10 = 1;
        if (i9 < 0) {
            j10 = -j10;
            if (j10 < 0) {
                return writeUtf8("-9223372036854775808");
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
        Segment writableSegment$okio = writableSegment$okio(i10);
        byte[] bArr = writableSegment$okio.data;
        int i11 = writableSegment$okio.limit + i10;
        while (j10 != 0) {
            long j11 = 10;
            i11--;
            bArr[i11] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (j10 % j11)];
            j10 /= j11;
        }
        if (z10) {
            bArr[i11 - 1] = (byte) 45;
        }
        writableSegment$okio.limit += i10;
        setSize$okio(size() + i10);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeHexadecimalUnsignedLong(long j10) {
        if (j10 == 0) {
            return writeByte(48);
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
        Segment writableSegment$okio = writableSegment$okio(i9);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        for (int i11 = (i10 + i9) - 1; i11 >= i10; i11--) {
            bArr[i11] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (15 & j10)];
            j10 >>>= 4;
        }
        writableSegment$okio.limit += i9;
        setSize$okio(size() + i9);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeInt(int i9) {
        Segment writableSegment$okio = writableSegment$okio(4);
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
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeIntLe(int i9) {
        return writeInt(_UtilKt.reverseBytes(i9));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLong(long j10) {
        Segment writableSegment$okio = writableSegment$okio(8);
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
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLongLe(long j10) {
        return writeLong(_UtilKt.reverseBytes(j10));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShort(int i9) {
        Segment writableSegment$okio = writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i10 = writableSegment$okio.limit;
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i9 >>> 8) & 255);
        bArr[i11] = (byte) (i9 & 255);
        writableSegment$okio.limit = i11 + 1;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShortLe(int i9) {
        return writeShort((int) _UtilKt.reverseBytes((short) i9));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8CodePoint(int i9) {
        if (i9 < 128) {
            writeByte(i9);
        } else if (i9 < 2048) {
            Segment writableSegment$okio = writableSegment$okio(2);
            byte[] bArr = writableSegment$okio.data;
            int i10 = writableSegment$okio.limit;
            bArr[i10] = (byte) ((i9 >> 6) | 192);
            bArr[i10 + 1] = (byte) ((i9 & 63) | 128);
            writableSegment$okio.limit = i10 + 2;
            setSize$okio(size() + 2);
        } else {
            boolean z10 = false;
            if (55296 <= i9 && i9 <= 57343) {
                z10 = true;
            }
            if (z10) {
                writeByte(63);
            } else if (i9 < 65536) {
                Segment writableSegment$okio2 = writableSegment$okio(3);
                byte[] bArr2 = writableSegment$okio2.data;
                int i11 = writableSegment$okio2.limit;
                bArr2[i11] = (byte) ((i9 >> 12) | 224);
                bArr2[i11 + 1] = (byte) (((i9 >> 6) & 63) | 128);
                bArr2[i11 + 2] = (byte) ((i9 & 63) | 128);
                writableSegment$okio2.limit = i11 + 3;
                setSize$okio(size() + 3);
            } else if (i9 <= 1114111) {
                Segment writableSegment$okio3 = writableSegment$okio(4);
                byte[] bArr3 = writableSegment$okio3.data;
                int i12 = writableSegment$okio3.limit;
                bArr3[i12] = (byte) ((i9 >> 18) | 240);
                bArr3[i12 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                bArr3[i12 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                bArr3[i12 + 3] = (byte) ((i9 & 63) | 128);
                writableSegment$okio3.limit = i12 + 4;
                setSize$okio(size() + 4);
            } else {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected code point: 0x", _UtilKt.toHexString(i9)));
            }
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            j10 = 0;
        }
        return buffer.copyTo(buffer2, j10);
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    private final void readFrom(InputStream inputStream, long j10, boolean z10) throws IOException {
        while (true) {
            if (j10 <= 0 && !z10) {
                return;
            }
            Segment writableSegment$okio = writableSegment$okio(1);
            int read = inputStream.read(writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j10, 8192 - writableSegment$okio.limit));
            if (read == -1) {
                if (writableSegment$okio.pos == writableSegment$okio.limit) {
                    this.head = writableSegment$okio.pop();
                    SegmentPool.recycle(writableSegment$okio);
                }
                if (!z10) {
                    throw new EOFException();
                }
                return;
            }
            writableSegment$okio.limit += read;
            long j11 = read;
            this.size += j11;
            j10 -= j11;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b10, long j10, long j11) {
        Segment segment;
        int i9;
        long j12 = j10;
        long j13 = j11;
        boolean z10 = false;
        long j14 = 0;
        if (0 <= j12 && j12 <= j13) {
            z10 = true;
        }
        if (z10) {
            if (j13 > size()) {
                j13 = size();
            }
            long j15 = j13;
            if (j12 == j15 || (segment = this.head) == null) {
                return -1L;
            }
            if (size() - j12 < j12) {
                j14 = size();
                while (j14 > j12) {
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    j14 -= segment.limit - segment.pos;
                }
                while (j14 < j15) {
                    byte[] bArr = segment.data;
                    int min = (int) Math.min(segment.limit, (segment.pos + j15) - j14);
                    i9 = (int) ((segment.pos + j12) - j14);
                    while (i9 < min) {
                        if (bArr[i9] != b10) {
                            i9++;
                        }
                    }
                    j14 += segment.limit - segment.pos;
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    j12 = j14;
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
                i9 = (int) ((segment.pos + j12) - j14);
                while (i9 < min2) {
                    if (bArr2[i9] != b10) {
                        i9++;
                    }
                }
                j14 += segment.limit - segment.pos;
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j12 = j14;
            }
            return -1L;
            return (i9 - segment.pos) + j14;
        }
        throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + j12 + " toIndex=" + j13).toString());
    }

    @NotNull
    public final ByteString snapshot(int i9) {
        if (i9 == 0) {
            return ByteString.EMPTY;
        }
        _UtilKt.checkOffsetAndCount(size(), 0L, i9);
        Segment segment = this.head;
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
        Segment segment2 = this.head;
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

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string, int i9, int i10) {
        char charAt;
        Intrinsics.checkNotNullParameter(string, "string");
        if (i9 >= 0) {
            if (i10 >= i9) {
                if (!(i10 <= string.length())) {
                    throw new IllegalArgumentException(("endIndex > string.length: " + i10 + " > " + string.length()).toString());
                }
                while (i9 < i10) {
                    char charAt2 = string.charAt(i9);
                    if (charAt2 < 128) {
                        Segment writableSegment$okio = writableSegment$okio(1);
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
                        setSize$okio(size() + i14);
                    } else {
                        if (charAt2 < 2048) {
                            Segment writableSegment$okio2 = writableSegment$okio(2);
                            byte[] bArr2 = writableSegment$okio2.data;
                            int i15 = writableSegment$okio2.limit;
                            bArr2[i15] = (byte) ((charAt2 >> 6) | 192);
                            bArr2[i15 + 1] = (byte) ((charAt2 & '?') | 128);
                            writableSegment$okio2.limit = i15 + 2;
                            setSize$okio(size() + 2);
                        } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                            int i16 = i9 + 1;
                            char charAt3 = i16 < i10 ? string.charAt(i16) : (char) 0;
                            if (charAt2 <= 56319) {
                                if (56320 <= charAt3 && charAt3 <= 57343) {
                                    int i17 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                    Segment writableSegment$okio3 = writableSegment$okio(4);
                                    byte[] bArr3 = writableSegment$okio3.data;
                                    int i18 = writableSegment$okio3.limit;
                                    bArr3[i18] = (byte) ((i17 >> 18) | 240);
                                    bArr3[i18 + 1] = (byte) (((i17 >> 12) & 63) | 128);
                                    bArr3[i18 + 2] = (byte) (((i17 >> 6) & 63) | 128);
                                    bArr3[i18 + 3] = (byte) ((i17 & 63) | 128);
                                    writableSegment$okio3.limit = i18 + 4;
                                    setSize$okio(size() + 4);
                                    i9 += 2;
                                }
                            }
                            writeByte(63);
                            i9 = i16;
                        } else {
                            Segment writableSegment$okio4 = writableSegment$okio(3);
                            byte[] bArr4 = writableSegment$okio4.data;
                            int i19 = writableSegment$okio4.limit;
                            bArr4[i19] = (byte) ((charAt2 >> '\f') | 224);
                            bArr4[i19 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                            bArr4[i19 + 2] = (byte) ((charAt2 & '?') | 128);
                            writableSegment$okio4.limit = i19 + 3;
                            setSize$okio(size() + 3);
                        }
                        i9++;
                    }
                }
                return this;
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i10 + " < " + i9).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i9)).toString());
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i9 = 0;
        while (i9 < sink.length) {
            int read = read(sink, i9, sink.length - i9);
            if (read == -1) {
                throw new EOFException();
            }
            i9 += read;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, int i9, int i10, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (i9 >= 0) {
            if (i10 >= i9) {
                if (i10 <= string.length()) {
                    if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
                        return writeUtf8(string, i9, i10);
                    }
                    String substring = string.substring(i9, i10);
                    Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
                    byte[] bytes = substring.getBytes(charset);
                    Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                    return write(bytes, 0, bytes.length);
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i10 + " > " + string.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i10 + " < " + i9).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i9)).toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        int i9 = remaining;
        while (i9 > 0) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i9, 8192 - writableSegment$okio.limit);
            source.get(writableSegment$okio.data, writableSegment$okio.limit, min);
            i9 -= min;
            writableSegment$okio.limit += min;
        }
        this.size += remaining;
        return remaining;
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long j10) {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo(out, j10, this.size - j10);
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int i9, int i10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i9, i10);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i10, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i11 = segment.pos;
        ArraysKt.copyInto(bArr, sink, i9, i11, i11 + min);
        segment.pos += min;
        setSize$okio(size() - min);
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return min;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long j10, long j11) {
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(size(), j10, j11);
        if (j11 != 0) {
            out.setSize$okio(out.size() + j11);
            Segment segment = this.head;
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
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString, int i9, int i10) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, i9, i10);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source, int i9, int i10) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j10 = i10;
        _UtilKt.checkOffsetAndCount(source.length, i9, j10);
        int i11 = i10 + i9;
        while (i9 < i11) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i11 - i9, 8192 - writableSegment$okio.limit);
            int i12 = i9 + min;
            ArraysKt.copyInto(source, writableSegment$okio.data, writableSegment$okio.limit, i9, i12);
            writableSegment$okio.limit += min;
            i9 = i12;
        }
        setSize$okio(size() + j10);
        return this;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j10) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j10 >= 0) {
            if (size() == 0) {
                return -1L;
            }
            if (j10 > size()) {
                j10 = size();
            }
            sink.write(this, j10);
            return j10;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j10)).toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull Source source, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        while (j10 > 0) {
            long read = source.read(this, j10);
            if (read == -1) {
                throw new EOFException();
            }
            j10 -= read;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() > 0) {
            long j11 = 0;
            if (j10 >= 0) {
                Segment segment = this.head;
                if (segment != null) {
                    if (size() - j10 < j10) {
                        long size = size();
                        while (size > j10) {
                            segment = segment.prev;
                            Intrinsics.checkNotNull(segment);
                            size -= segment.limit - segment.pos;
                        }
                        byte[] internalArray$okio = bytes.internalArray$okio();
                        byte b10 = internalArray$okio[0];
                        int size2 = bytes.size();
                        long size3 = (size() - size2) + 1;
                        Segment segment2 = segment;
                        long j12 = size;
                        long j13 = j10;
                        while (j12 < size3) {
                            byte[] bArr = segment2.data;
                            long j14 = j13;
                            int min = (int) Math.min(segment2.limit, (segment2.pos + size3) - j12);
                            int i9 = (int) ((segment2.pos + j14) - j12);
                            if (i9 < min) {
                                while (true) {
                                    int i10 = i9 + 1;
                                    if (bArr[i9] == b10 && _BufferKt.rangeEquals(segment2, i10, internalArray$okio, 1, size2)) {
                                        return (i9 - segment2.pos) + j12;
                                    }
                                    if (i10 >= min) {
                                        break;
                                    }
                                    i9 = i10;
                                }
                            }
                            j12 += segment2.limit - segment2.pos;
                            segment2 = segment2.next;
                            Intrinsics.checkNotNull(segment2);
                            j13 = j12;
                        }
                    } else {
                        while (true) {
                            long j15 = (segment.limit - segment.pos) + j11;
                            if (j15 > j10) {
                                break;
                            }
                            segment = segment.next;
                            Intrinsics.checkNotNull(segment);
                            j11 = j15;
                        }
                        byte[] internalArray$okio2 = bytes.internalArray$okio();
                        byte b11 = internalArray$okio2[0];
                        int size4 = bytes.size();
                        long size5 = (size() - size4) + 1;
                        long j16 = j11;
                        long j17 = j10;
                        while (j16 < size5) {
                            byte[] bArr2 = segment.data;
                            long j18 = size5;
                            int min2 = (int) Math.min(segment.limit, (segment.pos + size5) - j16);
                            int i11 = (int) ((segment.pos + j17) - j16);
                            if (i11 < min2) {
                                while (true) {
                                    int i12 = i11 + 1;
                                    if (bArr2[i11] == b11 && _BufferKt.rangeEquals(segment, i12, internalArray$okio2, 1, size4)) {
                                        return (i11 - segment.pos) + j16;
                                    }
                                    if (i12 >= min2) {
                                        break;
                                    }
                                    i11 = i12;
                                }
                            }
                            j16 += segment.limit - segment.pos;
                            segment = segment.next;
                            Intrinsics.checkNotNull(segment);
                            j17 = j16;
                            size5 = j18;
                        }
                    }
                }
                return -1L;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j10)).toString());
        }
        throw new IllegalArgumentException("bytes is empty".toString());
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j10) {
        Segment segment;
        Segment segment2;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != this) {
            _UtilKt.checkOffsetAndCount(source.size(), 0L, j10);
            while (j10 > 0) {
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                int i9 = segment3.limit;
                Intrinsics.checkNotNull(source.head);
                if (j10 < i9 - segment.pos) {
                    Segment segment4 = this.head;
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
                            setSize$okio(size() + j10);
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
                Segment segment8 = this.head;
                if (segment8 == null) {
                    this.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    Intrinsics.checkNotNull(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.checkNotNull(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j11);
                setSize$okio(size() + j11);
                j10 -= j11;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }
}
