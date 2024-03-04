package com.meizu.cloud.pushsdk.notification.c;

import com.meizu.cloud.pushinternal.DebugLogger;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class a {
    public static void a(String str, String str2) {
        String[] list;
        try {
            new File(str2).mkdirs();
            for (String str3 : new File(str).list()) {
                String str4 = File.separator;
                File file = str.endsWith(str4) ? new File(str + str3) : new File(str + str4 + str3);
                if (file.isFile()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    FileOutputStream fileOutputStream = new FileOutputStream(str2 + FileUtils.RES_PREFIX_STORAGE + file.getName());
                    byte[] bArr = new byte[5120];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                } else if (file.isDirectory()) {
                    a(str + FileUtils.RES_PREFIX_STORAGE + str3, str2 + FileUtils.RES_PREFIX_STORAGE + str3);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean a(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            return file.delete();
        }
        return false;
    }

    public static boolean b(String str) {
        File[] listFiles;
        String str2 = File.separator;
        if (!str.endsWith(str2)) {
            str = str + str2;
        }
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            boolean z10 = true;
            for (File file2 : file.listFiles()) {
                boolean isFile = file2.isFile();
                String absolutePath = file2.getAbsolutePath();
                if (isFile) {
                    z10 = a(absolutePath);
                    if (!z10) {
                        break;
                    }
                } else {
                    z10 = b(absolutePath);
                    if (!z10) {
                        break;
                    }
                }
            }
            if (z10) {
                return file.delete();
            }
            return false;
        }
        return false;
    }

    public static File[] b(String str, final String str2) {
        File file = new File(str);
        return file.isDirectory() ? file.listFiles(new FileFilter() { // from class: com.meizu.cloud.pushsdk.notification.c.a.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                try {
                    return Long.valueOf(str2).longValue() > Long.valueOf(file2.getName().split("-")[1]).longValue();
                } catch (Exception e10) {
                    DebugLogger.e("FileUtil", "filters file error " + e10.getMessage());
                    return true;
                }
            }
        }) : new File[0];
    }
}
