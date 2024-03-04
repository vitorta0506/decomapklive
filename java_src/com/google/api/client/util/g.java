package com.google.api.client.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
@Deprecated
/* loaded from: classes2.dex */
public final class g {
    public static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        z.d(inputStream);
        z.d(outputStream);
        byte[] bArr = new byte[4096];
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j10;
            }
            outputStream.write(bArr, 0, read);
            j10 += read;
        }
    }
}
