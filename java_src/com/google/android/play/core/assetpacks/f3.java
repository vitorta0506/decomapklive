package com.google.android.play.core.assetpacks;

import com.guochao.faceshow.utils.PushUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Properties;
/* loaded from: classes2.dex */
final class f3 {

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10214h = new com.google.android.play.core.internal.g("SliceMetadataManager");

    /* renamed from: b  reason: collision with root package name */
    private final e0 f10216b;

    /* renamed from: c  reason: collision with root package name */
    private final String f10217c;

    /* renamed from: d  reason: collision with root package name */
    private final int f10218d;

    /* renamed from: e  reason: collision with root package name */
    private final long f10219e;

    /* renamed from: f  reason: collision with root package name */
    private final String f10220f;

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f10215a = new byte[8192];

    /* renamed from: g  reason: collision with root package name */
    private int f10221g = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f3(e0 e0Var, String str, int i9, long j10, String str2) {
        this.f10216b = e0Var;
        this.f10217c = str;
        this.f10218d = i9;
        this.f10219e = j10;
        this.f10220f = str2;
    }

    private final File n() {
        File B = this.f10216b.B(this.f10217c, this.f10218d, this.f10219e, this.f10220f);
        if (!B.exists()) {
            B.mkdirs();
        }
        return B;
    }

    private final File o() throws IOException {
        File A = this.f10216b.A(this.f10217c, this.f10218d, this.f10219e, this.f10220f);
        A.getParentFile().mkdirs();
        A.createNewFile();
        return A;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() throws IOException {
        File A = this.f10216b.A(this.f10217c, this.f10218d, this.f10219e, this.f10220f);
        if (A.exists()) {
            FileInputStream fileInputStream = new FileInputStream(A);
            try {
                Properties properties = new Properties();
                properties.load(fileInputStream);
                fileInputStream.close();
                if (Integer.parseInt(properties.getProperty("fileStatus", PushUtils.CHAT_PUSH_TYPE)) == 4) {
                    return -1;
                }
                if (properties.getProperty("previousChunk") != null) {
                    return Integer.parseInt(properties.getProperty("previousChunk")) + 1;
                }
                throw new f1("Slice checkpoint file corrupt.");
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th2;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e3 b() throws IOException {
        File A = this.f10216b.A(this.f10217c, this.f10218d, this.f10219e, this.f10220f);
        if (A.exists()) {
            Properties properties = new Properties();
            FileInputStream fileInputStream = new FileInputStream(A);
            try {
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") != null && properties.getProperty("previousChunk") != null) {
                    try {
                        int parseInt = Integer.parseInt(properties.getProperty("fileStatus"));
                        String property = properties.getProperty("fileName");
                        long parseLong = Long.parseLong(properties.getProperty("fileOffset", PushUtils.CHAT_PUSH_TYPE));
                        long parseLong2 = Long.parseLong(properties.getProperty("remainingBytes", PushUtils.CHAT_PUSH_TYPE));
                        int parseInt2 = Integer.parseInt(properties.getProperty("previousChunk"));
                        this.f10221g = Integer.parseInt(properties.getProperty("metadataFileCounter", "0"));
                        return new l0(parseInt, property, parseLong, parseLong2, parseInt2);
                    } catch (NumberFormatException e10) {
                        throw new f1("Slice checkpoint file corrupt.", e10);
                    }
                }
                throw new f1("Slice checkpoint file corrupt.");
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th2;
            }
        }
        throw new f1("Slice checkpoint file does not exist.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File c() {
        return new File(n(), String.format("%s-NAM.dat", Integer.valueOf(this.f10221g)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(InputStream inputStream, long j10) throws IOException {
        int read;
        RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
        try {
            randomAccessFile.seek(j10);
            do {
                read = inputStream.read(this.f10215a);
                if (read > 0) {
                    randomAccessFile.write(this.f10215a, 0, read);
                }
            } while (read == 8192);
            randomAccessFile.close();
        } catch (Throwable th2) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(long j10, byte[] bArr, int i9, int i10) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
        try {
            randomAccessFile.seek(j10);
            randomAccessFile.write(bArr, i9, i10);
            randomAccessFile.close();
        } catch (Throwable th2) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(int i9) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "3");
        properties.put("fileOffset", String.valueOf(c().length()));
        properties.put("previousChunk", String.valueOf(i9));
        properties.put("metadataFileCounter", String.valueOf(this.f10221g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(String str, long j10, long j11, int i9) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "1");
        properties.put("fileName", str);
        properties.put("fileOffset", String.valueOf(j10));
        properties.put("remainingBytes", String.valueOf(j11));
        properties.put("previousChunk", String.valueOf(i9));
        properties.put("metadataFileCounter", String.valueOf(this.f10221g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h(byte[] bArr, int i9) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "2");
        properties.put("previousChunk", String.valueOf(i9));
        properties.put("metadataFileCounter", String.valueOf(this.f10221g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
            File z10 = this.f10216b.z(this.f10217c, this.f10218d, this.f10219e, this.f10220f);
            if (z10.exists()) {
                z10.delete();
            }
            fileOutputStream = new FileOutputStream(z10);
            try {
                fileOutputStream.write(bArr);
            } finally {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused) {
                }
            }
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(int i9) throws IOException {
        Properties properties = new Properties();
        properties.put("fileStatus", "4");
        properties.put("previousChunk", String.valueOf(i9));
        properties.put("metadataFileCounter", String.valueOf(this.f10221g));
        FileOutputStream fileOutputStream = new FileOutputStream(o());
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(byte[] bArr) throws IOException {
        this.f10221g++;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(n(), String.format("%s-LFH.dat", Integer.valueOf(this.f10221g))));
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (IOException e10) {
            throw new f1("Could not write metadata file.", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(byte[] bArr, InputStream inputStream) throws IOException {
        this.f10221g++;
        FileOutputStream fileOutputStream = new FileOutputStream(c());
        try {
            fileOutputStream.write(bArr);
            int read = inputStream.read(this.f10215a);
            while (read > 0) {
                fileOutputStream.write(this.f10215a, 0, read);
                read = inputStream.read(this.f10215a);
            }
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(byte[] bArr, int i9, int i10) throws IOException {
        this.f10221g++;
        FileOutputStream fileOutputStream = new FileOutputStream(c());
        try {
            fileOutputStream.write(bArr, 0, i10);
            fileOutputStream.close();
        } catch (Throwable th2) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m() {
        File A = this.f10216b.A(this.f10217c, this.f10218d, this.f10219e, this.f10220f);
        if (A.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(A);
                Properties properties = new Properties();
                properties.load(fileInputStream);
                fileInputStream.close();
                if (properties.getProperty("fileStatus") != null) {
                    return Integer.parseInt(properties.getProperty("fileStatus")) == 4;
                }
                f10214h.b("Slice checkpoint file corrupt while checking if extraction finished.", new Object[0]);
                return false;
            } catch (IOException e10) {
                f10214h.b("Could not read checkpoint while checking if extraction finished. %s", e10);
                return false;
            }
        }
        return false;
    }
}
