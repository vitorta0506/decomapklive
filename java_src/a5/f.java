package a5;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.play.core.internal.b1;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final long f610a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f611b;

    /* renamed from: c  reason: collision with root package name */
    private File f612c;

    public f(Context context) throws PackageManager.NameNotFoundException {
        this.f611b = context;
        this.f610a = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
    }

    public static void l(File file) throws IOException {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                l(file2);
            }
        }
        if (file.exists() && !file.delete()) {
            throw new IOException(String.format("Failed to delete '%s'", file.getAbsolutePath()));
        }
    }

    public static void m(File file) {
        file.setWritable(false, true);
        file.setWritable(false, false);
    }

    public static boolean p(File file) {
        return !file.canWrite();
    }

    private static File q(File file, String str) throws IOException {
        File file2 = new File(file, str);
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            return file2;
        }
        throw new IllegalArgumentException("split ID cannot be placed in target directory");
    }

    private final File r() throws IOException {
        File file = new File(w(), "native-libraries");
        u(file);
        return file;
    }

    private final File s(String str) throws IOException {
        File q10 = q(r(), str);
        u(q10);
        return q10;
    }

    private final File t() throws IOException {
        File file = new File(w(), "verified-splits");
        u(file);
        return file;
    }

    private static File u(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                return file;
            }
            throw new IllegalArgumentException("File input must be directory when it exists.");
        }
        file.mkdirs();
        if (file.isDirectory()) {
            return file;
        }
        String valueOf = String.valueOf(file.getAbsolutePath());
        throw new IOException(valueOf.length() != 0 ? "Unable to create directory: ".concat(valueOf) : new String("Unable to create directory: "));
    }

    private final File v() throws IOException {
        if (this.f612c == null) {
            Context context = this.f611b;
            if (context != null) {
                this.f612c = context.getFilesDir();
            } else {
                throw new IllegalStateException("context must be non-null to populate null filesDir");
            }
        }
        File file = new File(this.f612c, "splitcompat");
        u(file);
        return file;
    }

    private final File w() throws IOException {
        File file = new File(v(), Long.toString(this.f610a));
        u(file);
        return file;
    }

    private static String x(String str) {
        return String.valueOf(str).concat(".apk");
    }

    public final File a(String str) throws IOException {
        File file = new File(w(), "dex");
        u(file);
        File q10 = q(file, str);
        u(q10);
        return q10;
    }

    public final File b() throws IOException {
        File file = new File(w(), "unverified-splits");
        u(file);
        return file;
    }

    public final File c(String str, String str2) throws IOException {
        return q(s(str), str2);
    }

    public final File d() throws IOException {
        return new File(w(), "lock.tmp");
    }

    public final File e(String str) throws IOException {
        return q(b(), x(str));
    }

    public final File f(File file) throws IOException {
        return q(t(), file.getName());
    }

    public final File g(String str) throws IOException {
        return q(t(), x(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List h() throws IOException {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = r().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set i(String str) throws IOException {
        HashSet hashSet = new HashSet();
        File[] listFiles = s(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile()) {
                    hashSet.add(file);
                }
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set j() throws IOException {
        String name;
        File t10 = t();
        HashSet hashSet = new HashSet();
        File[] listFiles = t10.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile() && file.getName().endsWith(".apk") && p(file)) {
                    hashSet.add(new c(file, file.getName().substring(0, name.length() - 4)));
                }
            }
        }
        return hashSet;
    }

    public final void k() throws IOException {
        File v10 = v();
        String[] list = v10.list();
        if (list != null) {
            for (String str : list) {
                if (!str.equals(Long.toString(this.f610a))) {
                    File file = new File(v10, str);
                    String obj = file.toString();
                    long j10 = this.f610a;
                    StringBuilder sb2 = new StringBuilder(obj.length() + 118);
                    sb2.append("FileStorage: removing directory for different version code (directory = ");
                    sb2.append(obj);
                    sb2.append(", current version code = ");
                    sb2.append(j10);
                    sb2.append(")");
                    Log.d("SplitCompat", sb2.toString());
                    l(file);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(String str) throws IOException {
        l(s(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o(File file) throws IOException {
        b1.b(file.getParentFile().getParentFile().equals(r()), "File to remove is not a native library");
        l(file);
    }
}
