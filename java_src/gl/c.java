package gl;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import kotlin.UByte;
import okio.Utf8;
import org.conscrypt.ct.SerializationException;
/* loaded from: classes7.dex */
public class c {
    public static byte a(InputStream inputStream) throws SerializationException {
        try {
            int read = inputStream.read();
            if (read != -1) {
                return (byte) read;
            }
            throw new SerializationException("Premature end of input, could not read byte.");
        } catch (IOException e10) {
            throw new SerializationException(e10);
        }
    }

    public static byte[] b(InputStream inputStream) throws SerializationException {
        int a10 = a(inputStream) & Utf8.REPLACEMENT_BYTE;
        if (a10 == 4) {
            int h10 = h(inputStream, 1);
            if ((h10 & 128) != 0) {
                h10 = h(inputStream, h10 & (-129));
            }
            return d(inputStream, h10);
        }
        throw new SerializationException("Wrong DER tag, expected OCTET STRING, got " + a10);
    }

    public static byte[] c(byte[] bArr) throws SerializationException {
        return b(new ByteArrayInputStream(bArr));
    }

    public static byte[] d(InputStream inputStream, int i9) throws SerializationException {
        try {
            if (i9 >= 0) {
                byte[] bArr = new byte[i9];
                int read = inputStream.read(bArr);
                if (read >= i9) {
                    return bArr;
                }
                throw new SerializationException("Premature end of input, expected " + i9 + " bytes, only read " + read);
            }
            throw new SerializationException("Negative length: " + i9);
        } catch (IOException e10) {
            throw new SerializationException(e10);
        }
    }

    public static byte[][] e(InputStream inputStream, int i9, int i10) throws SerializationException {
        ArrayList arrayList = new ArrayList();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(i(inputStream, i9));
        while (byteArrayInputStream.available() > 0) {
            try {
                arrayList.add(i(byteArrayInputStream, i10));
            } catch (IOException e10) {
                throw new SerializationException(e10);
            }
        }
        return (byte[][]) arrayList.toArray(new byte[arrayList.size()]);
    }

    public static byte[][] f(byte[] bArr, int i9, int i10) throws SerializationException {
        return e(new ByteArrayInputStream(bArr), i9, i10);
    }

    public static long g(InputStream inputStream, int i9) throws SerializationException {
        if (i9 > 8 || i9 < 0) {
            throw new IllegalArgumentException("Invalid width: " + i9);
        }
        long j10 = 0;
        for (int i10 = 0; i10 < i9; i10++) {
            j10 = (j10 << 8) | (a(inputStream) & UByte.MAX_VALUE);
        }
        return j10;
    }

    public static int h(InputStream inputStream, int i9) throws SerializationException {
        if (i9 > 4 || i9 < 0) {
            throw new SerializationException("Invalid width: " + i9);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            i10 = (i10 << 8) | (a(inputStream) & UByte.MAX_VALUE);
        }
        return i10;
    }

    public static byte[] i(InputStream inputStream, int i9) throws SerializationException {
        return d(inputStream, h(inputStream, i9));
    }
}
