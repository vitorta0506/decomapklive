package com.meizu.cloud.pushsdk.notification.c;

import com.meizu.cloud.pushinternal.DebugLogger;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final File f28746a;

    /* renamed from: b  reason: collision with root package name */
    private final File f28747b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28748c;

    public e(String str, String str2) {
        File file = new File(str);
        this.f28746a = file;
        File file2 = new File(str2);
        this.f28747b = file2;
        this.f28748c = file2.getAbsolutePath();
        DebugLogger.i("ZipExtractTask", "Extract mInput file = " + file.toString());
        DebugLogger.i("ZipExtractTask", "Extract mOutput file = " + file2.toString());
    }

    private int a(InputStream inputStream, OutputStream outputStream) {
        StringBuilder sb2;
        byte[] bArr = new byte[8192];
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 8192);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream, 8192);
        int i9 = 0;
        while (true) {
            try {
                try {
                    int read = bufferedInputStream.read(bArr, 0, 8192);
                    if (read == -1) {
                        break;
                    }
                    bufferedOutputStream.write(bArr, 0, read);
                    i9 += read;
                } catch (IOException e10) {
                    DebugLogger.e("ZipExtractTask", "Extracted IOException:" + e10.toString());
                    try {
                        bufferedOutputStream.close();
                    } catch (IOException e11) {
                        DebugLogger.e("ZipExtractTask", "out.close() IOException e=" + e11.toString());
                    }
                    try {
                        bufferedInputStream.close();
                    } catch (IOException e12) {
                        e = e12;
                        sb2 = new StringBuilder();
                        sb2.append("in.close() IOException e=");
                        sb2.append(e.toString());
                        DebugLogger.e("ZipExtractTask", sb2.toString());
                        return i9;
                    }
                }
            } catch (Throwable th2) {
                try {
                    bufferedOutputStream.close();
                } catch (IOException e13) {
                    DebugLogger.e("ZipExtractTask", "out.close() IOException e=" + e13.toString());
                }
                try {
                    bufferedInputStream.close();
                } catch (IOException e14) {
                    DebugLogger.e("ZipExtractTask", "in.close() IOException e=" + e14.toString());
                }
                throw th2;
            }
        }
        bufferedOutputStream.flush();
        try {
            bufferedOutputStream.close();
        } catch (IOException e15) {
            DebugLogger.e("ZipExtractTask", "out.close() IOException e=" + e15.toString());
        }
        try {
            bufferedInputStream.close();
        } catch (IOException e16) {
            e = e16;
            sb2 = new StringBuilder();
            sb2.append("in.close() IOException e=");
            sb2.append(e.toString());
            DebugLogger.e("ZipExtractTask", sb2.toString());
            return i9;
        }
        return i9;
    }

    private void b() {
        StringBuilder sb2;
        String str;
        File file = this.f28746a;
        if (file == null || !file.exists()) {
            return;
        }
        if (this.f28746a.delete()) {
            sb2 = new StringBuilder();
            str = "Delete file:";
        } else {
            sb2 = new StringBuilder();
            str = "Can't delete file:";
        }
        sb2.append(str);
        sb2.append(this.f28746a.toString());
        sb2.append(" after extracted.");
        DebugLogger.i("ZipExtractTask", sb2.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0047, code lost:
        if (r13 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
        r7 = r13.split(org.light.utils.FileUtils.RES_PREFIX_STORAGE)[0];
        com.meizu.cloud.pushinternal.DebugLogger.i("ZipExtractTask", "Extract temp directory=" + r18.f28747b + org.light.utils.FileUtils.RES_PREFIX_STORAGE + r7);
     */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long c() {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meizu.cloud.pushsdk.notification.c.e.c():long");
    }

    public boolean a() {
        return c() > 0;
    }
}
