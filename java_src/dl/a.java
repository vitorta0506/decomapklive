package dl;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static int f38163a = 4096;

    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        int i9 = f38163a;
        byte[] bArr = new byte[i9];
        while (true) {
            int read = inputStream.read(bArr, 0, i9);
            if (read < 0) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    public static byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static int c(InputStream inputStream, byte[] bArr) throws IOException {
        return d(inputStream, bArr, 0, bArr.length);
    }

    public static int d(InputStream inputStream, byte[] bArr, int i9, int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            int read = inputStream.read(bArr, i9 + i11, i10 - i11);
            if (read < 0) {
                break;
            }
            i11 += read;
        }
        return i11;
    }
}
