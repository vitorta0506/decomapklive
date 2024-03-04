package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class Utf8Safe extends Utf8 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i9, int i10) {
            super("Unpaired surrogate at index " + i9 + " of " + i10);
        }
    }

    private static int computeEncodedLength(CharSequence charSequence) {
        int length = charSequence.length();
        int i9 = 0;
        while (i9 < length && charSequence.charAt(i9) < 128) {
            i9++;
        }
        int i10 = length;
        while (true) {
            if (i9 < length) {
                char charAt = charSequence.charAt(i9);
                if (charAt >= 2048) {
                    i10 += encodedLengthGeneral(charSequence, i9);
                    break;
                }
                i10 += (127 - charAt) >>> 31;
                i9++;
            } else {
                break;
            }
        }
        if (i10 >= length) {
            return i10;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i10 + 4294967296L));
    }

    public static String decodeUtf8Array(byte[] bArr, int i9, int i10) {
        if ((i9 | i10 | ((bArr.length - i9) - i10)) >= 0) {
            int i11 = i9 + i10;
            char[] cArr = new char[i10];
            int i12 = 0;
            while (i9 < i11) {
                byte b10 = bArr[i9];
                if (!Utf8.DecodeUtil.isOneByte(b10)) {
                    break;
                }
                i9++;
                Utf8.DecodeUtil.handleOneByte(b10, cArr, i12);
                i12++;
            }
            int i13 = i12;
            while (i9 < i11) {
                int i14 = i9 + 1;
                byte b11 = bArr[i9];
                if (Utf8.DecodeUtil.isOneByte(b11)) {
                    int i15 = i13 + 1;
                    Utf8.DecodeUtil.handleOneByte(b11, cArr, i13);
                    while (i14 < i11) {
                        byte b12 = bArr[i14];
                        if (!Utf8.DecodeUtil.isOneByte(b12)) {
                            break;
                        }
                        i14++;
                        Utf8.DecodeUtil.handleOneByte(b12, cArr, i15);
                        i15++;
                    }
                    i9 = i14;
                    i13 = i15;
                } else if (Utf8.DecodeUtil.isTwoBytes(b11)) {
                    if (i14 < i11) {
                        Utf8.DecodeUtil.handleTwoBytes(b11, bArr[i14], cArr, i13);
                        i9 = i14 + 1;
                        i13++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (Utf8.DecodeUtil.isThreeBytes(b11)) {
                    if (i14 < i11 - 1) {
                        int i16 = i14 + 1;
                        Utf8.DecodeUtil.handleThreeBytes(b11, bArr[i14], bArr[i16], cArr, i13);
                        i9 = i16 + 1;
                        i13++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i14 < i11 - 2) {
                    int i17 = i14 + 1;
                    byte b13 = bArr[i14];
                    int i18 = i17 + 1;
                    Utf8.DecodeUtil.handleFourBytes(b11, b13, bArr[i17], bArr[i18], cArr, i13);
                    i9 = i18 + 1;
                    i13 = i13 + 1 + 1;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i13);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    public static String decodeUtf8Buffer(ByteBuffer byteBuffer, int i9, int i10) {
        if ((i9 | i10 | ((byteBuffer.limit() - i9) - i10)) >= 0) {
            int i11 = i9 + i10;
            char[] cArr = new char[i10];
            int i12 = 0;
            while (i9 < i11) {
                byte b10 = byteBuffer.get(i9);
                if (!Utf8.DecodeUtil.isOneByte(b10)) {
                    break;
                }
                i9++;
                Utf8.DecodeUtil.handleOneByte(b10, cArr, i12);
                i12++;
            }
            int i13 = i12;
            while (i9 < i11) {
                int i14 = i9 + 1;
                byte b11 = byteBuffer.get(i9);
                if (Utf8.DecodeUtil.isOneByte(b11)) {
                    int i15 = i13 + 1;
                    Utf8.DecodeUtil.handleOneByte(b11, cArr, i13);
                    while (i14 < i11) {
                        byte b12 = byteBuffer.get(i14);
                        if (!Utf8.DecodeUtil.isOneByte(b12)) {
                            break;
                        }
                        i14++;
                        Utf8.DecodeUtil.handleOneByte(b12, cArr, i15);
                        i15++;
                    }
                    i9 = i14;
                    i13 = i15;
                } else if (Utf8.DecodeUtil.isTwoBytes(b11)) {
                    if (i14 < i11) {
                        Utf8.DecodeUtil.handleTwoBytes(b11, byteBuffer.get(i14), cArr, i13);
                        i9 = i14 + 1;
                        i13++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (Utf8.DecodeUtil.isThreeBytes(b11)) {
                    if (i14 < i11 - 1) {
                        int i16 = i14 + 1;
                        Utf8.DecodeUtil.handleThreeBytes(b11, byteBuffer.get(i14), byteBuffer.get(i16), cArr, i13);
                        i9 = i16 + 1;
                        i13++;
                    } else {
                        throw new IllegalArgumentException("Invalid UTF-8");
                    }
                } else if (i14 < i11 - 2) {
                    int i17 = i14 + 1;
                    byte b13 = byteBuffer.get(i14);
                    int i18 = i17 + 1;
                    Utf8.DecodeUtil.handleFourBytes(b11, b13, byteBuffer.get(i17), byteBuffer.get(i18), cArr, i13);
                    i9 = i18 + 1;
                    i13 = i13 + 1 + 1;
                } else {
                    throw new IllegalArgumentException("Invalid UTF-8");
                }
            }
            return new String(cArr, 0, i13);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        return r9 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int encodeUtf8Array(java.lang.CharSequence r7, byte[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.flatbuffer.Utf8Safe.encodeUtf8Array(java.lang.CharSequence, byte[], int, int):int");
    }

    private static void encodeUtf8Buffer(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int position = byteBuffer.position();
        int i9 = 0;
        while (i9 < length) {
            try {
                char charAt = charSequence.charAt(i9);
                if (charAt >= 128) {
                    break;
                }
                byteBuffer.put(position + i9, (byte) charAt);
                i9++;
            } catch (IndexOutOfBoundsException unused) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i9) + " at index " + (byteBuffer.position() + Math.max(i9, (position - byteBuffer.position()) + 1)));
            }
        }
        if (i9 == length) {
            byteBuffer.position(position + i9);
            return;
        }
        position += i9;
        while (i9 < length) {
            char charAt2 = charSequence.charAt(i9);
            if (charAt2 < 128) {
                byteBuffer.put(position, (byte) charAt2);
            } else if (charAt2 < 2048) {
                int i10 = position + 1;
                try {
                    byteBuffer.put(position, (byte) ((charAt2 >>> 6) | 192));
                    byteBuffer.put(i10, (byte) ((charAt2 & '?') | 128));
                    position = i10;
                } catch (IndexOutOfBoundsException unused2) {
                    position = i10;
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i9) + " at index " + (byteBuffer.position() + Math.max(i9, (position - byteBuffer.position()) + 1)));
                }
            } else if (charAt2 >= 55296 && 57343 >= charAt2) {
                int i11 = i9 + 1;
                if (i11 != length) {
                    try {
                        char charAt3 = charSequence.charAt(i11);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i12 = position + 1;
                            try {
                                byteBuffer.put(position, (byte) ((codePoint >>> 18) | 240));
                                int i13 = i12 + 1;
                                byteBuffer.put(i12, (byte) (((codePoint >>> 12) & 63) | 128));
                                int i14 = i13 + 1;
                                byteBuffer.put(i13, (byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put(i14, (byte) ((codePoint & 63) | 128));
                                position = i14;
                                i9 = i11;
                            } catch (IndexOutOfBoundsException unused3) {
                                position = i12;
                                i9 = i11;
                                throw new ArrayIndexOutOfBoundsException("Failed writing " + charSequence.charAt(i9) + " at index " + (byteBuffer.position() + Math.max(i9, (position - byteBuffer.position()) + 1)));
                            }
                        } else {
                            i9 = i11;
                        }
                    } catch (IndexOutOfBoundsException unused4) {
                    }
                }
                throw new UnpairedSurrogateException(i9, length);
            } else {
                int i15 = position + 1;
                byteBuffer.put(position, (byte) ((charAt2 >>> '\f') | 224));
                position = i15 + 1;
                byteBuffer.put(i15, (byte) (((charAt2 >>> 6) & 63) | 128));
                byteBuffer.put(position, (byte) ((charAt2 & '?') | 128));
            }
            i9++;
            position++;
        }
        byteBuffer.position(position);
    }

    private static int encodedLengthGeneral(CharSequence charSequence, int i9) {
        int length = charSequence.length();
        int i10 = 0;
        while (i9 < length) {
            char charAt = charSequence.charAt(i9);
            if (charAt < 2048) {
                i10 += (127 - charAt) >>> 31;
            } else {
                i10 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i9) < 65536) {
                        throw new UnpairedSurrogateException(i9, length);
                    }
                    i9++;
                }
            }
            i9++;
        }
        return i10;
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i9, int i10) throws IllegalArgumentException {
        if (byteBuffer.hasArray()) {
            return decodeUtf8Array(byteBuffer.array(), byteBuffer.arrayOffset() + i9, i10);
        }
        return decodeUtf8Buffer(byteBuffer, i9, i10);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            byteBuffer.position(encodeUtf8Array(charSequence, byteBuffer.array(), byteBuffer.position() + arrayOffset, byteBuffer.remaining()) - arrayOffset);
            return;
        }
        encodeUtf8Buffer(charSequence, byteBuffer);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        return computeEncodedLength(charSequence);
    }
}
