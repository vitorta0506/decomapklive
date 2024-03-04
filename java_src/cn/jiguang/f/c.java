package cn.jiguang.f;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.LinkedList;
/* loaded from: classes.dex */
public class c {

    /* loaded from: classes.dex */
    public static class a implements FileFilter {

        /* renamed from: a  reason: collision with root package name */
        public static final a f2576a = new a(true, false);

        /* renamed from: b  reason: collision with root package name */
        public static final a f2577b = new a(false, true);

        /* renamed from: c  reason: collision with root package name */
        private final boolean f2578c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f2579d;

        /* renamed from: e  reason: collision with root package name */
        private final String f2580e;

        /* renamed from: f  reason: collision with root package name */
        private final int f2581f;

        public a(boolean z10, boolean z11) {
            this.f2578c = z10;
            this.f2579d = z11;
            this.f2580e = null;
            this.f2581f = 0;
        }

        public a(boolean z10, boolean z11, String str, int i9) {
            this.f2580e = str;
            this.f2581f = i9;
            this.f2578c = z10;
            this.f2579d = z11;
        }

        public static a a(String str) {
            return new a(false, true, str, 3);
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            if (!this.f2578c || file.isFile()) {
                if (!this.f2579d || file.isDirectory()) {
                    if (TextUtils.isEmpty(this.f2580e)) {
                        return true;
                    }
                    int i9 = this.f2581f;
                    if (i9 != 1) {
                        if (i9 != 2) {
                            if (i9 != 3) {
                                if (i9 != 4) {
                                    return false;
                                }
                                return file.getName().contains(this.f2580e);
                            }
                            return file.getName().equals(this.f2580e);
                        }
                        return file.getName().endsWith(this.f2580e);
                    }
                    return file.getName().startsWith(this.f2580e);
                }
                return false;
            }
            return false;
        }
    }

    public static File a(Context context, String str) {
        File filesDir;
        if (context == null || (filesDir = context.getFilesDir()) == null) {
            cn.jiguang.as.d.g("FileUtils", "can't get file :" + str);
            return null;
        }
        return new File(filesDir, str);
    }

    public static File a(File[] fileArr) {
        File file = null;
        if (fileArr != null && fileArr.length != 0) {
            for (File file2 : fileArr) {
                if (file2.lastModified() > (file != null ? file.lastModified() : 0L)) {
                    file = file2;
                }
            }
        }
        return file;
    }

    public static String a(InputStream inputStream) {
        byte[] b10 = b(inputStream);
        if (b10 == null) {
            return null;
        }
        try {
            return new String(b10, "UTF-8");
        } catch (Throwable th2) {
            Log.d("FileUtils", "can't encoding, give up read :" + th2);
            return null;
        }
    }

    public static void a(File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    file.delete();
                    cn.jiguang.as.d.c("FileUtils", "delete File:" + file.getPath());
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean a(Context context, String str, String str2) {
        return a(a(context, str), str2);
    }

    public static boolean a(File file, String str) {
        String str2;
        if (file == null || file.isDirectory()) {
            str2 = "file should not be null or a directory";
        } else if (TextUtils.isEmpty(str)) {
            str2 = "append data should not be empty";
        } else {
            FileWriter fileWriter = null;
            try {
                b(file);
                FileWriter fileWriter2 = new FileWriter(file, true);
                try {
                    fileWriter2.write(str);
                    i.a(fileWriter2);
                    return true;
                } catch (Throwable th2) {
                    th = th2;
                    fileWriter = fileWriter2;
                    try {
                        cn.jiguang.as.d.g("FileUtils", "append to file exception:" + th + " path = " + file.getAbsolutePath());
                        return false;
                    } finally {
                        i.a(fileWriter);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        cn.jiguang.as.d.g("FileUtils", str2);
        return false;
    }

    public static boolean a(File file, byte[] bArr) {
        if (file == null || file.isDirectory()) {
            cn.jiguang.as.d.g("FileUtils", "file should not be null or a directory");
            return false;
        }
        FileOutputStream fileOutputStream = null;
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                th = th2;
                try {
                    cn.jiguang.as.d.g("FileUtils", "save to file exception:" + th + " path = " + file.getAbsolutePath());
                    return false;
                } finally {
                    i.a(fileOutputStream);
                }
            }
        }
        b(file);
        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
        try {
            fileOutputStream2.write(bArr);
            i.a(fileOutputStream2);
            return true;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = fileOutputStream2;
            cn.jiguang.as.d.g("FileUtils", "save to file exception:" + th + " path = " + file.getAbsolutePath());
            return false;
        }
    }

    public static File[] a(File file, FileFilter... fileFilterArr) {
        if (file != null && file.exists() && file.isDirectory()) {
            if (fileFilterArr == null || fileFilterArr.length == 0 || (fileFilterArr.length == 1 && fileFilterArr[0] == null)) {
                return file.listFiles();
            }
            if (fileFilterArr.length == 1) {
                return file.listFiles(fileFilterArr[0]);
            }
            LinkedList<File> linkedList = new LinkedList();
            linkedList.add(file);
            int length = fileFilterArr.length;
            int i9 = 0;
            while (i9 < length) {
                FileFilter fileFilter = fileFilterArr[i9];
                LinkedList linkedList2 = new LinkedList();
                for (File file2 : linkedList) {
                    File[] listFiles = fileFilter != null ? file2.listFiles(fileFilter) : file2.listFiles();
                    if (listFiles != null && listFiles.length > 0) {
                        Collections.addAll(linkedList2, listFiles);
                    }
                }
                if (linkedList2.isEmpty()) {
                    return null;
                }
                i9++;
                linkedList = linkedList2;
            }
            return (File[]) linkedList.toArray(new File[0]);
        }
        return null;
    }

    public static File[] a(String str, FileFilter... fileFilterArr) {
        try {
            return a(new File(str), fileFilterArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void b(File file) {
        if (file == null || file.exists()) {
            return;
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            file.createNewFile();
        } catch (Throwable unused) {
        }
    }

    public static boolean b(File file, String str) {
        byte[] bytes;
        if (str != null) {
            try {
                bytes = str.getBytes("UTF-8");
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("FileUtils", "getBytes exception:" + th2);
                return false;
            }
        } else {
            bytes = null;
        }
        return a(file, bytes);
    }

    public static byte[] b(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            return i.a(inputStream);
        } catch (Throwable th2) {
            Log.d("FileUtils", "can't read, give up read. e:" + th2);
            return null;
        }
    }

    public static byte[] c(File file) {
        FileInputStream fileInputStream;
        if (file == null || !file.exists() || file.isDirectory()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                return i.a((InputStream) fileInputStream);
            } catch (Throwable th2) {
                th = th2;
                try {
                    cn.jiguang.as.d.c("FileUtils", "can't read, give up read. e:" + th);
                    return null;
                } finally {
                    i.a((Closeable) fileInputStream);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static String d(File file) {
        byte[] c10 = c(file);
        if (c10 == null) {
            return null;
        }
        try {
            return new String(c10, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            cn.jiguang.as.d.c("FileUtils", "can't encoding, give up read :" + e10);
            return null;
        }
    }

    public static void e(File file) {
        File[] listFiles;
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                e(file2);
                file2.delete();
            }
        }
        file.delete();
    }
}
