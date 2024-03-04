package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public class a2 {

    /* renamed from: a  reason: collision with root package name */
    private static final long f55898a = Runtime.getRuntime().maxMemory();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9) {
        int i10 = 1;
        if (i9 > 127) {
            int i11 = 1;
            while (true) {
                i9 >>>= 8;
                if (i9 == 0) {
                    break;
                }
                i11++;
            }
            for (int i12 = (i11 - 1) * 8; i12 >= 0; i12 -= 8) {
                i10++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i9) throws IOException {
        if (i9 >= 31) {
            if (i9 < 128) {
                return 2;
            }
            byte[] bArr = new byte[5];
            int i10 = 4;
            do {
                i9 >>= 7;
                i10--;
                bArr[i10] = (byte) ((i9 & 127) | 128);
            } while (i9 > 127);
            return 1 + (5 - i10);
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(InputStream inputStream) {
        if (inputStream instanceof y1) {
            return ((y1) inputStream).a();
        }
        if (inputStream instanceof j) {
            return ((j) inputStream).e();
        }
        if (inputStream instanceof ByteArrayInputStream) {
            return ((ByteArrayInputStream) inputStream).available();
        }
        if (inputStream instanceof FileInputStream) {
            try {
                FileChannel channel = ((FileInputStream) inputStream).getChannel();
                long size = channel != null ? channel.size() : 2147483647L;
                if (size < 2147483647L) {
                    return (int) size;
                }
            } catch (IOException unused) {
            }
        }
        long j10 = f55898a;
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j10;
    }
}
