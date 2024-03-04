package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Buffer;
import okio.internal._ByteStringKt;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000N\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a0\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\u001a \u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015H\u0000\u001a\u0019\u0010\u0017\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0015H\u0080\b\u001a\u0019\u0010\u0017\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0000\u001a\u0015\u0010\u001a\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010\u001a\u001a\u00020\u0015*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0015H\u0080\f\u001a\u0015\u0010\u001a\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u0015H\u0080\f\u001a\u0015\u0010\u001d\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u0001H\u0080\f\u001a\u0014\u0010\u0018\u001a\u00020\u0001*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0001H\u0000\u001a\f\u0010!\u001a\u00020\u0001*\u00020\u0001H\u0000\u001a\f\u0010!\u001a\u00020\u0015*\u00020\u0015H\u0000\u001a\f\u0010!\u001a\u00020\"*\u00020\"H\u0000\u001a\u0015\u0010#\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010$\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\u0015\u0010%\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0001H\u0080\f\u001a\f\u0010&\u001a\u00020'*\u00020\u001bH\u0000\u001a\f\u0010&\u001a\u00020'*\u00020\u0001H\u0000\u001a\f\u0010&\u001a\u00020'*\u00020\u0015H\u0000\u001a\u0015\u0010(\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0080\f\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u001c\u0010\u0004\u001a\u00020\u00058\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006)"}, d2 = {"DEFAULT__ByteString_size", "", "getDEFAULT__ByteString_size", "()I", "DEFAULT__new_UnsafeCursor", "Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor$annotations", "()V", "getDEFAULT__new_UnsafeCursor", "()Lokio/Buffer$UnsafeCursor;", "arrayRangeEquals", "", "a", "", "aOffset", "b", "bOffset", "byteCount", "checkOffsetAndCount", "", "size", "", TypedValues.CycleType.S_WAVE_OFFSET, "minOf", "resolveDefaultParameter", "unsafeCursor", "and", "", "other", "leftRotate", "bitCount", "Lokio/ByteString;", "position", "reverseBytes", "", "rightRotate", "shl", "shr", "toHexString", "", "xor", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes7.dex */
public final class _UtilKt {
    @NotNull
    private static final Buffer.UnsafeCursor DEFAULT__new_UnsafeCursor = new Buffer.UnsafeCursor();
    private static final int DEFAULT__ByteString_size = -1234567890;

    public static final int and(byte b10, int i9) {
        return b10 & i9;
    }

    public static final long and(byte b10, long j10) {
        return b10 & j10;
    }

    public static final long and(int i9, long j10) {
        return i9 & j10;
    }

    public static final boolean arrayRangeEquals(@NotNull byte[] a10, int i9, @NotNull byte[] b10, int i10, int i11) {
        Intrinsics.checkNotNullParameter(a10, "a");
        Intrinsics.checkNotNullParameter(b10, "b");
        if (i11 <= 0) {
            return true;
        }
        int i12 = 0;
        while (true) {
            int i13 = i12 + 1;
            if (a10[i12 + i9] != b10[i12 + i10]) {
                return false;
            }
            if (i13 >= i11) {
                return true;
            }
            i12 = i13;
        }
    }

    public static final void checkOffsetAndCount(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
        }
    }

    public static final int getDEFAULT__ByteString_size() {
        return DEFAULT__ByteString_size;
    }

    @NotNull
    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return DEFAULT__new_UnsafeCursor;
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }

    public static final int leftRotate(int i9, int i10) {
        return (i9 >>> (32 - i10)) | (i9 << i10);
    }

    public static final long minOf(long j10, int i9) {
        return Math.min(j10, i9);
    }

    @NotNull
    public static final Buffer.UnsafeCursor resolveDefaultParameter(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return unsafeCursor == DEFAULT__new_UnsafeCursor ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i9) {
        return ((i9 & 255) << 24) | (((-16777216) & i9) >>> 24) | ((16711680 & i9) >>> 8) | ((65280 & i9) << 8);
    }

    public static final long reverseBytes(long j10) {
        return ((j10 & 255) << 56) | (((-72057594037927936L) & j10) >>> 56) | ((71776119061217280L & j10) >>> 40) | ((280375465082880L & j10) >>> 24) | ((1095216660480L & j10) >>> 8) | ((4278190080L & j10) << 8) | ((16711680 & j10) << 24) | ((65280 & j10) << 40);
    }

    public static final short reverseBytes(short s10) {
        int i9 = s10 & UShort.MAX_VALUE;
        return (short) (((i9 & 255) << 8) | ((65280 & i9) >>> 8));
    }

    public static final long rightRotate(long j10, int i9) {
        return (j10 << (64 - i9)) | (j10 >>> i9);
    }

    public static final int shl(byte b10, int i9) {
        return b10 << i9;
    }

    public static final int shr(byte b10, int i9) {
        return b10 >> i9;
    }

    @NotNull
    public static final String toHexString(byte b10) {
        String concatToString;
        concatToString = StringsKt__StringsJVMKt.concatToString(new char[]{_ByteStringKt.getHEX_DIGIT_CHARS()[(b10 >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[b10 & 15]});
        return concatToString;
    }

    public static final byte xor(byte b10, byte b11) {
        return (byte) (b10 ^ b11);
    }

    public static final long minOf(int i9, long j10) {
        return Math.min(i9, j10);
    }

    public static final int resolveDefaultParameter(@NotNull ByteString byteString, int i9) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return i9 == DEFAULT__ByteString_size ? byteString.size() : i9;
    }

    @NotNull
    public static final String toHexString(int i9) {
        String concatToString;
        if (i9 == 0) {
            return "0";
        }
        int i10 = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(i9 >> 28) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i9 >> 24) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i9 >> 20) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i9 >> 16) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i9 >> 12) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i9 >> 8) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i9 >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[i9 & 15]};
        while (i10 < 8 && cArr[i10] == '0') {
            i10++;
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr, i10, 8);
        return concatToString;
    }

    @NotNull
    public static final String toHexString(long j10) {
        String concatToString;
        if (j10 == 0) {
            return "0";
        }
        int i9 = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 60) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 56) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 52) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 48) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 44) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 40) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 36) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 32) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 28) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 24) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 20) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 16) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 12) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 8) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j10 >> 4) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) (j10 & 15)]};
        while (i9 < 16 && cArr[i9] == '0') {
            i9++;
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr, i9, 16);
        return concatToString;
    }
}
