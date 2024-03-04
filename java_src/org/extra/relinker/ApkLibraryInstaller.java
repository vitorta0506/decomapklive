package org.extra.relinker;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.extra.relinker.ReLinker;
/* loaded from: classes7.dex */
public class ApkLibraryInstaller implements ReLinker.LibraryInstaller {
    private static final int COPY_BUFFER_SIZE = 4096;
    private static final int MAX_TRIES = 5;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class ZipFileInZipEntry {
        public ZipEntry zipEntry;
        public ZipFile zipFile;

        public ZipFileInZipEntry(ZipFile zipFile, ZipEntry zipEntry) {
            this.zipFile = zipFile;
            this.zipEntry = zipEntry;
        }
    }

    private void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j10;
            }
            outputStream.write(bArr, 0, read);
            j10 += read;
        }
    }

    private ZipFileInZipEntry findAPKWithLibrary(Context context, String[] strArr, String str, ReLinkerInstance reLinkerInstance) {
        int i9;
        String[] sourceDirectories = sourceDirectories(context);
        int length = sourceDirectories.length;
        char c10 = 0;
        ZipFile zipFile = null;
        int i10 = 0;
        while (i10 < length) {
            String str2 = sourceDirectories[i10];
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                i9 = 5;
                if (i11 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i11 = i12;
                }
            }
            if (zipFile != null) {
                int i13 = 0;
                while (true) {
                    int i14 = i13 + 1;
                    if (i13 < i9) {
                        int length2 = strArr.length;
                        int i15 = 0;
                        while (i15 < length2) {
                            String str3 = "lib" + File.separatorChar + strArr[i15] + File.separatorChar + str;
                            Object[] objArr = new Object[2];
                            objArr[c10] = str3;
                            objArr[1] = str2;
                            reLinkerInstance.log("Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(str3);
                            if (entry != null) {
                                return new ZipFileInZipEntry(zipFile, entry);
                            }
                            i15++;
                            c10 = 0;
                        }
                        i13 = i14;
                        i9 = 5;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i10++;
            c10 = 0;
        }
        return null;
    }

    private String[] sourceDirectories(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr == null || strArr.length == 0) {
            return new String[]{applicationInfo.sourceDir};
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = applicationInfo.sourceDir;
        System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
        return strArr2;
    }

    @Override // org.extra.relinker.ReLinker.LibraryInstaller
    public void installLibrary(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance) {
        Closeable closeable;
        InputStream inputStream;
        long copy;
        ZipFileInZipEntry zipFileInZipEntry = null;
        Closeable closeable2 = null;
        try {
            ZipFileInZipEntry findAPKWithLibrary = findAPKWithLibrary(context, strArr, str, reLinkerInstance);
            try {
                if (findAPKWithLibrary == null) {
                    throw new MissingLibraryException(str);
                }
                int i9 = 0;
                while (true) {
                    int i10 = i9 + 1;
                    if (i9 < 5) {
                        reLinkerInstance.log("Found %s! Extracting...", str);
                        try {
                            if (file.exists() || file.createNewFile()) {
                                try {
                                    inputStream = findAPKWithLibrary.zipFile.getInputStream(findAPKWithLibrary.zipEntry);
                                    try {
                                        closeable = new FileOutputStream(file);
                                        try {
                                            copy = copy(inputStream, closeable);
                                            closeable.getFD().sync();
                                        } catch (FileNotFoundException unused) {
                                            closeSilently(inputStream);
                                            closeSilently(closeable);
                                            i9 = i10;
                                        } catch (IOException unused2) {
                                            closeSilently(inputStream);
                                            closeSilently(closeable);
                                            i9 = i10;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            closeable2 = inputStream;
                                            closeSilently(closeable2);
                                            closeSilently(closeable);
                                            throw th;
                                        }
                                    } catch (FileNotFoundException unused3) {
                                        closeable = null;
                                    } catch (IOException unused4) {
                                        closeable = null;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        closeable = null;
                                    }
                                } catch (FileNotFoundException unused5) {
                                    inputStream = null;
                                    closeable = null;
                                } catch (IOException unused6) {
                                    inputStream = null;
                                    closeable = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    closeable = null;
                                }
                                if (copy != file.length()) {
                                    closeSilently(inputStream);
                                    closeSilently(closeable);
                                } else {
                                    closeSilently(inputStream);
                                    closeSilently(closeable);
                                    file.setReadable(true, false);
                                    file.setExecutable(true, false);
                                    file.setWritable(true);
                                    try {
                                        ZipFile zipFile = findAPKWithLibrary.zipFile;
                                        if (zipFile != null) {
                                            zipFile.close();
                                            return;
                                        }
                                        return;
                                    } catch (IOException unused7) {
                                        return;
                                    }
                                }
                            }
                        } catch (IOException unused8) {
                        }
                        i9 = i10;
                    } else {
                        reLinkerInstance.log("FATAL! Couldn't extract the library from the APK!");
                        try {
                            ZipFile zipFile2 = findAPKWithLibrary.zipFile;
                            if (zipFile2 != null) {
                                zipFile2.close();
                                return;
                            }
                            return;
                        } catch (IOException unused9) {
                            return;
                        }
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                zipFileInZipEntry = findAPKWithLibrary;
                if (zipFileInZipEntry != null) {
                    try {
                        ZipFile zipFile3 = zipFileInZipEntry.zipFile;
                        if (zipFile3 != null) {
                            zipFile3.close();
                        }
                    } catch (IOException unused10) {
                    }
                }
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }
}
