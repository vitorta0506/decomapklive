package cn.jpush.android.af;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Comparator;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class c {
    public static File a(Context context, String str) {
        File filesDir;
        if (context == null || (filesDir = context.getFilesDir()) == null) {
            Logger.w("FileUtils", "can't get file :" + str);
            return null;
        }
        return new File(filesDir, str);
    }

    public static Object a(File file) {
        ObjectInputStream objectInputStream = null;
        if (file == null || !file.exists() || file.isDirectory()) {
            return null;
        }
        try {
            ObjectInputStream objectInputStream2 = new ObjectInputStream(new FileInputStream(file));
            try {
                Object readObject = objectInputStream2.readObject();
                j.a((Closeable) objectInputStream2);
                return readObject;
            } catch (Throwable th2) {
                th = th2;
                objectInputStream = objectInputStream2;
                j.a((Closeable) objectInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String a(Context context, String str, int i9) {
        return a(context, str, i9, true);
    }

    public static String a(Context context, String str, int i9, boolean z10) {
        String b10;
        File file = null;
        if (context == null) {
            return null;
        }
        try {
            if (a.a()) {
                String absolutePath = context.getExternalFilesDir(Environment.DIRECTORY_PICTURES).getAbsolutePath();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(absolutePath);
                String str2 = File.separator;
                sb2.append(str2);
                sb2.append(str);
                sb2.append(str2);
                String sb3 = sb2.toString();
                File file2 = new File(sb3);
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                b10 = sb3;
                file = file2;
            } else {
                b10 = b(context, str + File.separator);
            }
            if (z10) {
                a(context, str, i9, file);
            }
            return b10;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "";
        }
    }

    private static void a(Context context, String str, int i9, File file) {
        File[] listFiles;
        if (file == null) {
            file = a(context, str);
        }
        if (file != null && file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null && listFiles.length > i9) {
            Arrays.sort(listFiles, new Comparator<File>() { // from class: cn.jpush.android.af.c.1
                @Override // java.util.Comparator
                /* renamed from: a */
                public int compare(File file2, File file3) {
                    if (file2.lastModified() > file3.lastModified()) {
                        return -1;
                    }
                    return file2.lastModified() < file3.lastModified() ? 1 : 0;
                }
            });
            c(listFiles[listFiles.length - 1]);
        }
    }

    public static boolean a(File file, Object obj) {
        if (file == null || file.isDirectory()) {
            Logger.w("FileUtils", "file should not be null or a directory");
            return false;
        }
        ObjectOutputStream objectOutputStream = null;
        try {
            b(file);
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(file));
            try {
                objectOutputStream2.writeObject(obj);
                j.a(objectOutputStream2);
                return true;
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream = objectOutputStream2;
                try {
                    Logger.w("FileUtils", "save to file exception:" + th + " path = " + file.getAbsolutePath());
                    return false;
                } finally {
                    j.a(objectOutputStream);
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return new File(str).exists();
        } catch (Throwable th2) {
            Logger.w("FileUtils", "FileUtils e:" + th2);
            return false;
        }
    }

    public static boolean a(String str, String str2) {
        byte[] bytes;
        if (str2 != null) {
            try {
                bytes = str2.getBytes("UTF-8");
            } catch (Exception e10) {
                Logger.w("FileUtils", "getBytes exception:" + e10);
                return false;
            }
        } else {
            bytes = null;
        }
        return b(str, bytes);
    }

    public static boolean a(String str, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return false;
        }
        return b(str, bArr);
    }

    public static String b(Context context, String str) {
        try {
            File a10 = a(context, str);
            if (a10 == null) {
                Logger.w("FileUtils", str + " can't be null");
                return "";
            }
            if (a10.isFile()) {
                a10.delete();
            }
            if (!a10.exists()) {
                a10.mkdirs();
            }
            return a10.getAbsolutePath() + File.separator;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int indexOf = str.indexOf("?");
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
            if (TextUtils.isEmpty(str)) {
                return "";
            }
        }
        return str.substring(str.lastIndexOf(FileUtils.RES_PREFIX_STORAGE) + 1);
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

    public static boolean b(String str, String str2) {
        Logger.v("FileUtils", "action:createHtmlFile - filePath:" + str + ", content:" + str2);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return a(str, str2);
    }

    private static boolean b(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (bArr == null) {
            bArr = new byte[0];
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                File file = new File(str);
                b(file);
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileOutputStream.write(bArr);
            j.a(fileOutputStream);
            return true;
        } catch (Exception e11) {
            e = e11;
            fileOutputStream2 = fileOutputStream;
            Logger.w("FileUtils", "save to file exception:" + e + " path = " + str);
            j.a(fileOutputStream2);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            j.a(fileOutputStream2);
            throw th;
        }
    }

    public static String c(Context context, String str) {
        try {
            if (!a.a()) {
                a(context, "rich", 10, (File) null);
                return b(context, "rich" + File.separator + str);
            }
            String absolutePath = context.getExternalFilesDir(Environment.DIRECTORY_PICTURES).getAbsolutePath();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(absolutePath);
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append(str);
            sb2.append(str2);
            String sb3 = sb2.toString();
            File file = new File(sb3);
            if (!file.exists()) {
                file.mkdirs();
            }
            return sb3;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "";
        }
    }

    public static boolean c(File file) {
        try {
            if (file.exists()) {
                if (file.isFile()) {
                    return file.delete();
                }
                String[] list = file.list();
                if (list != null) {
                    for (String str : list) {
                        File file2 = new File(file, str);
                        if (file2.isDirectory()) {
                            c(file2);
                        } else {
                            file2.delete();
                        }
                    }
                }
                return file.delete();
            }
            return false;
        } catch (Exception unused) {
            Logger.e("FileUtils", "Delete dir error");
            return false;
        }
    }

    public static String d(Context context, String str) {
        try {
            if (a.a()) {
                String str2 = context.getExternalFilesDir(Environment.DIRECTORY_PICTURES).getAbsolutePath() + File.separator + str;
                if (new File(str2).exists()) {
                    return str2;
                }
                Logger.ww("FileUtils", "Can't find developer picture resource in SDCard.");
                return "";
            }
            return "";
        } catch (Throwable th2) {
            Logger.ww("FileUtils", "Get developer picture resource failed.");
            th2.printStackTrace();
            return "";
        }
    }
}
