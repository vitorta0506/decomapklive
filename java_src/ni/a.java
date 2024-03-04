package ni;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.channels.FileChannel;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.apache.commons.io.FileExistsException;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final BigInteger f55369a;

    /* renamed from: b  reason: collision with root package name */
    public static final BigInteger f55370b;

    /* renamed from: c  reason: collision with root package name */
    public static final BigInteger f55371c;

    /* renamed from: d  reason: collision with root package name */
    public static final BigInteger f55372d;

    /* renamed from: e  reason: collision with root package name */
    public static final BigInteger f55373e;

    /* renamed from: f  reason: collision with root package name */
    public static final BigInteger f55374f;

    /* renamed from: g  reason: collision with root package name */
    public static final BigInteger f55375g;

    /* renamed from: h  reason: collision with root package name */
    public static final BigInteger f55376h;

    /* renamed from: i  reason: collision with root package name */
    public static final File[] f55377i;

    static {
        BigInteger valueOf = BigInteger.valueOf(1024L);
        f55369a = valueOf;
        BigInteger multiply = valueOf.multiply(valueOf);
        f55370b = multiply;
        BigInteger multiply2 = valueOf.multiply(multiply);
        f55371c = multiply2;
        BigInteger multiply3 = valueOf.multiply(multiply2);
        f55372d = multiply3;
        BigInteger multiply4 = valueOf.multiply(multiply3);
        f55373e = multiply4;
        f55374f = valueOf.multiply(multiply4);
        BigInteger multiply5 = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(LockFreeTaskQueueCore.FROZEN_MASK));
        f55375g = multiply5;
        f55376h = valueOf.multiply(multiply5);
        f55377i = new File[0];
    }

    private static void a(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            throw new IllegalArgumentException(file + " is not a directory");
        }
        throw new IllegalArgumentException(file + " does not exist");
    }

    private static void b(File file, File file2) throws FileNotFoundException {
        Objects.requireNonNull(file, "Source must not be null");
        Objects.requireNonNull(file2, "Destination must not be null");
        if (file.exists()) {
            return;
        }
        throw new FileNotFoundException("Source '" + file + "' does not exist");
    }

    public static void c(File file) throws IOException {
        IOException e10 = null;
        for (File file2 : r(file)) {
            try {
                j(file2);
            } catch (IOException e11) {
                e10 = e11;
            }
        }
        if (e10 != null) {
            throw e10;
        }
    }

    public static void d(File file, File file2) throws IOException {
        f(file, file2, true);
    }

    public static void e(File file, File file2, FileFilter fileFilter, boolean z10) throws IOException {
        b(file, file2);
        if (file.isDirectory()) {
            if (!file.getCanonicalPath().equals(file2.getCanonicalPath())) {
                ArrayList arrayList = null;
                if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
                    File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
                    if (listFiles != null && listFiles.length > 0) {
                        arrayList = new ArrayList(listFiles.length);
                        for (File file3 : listFiles) {
                            arrayList.add(new File(file2, file3.getName()).getCanonicalPath());
                        }
                    }
                }
                h(file, file2, fileFilter, z10, arrayList);
                return;
            }
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        }
        throw new IOException("Source '" + file + "' exists but is not a directory");
    }

    public static void f(File file, File file2, boolean z10) throws IOException {
        e(file, file2, null, z10);
    }

    public static void g(File file) throws IOException {
        if (file.exists()) {
            if (!l(file)) {
                c(file);
            }
            if (file.delete()) {
                return;
            }
            throw new IOException("Unable to delete directory " + file + ".");
        }
    }

    private static void h(File file, File file2, FileFilter fileFilter, boolean z10, List<String> list) throws IOException {
        File[] listFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        if (listFiles != null) {
            if (file2.exists()) {
                if (!file2.isDirectory()) {
                    throw new IOException("Destination '" + file2 + "' exists but is not a directory");
                }
            } else if (!file2.mkdirs() && !file2.isDirectory()) {
                throw new IOException("Destination '" + file2 + "' directory cannot be created");
            }
            if (file2.canWrite()) {
                for (File file3 : listFiles) {
                    File file4 = new File(file2, file3.getName());
                    if (list == null || !list.contains(file3.getCanonicalPath())) {
                        if (file3.isDirectory()) {
                            h(file3, file4, fileFilter, z10, list);
                        } else {
                            i(file3, file4, z10);
                        }
                    }
                }
                if (z10) {
                    file2.setLastModified(file.lastModified());
                    return;
                }
                return;
            }
            throw new IOException("Destination '" + file2 + "' cannot be written to");
        }
        throw new IOException("Failed to list contents of " + file);
    }

    private static void i(File file, File file2, boolean z10) throws IOException {
        if (file2.exists() && file2.isDirectory()) {
            throw new IOException("Destination '" + file2 + "' exists but is a directory");
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            FileChannel channel2 = fileOutputStream.getChannel();
            try {
                long size = channel.size();
                long j10 = 0;
                while (j10 < size) {
                    long j11 = size - j10;
                    long transferFrom = channel2.transferFrom(channel, j10, j11 > 31457280 ? 31457280L : j11);
                    if (transferFrom == 0) {
                        break;
                    }
                    j10 += transferFrom;
                }
                if (channel2 != null) {
                    channel2.close();
                }
                fileOutputStream.close();
                channel.close();
                fileInputStream.close();
                long length = file.length();
                long length2 = file2.length();
                if (length == length2) {
                    if (z10) {
                        file2.setLastModified(file.lastModified());
                        return;
                    }
                    return;
                }
                throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "' Expected length: " + length + " Actual: " + length2);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    if (channel2 != null) {
                        try {
                            channel2.close();
                        } catch (Throwable th4) {
                            th2.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th5) {
            try {
                throw th5;
            } catch (Throwable th6) {
                try {
                    fileInputStream.close();
                } catch (Throwable th7) {
                    th5.addSuppressed(th7);
                }
                throw th6;
            }
        }
    }

    public static void j(File file) throws IOException {
        if (file.isDirectory()) {
            g(file);
            return;
        }
        boolean exists = file.exists();
        if (file.delete()) {
            return;
        }
        if (!exists) {
            throw new FileNotFoundException("File does not exist: " + file);
        }
        throw new IOException("Unable to delete file: " + file);
    }

    public static boolean k(File file, long j10) {
        if (file != null) {
            return file.exists() && file.lastModified() > j10;
        }
        throw new IllegalArgumentException("No specified file");
    }

    public static boolean l(File file) throws IOException {
        Objects.requireNonNull(file, "File must not be null");
        return Files.isSymbolicLink(file.toPath());
    }

    public static void m(File file, File file2) throws IOException {
        Objects.requireNonNull(file, "Source must not be null");
        Objects.requireNonNull(file2, "Destination must not be null");
        if (file.exists()) {
            if (file.isDirectory()) {
                if (!file2.exists()) {
                    if (file.renameTo(file2)) {
                        return;
                    }
                    String canonicalPath = file2.getCanonicalPath();
                    if (!canonicalPath.startsWith(file.getCanonicalPath() + File.separator)) {
                        d(file, file2);
                        g(file);
                        if (file.exists()) {
                            throw new IOException("Failed to delete original directory '" + file + "' after copy to '" + file2 + "'");
                        }
                        return;
                    }
                    throw new IOException("Cannot move directory: " + file + " to a subdirectory of itself: " + file2);
                }
                throw new FileExistsException("Destination '" + file2 + "' already exists");
            }
            throw new IOException("Source '" + file + "' is not a directory");
        }
        throw new FileNotFoundException("Source '" + file + "' does not exist");
    }

    public static void n(File file, File file2, boolean z10) throws IOException {
        Objects.requireNonNull(file, "Source must not be null");
        Objects.requireNonNull(file2, "Destination directory must not be null");
        if (!file2.exists() && z10) {
            file2.mkdirs();
        }
        if (file2.exists()) {
            if (file2.isDirectory()) {
                m(file, new File(file2, file.getName()));
                return;
            }
            throw new IOException("Destination '" + file2 + "' is not a directory");
        }
        throw new FileNotFoundException("Destination directory '" + file2 + "' does not exist [createDestDir=" + z10 + "]");
    }

    private static long o(File file) {
        if (file.isDirectory()) {
            return q(file);
        }
        return file.length();
    }

    public static long p(File file) {
        a(file);
        return q(file);
    }

    private static long q(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return 0L;
        }
        long j10 = 0;
        for (File file2 : listFiles) {
            try {
                if (!l(file2)) {
                    j10 += o(file2);
                    if (j10 < 0) {
                        break;
                    }
                } else {
                    continue;
                }
            } catch (IOException unused) {
            }
        }
        return j10;
    }

    private static File[] r(File file) throws IOException {
        if (file.exists()) {
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    return listFiles;
                }
                throw new IOException("Failed to list contents of " + file);
            }
            throw new IllegalArgumentException(file + " is not a directory");
        }
        throw new IllegalArgumentException(file + " does not exist");
    }
}
