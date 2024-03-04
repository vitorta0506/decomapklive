package com.squareup.wire;

import java.io.IOException;
import okio.BufferedSink;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class ProtoWriter {
    private final BufferedSink sink;

    public ProtoWriter(BufferedSink bufferedSink) {
        this.sink = bufferedSink;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int decodeZigZag32(int i9) {
        return (-(i9 & 1)) ^ (i9 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long decodeZigZag64(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int encodeZigZag32(int i9) {
        return (i9 >> 31) ^ (i9 << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long encodeZigZag64(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int int32Size(int i9) {
        if (i9 >= 0) {
            return varint32Size(i9);
        }
        return 10;
    }

    private static int makeTag(int i9, FieldEncoding fieldEncoding) {
        return (i9 << 3) | fieldEncoding.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int tagSize(int i9) {
        return varint32Size(makeTag(i9, FieldEncoding.VARINT));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int utf8Length(String str) {
        int i9;
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            char charAt = str.charAt(i10);
            if (charAt >= 128) {
                if (charAt < 2048) {
                    i11 += 2;
                } else if (charAt < 55296 || charAt > 57343) {
                    i11 += 3;
                } else if (charAt <= 56319 && (i9 = i10 + 1) < length && str.charAt(i9) >= 56320 && str.charAt(i9) <= 57343) {
                    i11 += 4;
                    i10 = i9;
                }
                i10++;
            }
            i11++;
            i10++;
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int varint32Size(int i9) {
        if ((i9 & (-128)) == 0) {
            return 1;
        }
        if ((i9 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i9) == 0) {
            return 3;
        }
        return (i9 & (-268435456)) == 0 ? 4 : 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int varint64Size(long j10) {
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (((-16384) & j10) == 0) {
            return 2;
        }
        if (((-2097152) & j10) == 0) {
            return 3;
        }
        if (((-268435456) & j10) == 0) {
            return 4;
        }
        if (((-34359738368L) & j10) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j10) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j10) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j10) == 0) {
            return 8;
        }
        return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public void writeBytes(ByteString byteString) throws IOException {
        this.sink.write(byteString);
    }

    public void writeFixed32(int i9) throws IOException {
        this.sink.writeIntLe(i9);
    }

    public void writeFixed64(long j10) throws IOException {
        this.sink.writeLongLe(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeSignedVarint32(int i9) throws IOException {
        if (i9 >= 0) {
            writeVarint32(i9);
        } else {
            writeVarint64(i9);
        }
    }

    public void writeString(String str) throws IOException {
        this.sink.writeUtf8(str);
    }

    public void writeTag(int i9, FieldEncoding fieldEncoding) throws IOException {
        writeVarint32(makeTag(i9, fieldEncoding));
    }

    public void writeVarint32(int i9) throws IOException {
        while ((i9 & (-128)) != 0) {
            this.sink.writeByte((i9 & 127) | 128);
            i9 >>>= 7;
        }
        this.sink.writeByte(i9);
    }

    public void writeVarint64(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.sink.writeByte((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.sink.writeByte((int) j10);
    }
}
