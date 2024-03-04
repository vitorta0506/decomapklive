package com.tencent.liteav.base.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4.dex */
public final class f {
    public static File a(Context context, String str) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return null;
        }
        String absolutePath = externalFilesDir.getAbsolutePath();
        File file = new File(absolutePath + File.separator + str);
        try {
            if (file.exists() && file.isFile()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception e10) {
            LiteavLog.e("FileUtil", "mkdirs failed.", e10);
        }
        return file;
    }

    public static long a(File file, int i9) {
        File[] listFiles;
        long length;
        long j10 = 0;
        if (i9 <= 0) {
            return 0L;
        }
        try {
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory()) {
                    length = a(file2, i9 - 1);
                } else {
                    length = file2.length();
                }
                j10 += length;
            }
        } catch (Exception e10) {
            LiteavLog.i("FileUtil", "getFolderSize exception " + e10.toString());
        }
        return j10;
    }

    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
