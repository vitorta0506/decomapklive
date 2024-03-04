package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import okio.internal._SegmentedByteStringKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0010\u0005\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u001d\b\u0000\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J(\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0015\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\r\u0010 \u001a\u00020\u0015H\u0010¢\u0006\u0002\b!J\b\u0010\"\u001a\u00020\u0015H\u0016J\b\u0010#\u001a\u00020\u0010H\u0016J\u001d\u0010$\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u0001H\u0010¢\u0006\u0002\b&J\u0018\u0010'\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0015H\u0016J\r\u0010)\u001a\u00020\u0004H\u0010¢\u0006\u0002\b*J\u0015\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0015H\u0010¢\u0006\u0002\b.J\u0018\u0010/\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0015H\u0016J(\u00100\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J(\u00100\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u00102\u001a\u00020\u00102\u0006\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020\u00012\u0006\u00106\u001a\u00020\u00152\u0006\u00107\u001a\u00020\u0015H\u0016J\b\u00108\u001a\u00020\u0001H\u0016J\b\u00109\u001a\u00020\u0001H\u0016J\b\u0010:\u001a\u00020\u0004H\u0016J\b\u0010;\u001a\u00020\u0001H\u0002J\b\u0010<\u001a\u00020\u0010H\u0016J\u0010\u0010=\u001a\u00020\u00132\u0006\u0010>\u001a\u00020?H\u0016J%\u0010=\u001a\u00020\u00132\u0006\u0010@\u001a\u00020A2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0010¢\u0006\u0002\bBJ\b\u0010C\u001a\u00020DH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006E"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "segments", "", "", "directory", "", "([[B[I)V", "getDirectory$okio", "()[I", "getSegments$okio", "()[[B", "[[B", "asByteBuffer", "Ljava/nio/ByteBuffer;", "base64", "", "base64Url", "copyInto", "", TypedValues.CycleType.S_WAVE_OFFSET, "", TypedValues.AttributesType.S_TARGET, "targetOffset", "byteCount", "digest", "algorithm", "digest$okio", "equals", "", "other", "", "getSize", "getSize$okio", "hashCode", "hex", "hmac", "key", "hmac$okio", "indexOf", "fromIndex", "internalArray", "internalArray$okio", "internalGet", "", "pos", "internalGet$okio", "lastIndexOf", "rangeEquals", "otherOffset", TypedValues.Custom.S_STRING, "charset", "Ljava/nio/charset/Charset;", "substring", "beginIndex", "endIndex", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toByteString", "toString", "write", "out", "Ljava/io/OutputStream;", "buffer", "Lokio/Buffer;", "write$okio", "writeReplace", "Ljava/lang/Object;", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class SegmentedByteString extends ByteString {
    @NotNull
    private final transient int[] directory;
    @NotNull
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(@NotNull byte[][] segments, @NotNull int[] directory) {
        super(ByteString.EMPTY.getData$okio());
        Intrinsics.checkNotNullParameter(segments, "segments");
        Intrinsics.checkNotNullParameter(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private final Object writeReplace() {
        return toByteString();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteBuffer asByteBuffer() {
        ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(asReadOnlyBuffer, "wrap(toByteArray()).asReadOnlyBuffer()");
        return asReadOnlyBuffer;
    }

    @Override // okio.ByteString
    @NotNull
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    @NotNull
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public void copyInto(int i9, @NotNull byte[] target, int i10, int i11) {
        Intrinsics.checkNotNullParameter(target, "target");
        long j10 = i11;
        _UtilKt.checkOffsetAndCount(size(), i9, j10);
        _UtilKt.checkOffsetAndCount(target.length, i10, j10);
        int i12 = i11 + i9;
        int segment = _SegmentedByteStringKt.segment(this, i9);
        while (i9 < i12) {
            int i13 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i14 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i12, (getDirectory$okio()[segment] - i13) + i13) - i9;
            int i15 = i14 + (i9 - i13);
            ArraysKt___ArraysJvmKt.copyInto(getSegments$okio()[segment], target, i10, i15, i15 + min);
            i10 += min;
            i9 += min;
            segment++;
        }
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            int i11 = getDirectory$okio()[length + i9];
            int i12 = getDirectory$okio()[i9];
            messageDigest.update(getSegments$okio()[i9], i11, i12 - i10);
            i9++;
            i10 = i12;
        }
        byte[] digestBytes = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    @Override // okio.ByteString
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final int[] getDirectory$okio() {
        return this.directory;
    }

    @NotNull
    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = getSegments$okio().length;
        int i9 = 0;
        int i10 = 1;
        int i11 = 0;
        while (i9 < length) {
            int i12 = getDirectory$okio()[length + i9];
            int i13 = getDirectory$okio()[i9];
            byte[] bArr = getSegments$okio()[i9];
            int i14 = (i13 - i11) + i12;
            while (i12 < i14) {
                i10 = (i10 * 31) + bArr[i12];
                i12++;
            }
            i9++;
            i11 = i13;
        }
        setHashCode$okio(i10);
        return i10;
    }

    @Override // okio.ByteString
    @NotNull
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString hmac$okio(@NotNull String algorithm, @NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments$okio().length;
            int i9 = 0;
            int i10 = 0;
            while (i9 < length) {
                int i11 = getDirectory$okio()[length + i9];
                int i12 = getDirectory$okio()[i9];
                mac.update(getSegments$okio()[i9], i11, i12 - i10);
                i9++;
                i10 = i12;
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "mac.doFinal()");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override // okio.ByteString
    public int indexOf(@NotNull byte[] other, int i9) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().indexOf(other, i9);
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i9) {
        _UtilKt.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i9, 1L);
        int segment = _SegmentedByteStringKt.segment(this, i9);
        return getSegments$okio()[segment][(i9 - (segment == 0 ? 0 : getDirectory$okio()[segment - 1])) + getDirectory$okio()[getSegments$okio().length + segment]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(@NotNull byte[] other, int i9) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().lastIndexOf(other, i9);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i9, @NotNull ByteString other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i9 < 0 || i9 > size() - i11) {
            return false;
        }
        int i12 = i11 + i9;
        int segment = _SegmentedByteStringKt.segment(this, i9);
        while (i9 < i12) {
            int i13 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i14 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i12, (getDirectory$okio()[segment] - i13) + i13) - i9;
            if (!other.rangeEquals(i10, getSegments$okio()[segment], i14 + (i9 - i13), min)) {
                return false;
            }
            i10 += min;
            i9 += min;
            segment++;
        }
        return true;
    }

    @Override // okio.ByteString
    @NotNull
    public String string(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString substring(int i9, int i10) {
        Object[] copyOfRange;
        int resolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i10);
        if (i9 >= 0) {
            if (!(resolveDefaultParameter <= size())) {
                throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " > length(" + size() + ')').toString());
            }
            int i11 = resolveDefaultParameter - i9;
            if (i11 >= 0) {
                if (i9 == 0 && resolveDefaultParameter == size()) {
                    return this;
                }
                if (i9 == resolveDefaultParameter) {
                    return ByteString.EMPTY;
                }
                int segment = _SegmentedByteStringKt.segment(this, i9);
                int segment2 = _SegmentedByteStringKt.segment(this, resolveDefaultParameter - 1);
                copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(getSegments$okio(), segment, segment2 + 1);
                byte[][] bArr = (byte[][]) copyOfRange;
                int[] iArr = new int[bArr.length * 2];
                if (segment <= segment2) {
                    int i12 = segment;
                    int i13 = 0;
                    while (true) {
                        int i14 = i12 + 1;
                        iArr[i13] = Math.min(getDirectory$okio()[i12] - i9, i11);
                        int i15 = i13 + 1;
                        iArr[i13 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i12];
                        if (i12 == segment2) {
                            break;
                        }
                        i12 = i14;
                        i13 = i15;
                    }
                }
                int i16 = segment != 0 ? getDirectory$okio()[segment - 1] : 0;
                int length = bArr.length;
                iArr[length] = iArr[length] + (i9 - i16);
                return new SegmentedByteString(bArr, iArr);
            }
            throw new IllegalArgumentException(("endIndex=" + resolveDefaultParameter + " < beginIndex=" + i9).toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i9 + " < 0").toString());
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < length) {
            int i12 = getDirectory$okio()[length + i9];
            int i13 = getDirectory$okio()[i9];
            int i14 = i13 - i10;
            ArraysKt___ArraysJvmKt.copyInto(getSegments$okio()[i9], bArr, i11, i12, i12 + i14);
            i11 += i14;
            i9++;
            i10 = i13;
        }
        return bArr;
    }

    @Override // okio.ByteString
    @NotNull
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public void write(@NotNull OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        int length = getSegments$okio().length;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            int i11 = getDirectory$okio()[length + i9];
            int i12 = getDirectory$okio()[i9];
            out.write(getSegments$okio()[i9], i11, i12 - i10);
            i9++;
            i10 = i12;
        }
    }

    @Override // okio.ByteString
    public void write$okio(@NotNull Buffer buffer, int i9, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i11 = i9 + i10;
        int segment = _SegmentedByteStringKt.segment(this, i9);
        while (i9 < i11) {
            int i12 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i13 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i11, (getDirectory$okio()[segment] - i12) + i12) - i9;
            int i14 = i13 + (i9 - i12);
            Segment segment2 = new Segment(getSegments$okio()[segment], i14, i14 + min, true, false);
            Segment segment3 = buffer.head;
            if (segment3 == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i9 += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + i10);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i9, @NotNull byte[] other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i9 < 0 || i9 > size() - i11 || i10 < 0 || i10 > other.length - i11) {
            return false;
        }
        int i12 = i11 + i9;
        int segment = _SegmentedByteStringKt.segment(this, i9);
        while (i9 < i12) {
            int i13 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i14 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i12, (getDirectory$okio()[segment] - i13) + i13) - i9;
            if (!_UtilKt.arrayRangeEquals(getSegments$okio()[segment], i14 + (i9 - i13), other, i10, min)) {
                return false;
            }
            i10 += min;
            i9 += min;
            segment++;
        }
        return true;
    }
}
