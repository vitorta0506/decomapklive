package androidx.emoji2.text.flatbuffer;

import com.tencent.ugc.datereport.UGCDataReportDef;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    /* loaded from: classes.dex */
    static class DecodeUtil {
        DecodeUtil() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleFourBytes(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i9) throws IllegalArgumentException {
            if (!isNotTrailingByte(b11) && (((b10 << 28) + (b11 + 112)) >> 30) == 0 && !isNotTrailingByte(b12) && !isNotTrailingByte(b13)) {
                int trailingByteValue = ((b10 & 7) << 18) | (trailingByteValue(b11) << 12) | (trailingByteValue(b12) << 6) | trailingByteValue(b13);
                cArr[i9] = highSurrogate(trailingByteValue);
                cArr[i9 + 1] = lowSurrogate(trailingByteValue);
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleOneByte(byte b10, char[] cArr, int i9) {
            cArr[i9] = (char) b10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleThreeBytes(byte b10, byte b11, byte b12, char[] cArr, int i9) throws IllegalArgumentException {
            if (!isNotTrailingByte(b11) && ((b10 != -32 || b11 >= -96) && ((b10 != -19 || b11 < -96) && !isNotTrailingByte(b12)))) {
                cArr[i9] = (char) (((b10 & 15) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12));
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void handleTwoBytes(byte b10, byte b11, char[] cArr, int i9) throws IllegalArgumentException {
            if (b10 >= -62) {
                if (!isNotTrailingByte(b11)) {
                    cArr[i9] = (char) (((b10 & 31) << 6) | trailingByteValue(b11));
                    return;
                }
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
            throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
        }

        private static char highSurrogate(int i9) {
            return (char) ((i9 >>> 10) + okio.Utf8.HIGH_SURROGATE_HEADER);
        }

        private static boolean isNotTrailingByte(byte b10) {
            return b10 > -65;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isOneByte(byte b10) {
            return b10 >= 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isThreeBytes(byte b10) {
            return b10 < -16;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean isTwoBytes(byte b10) {
            return b10 < -32;
        }

        private static char lowSurrogate(int i9) {
            return (char) ((i9 & UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER) + okio.Utf8.LOG_SURROGATE_HEADER);
        }

        private static int trailingByteValue(byte b10) {
            return b10 & okio.Utf8.REPLACEMENT_BYTE;
        }
    }

    /* loaded from: classes.dex */
    static class UnpairedSurrogateException extends IllegalArgumentException {
        UnpairedSurrogateException(int i9, int i10) {
            super("Unpaired surrogate at index " + i9 + " of " + i10);
        }
    }

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i9, int i10);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
