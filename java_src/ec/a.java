package ec;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.huawei.hms.common.PackageConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.UByte;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f38553a = Uri.parse("content://com.huawei.hwid");

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f38554b = {"B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05", "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539"};

    private static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        File file = new File(str);
        if (file.exists()) {
            f.f("BksUtil", "The directory  has already exists");
            return 1;
        } else if (file.mkdirs()) {
            f.b("BksUtil", "create directory  success");
            return 0;
        } else {
            f.d("BksUtil", "create directory  failed");
            return -1;
        }
    }

    private static String b(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return context.createDeviceProtectedStorageContext().getFilesDir() + File.separator + "aegis";
        }
        return context.getApplicationContext().getFilesDir() + File.separator + "aegis";
    }

    private static String c(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & UByte.MAX_VALUE);
            if (hexString.length() == 1) {
                sb2.append('0');
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    private static void d(InputStream inputStream, Context context) {
        FileOutputStream fileOutputStream;
        if (inputStream == null || context == null) {
            return;
        }
        String b10 = b(context);
        if (!new File(b10).exists()) {
            a(b10);
        }
        File file = new File(b10, "hmsrootcas.bks");
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                f.e("BksUtil", "write output stream ");
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused) {
        }
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int read = inputStream.read(bArr, 0, 2048);
                if (read != -1) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    e.c(fileOutputStream);
                    return;
                }
            }
        } catch (IOException unused2) {
            fileOutputStream2 = fileOutputStream;
            f.d("BksUtil", " IOException");
            e.c(fileOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            e.c(fileOutputStream2);
            throw th;
        }
    }

    private static byte[] e(Context context, String str) {
        PackageInfo packageInfo;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (packageInfo = packageManager.getPackageInfo(str, 64)) != null) {
                    return packageInfo.signatures[0].toByteArray();
                }
            } catch (PackageManager.NameNotFoundException e10) {
                Log.e("BksUtil", "PackageManager.NameNotFoundException : " + e10.getMessage());
            } catch (Exception e11) {
                Log.e("BksUtil", "get pm exception : " + e11.getMessage());
            }
            return new byte[0];
        }
        Log.e("BksUtil", "packageName is null or context is null");
        return new byte[0];
    }

    private static String f(Context context) {
        return b(context) + File.separator + "hmsrootcas.bks";
    }

    private static String g(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return c(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            f.d("BksUtil", "inputstraem exception");
            return "";
        }
    }

    private static boolean h(Context context, String str) {
        return "E49D5C2C0E11B3B1B96CA56C6DE2A14EC7DAB5CCC3B5F300D03E5B4DBA44F539".equalsIgnoreCase(j(e(context, str)));
    }

    private static boolean i(String str) {
        int parseInt;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        f.e("BksUtil", "hms version code is : " + str);
        String[] split = str.split("\\.");
        String[] split2 = "4.0.2.300".split("\\.");
        int length = split.length;
        int length2 = split2.length;
        int max = Math.max(length, length2);
        int i9 = 0;
        while (i9 < max) {
            if (i9 < length) {
                try {
                    parseInt = Integer.parseInt(split[i9]);
                } catch (Exception e10) {
                    f.d("BksUtil", " exception : " + e10.getMessage());
                    return i9 >= length2;
                }
            } else {
                parseInt = 0;
            }
            int parseInt2 = i9 < length2 ? Integer.parseInt(split2[i9]) : 0;
            if (parseInt < parseInt2) {
                return false;
            }
            if (parseInt > parseInt2) {
                return true;
            }
            i9++;
        }
        return true;
    }

    private static String j(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        try {
            return c(MessageDigest.getInstance("SHA-256").digest(bArr));
        } catch (NoSuchAlgorithmException e10) {
            Log.e("BksUtil", "NoSuchAlgorithmException" + e10.getMessage());
            return "";
        }
    }

    private static boolean k(Context context) {
        return new File(b(context) + File.separator + "hmsrootcas.bks").exists();
    }

    private static boolean l(Context context, String str) {
        byte[] e10 = e(context, str);
        for (String str2 : f38554b) {
            if (str2.equalsIgnoreCase(j(e10))) {
                return true;
            }
        }
        return false;
    }

    public static synchronized InputStream m(Context context) {
        InputStream inputStream;
        ByteArrayInputStream byteArrayInputStream;
        String a10;
        String g10;
        synchronized (a.class) {
            f.e("BksUtil", "get bks from tss begin");
            if (context != null) {
                c.b(context);
            }
            Context a11 = c.a();
            ByteArrayInputStream byteArrayInputStream2 = null;
            if (a11 == null) {
                f.d("BksUtil", "context is null");
                return null;
            } else if (!i(g.a("com.huawei.hwid")) && !i(g.a(PackageConstants.SERVICES_PACKAGE_ALL_SCENE))) {
                f.d("BksUtil", "hms version code is too low : " + g.a("com.huawei.hwid"));
                return null;
            } else if (!l(a11, "com.huawei.hwid") && !h(a11, PackageConstants.SERVICES_PACKAGE_ALL_SCENE)) {
                f.d("BksUtil", "hms sign error");
                return null;
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    inputStream = a11.getContentResolver().openInputStream(Uri.withAppendedPath(f38553a, "files/hmsrootcas.bks"));
                    try {
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read <= -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                            byteArrayOutputStream.flush();
                            byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                        } catch (Exception unused) {
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception unused2) {
                    inputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
                try {
                    a10 = h.a("bks_hash", "", a11);
                    g10 = g(byteArrayOutputStream.toByteArray());
                } catch (Exception unused3) {
                    byteArrayInputStream2 = byteArrayInputStream;
                    f.d("BksUtil", "Get bks from HMS_VERSION_CODE exception : No content provider");
                    e.b(inputStream);
                    e.c(byteArrayOutputStream);
                    e.b(byteArrayInputStream2);
                    return n(a11);
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayInputStream2 = byteArrayInputStream;
                    e.b(inputStream);
                    e.c(byteArrayOutputStream);
                    e.b(byteArrayInputStream2);
                    throw th;
                }
                if (k(a11) && a10.equals(g10)) {
                    f.e("BksUtil", "bks not update");
                    e.b(inputStream);
                    e.c(byteArrayOutputStream);
                    e.b(byteArrayInputStream);
                    return n(a11);
                }
                f.e("BksUtil", "update bks and sp");
                d(byteArrayInputStream, a11);
                h.c("bks_hash", g10, a11);
                e.b(inputStream);
                e.c(byteArrayOutputStream);
                e.b(byteArrayInputStream);
                return n(a11);
            }
        }
    }

    public static InputStream n(Context context) {
        if (k(context)) {
            f.e("BksUtil", "getFilesBksIS ");
            try {
                return new FileInputStream(f(context));
            } catch (FileNotFoundException unused) {
                f.d("BksUtil", "FileNotFoundExceptio: ");
                return null;
            }
        }
        return null;
    }
}
