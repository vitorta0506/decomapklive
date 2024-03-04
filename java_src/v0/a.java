package v0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<byte[]> f58594a = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f58597a;

        /* renamed from: b  reason: collision with root package name */
        final int f58598b;

        /* renamed from: c  reason: collision with root package name */
        final byte[] f58599c;

        b(@NonNull byte[] bArr, int i9, int i10) {
            this.f58599c = bArr;
            this.f58597a = i9;
            this.f58598b = i10;
        }
    }

    @NonNull
    public static ByteBuffer a(@NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length <= 2147483647L) {
                if (length != 0) {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        fileChannel = randomAccessFile.getChannel();
                        MappedByteBuffer load = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                        try {
                            fileChannel.close();
                        } catch (IOException unused) {
                        }
                        try {
                            randomAccessFile.close();
                        } catch (IOException unused2) {
                        }
                        return load;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileChannel != null) {
                            try {
                                fileChannel.close();
                            } catch (IOException unused3) {
                            }
                        }
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused4) {
                            }
                        }
                        throw th;
                    }
                }
                throw new IOException("File unsuitable for memory mapping");
            }
            throw new IOException("File too large to map into memory");
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static ByteBuffer b(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f58594a.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(andSet);
            if (read >= 0) {
                byteArrayOutputStream.write(andSet, 0, read);
            } else {
                f58594a.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return d(ByteBuffer.allocateDirect(byteArray.length).put(byteArray));
            }
        }
    }

    @Nullable
    private static b c(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    public static ByteBuffer d(ByteBuffer byteBuffer) {
        return (ByteBuffer) byteBuffer.position(0);
    }

    @NonNull
    public static byte[] e(@NonNull ByteBuffer byteBuffer) {
        b c10 = c(byteBuffer);
        if (c10 != null && c10.f58597a == 0 && c10.f58598b == c10.f58599c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        d(asReadOnlyBuffer);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void f(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        d(byteBuffer);
        FileChannel fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
                fileChannel.write(byteBuffer);
                fileChannel.force(false);
                fileChannel.close();
                randomAccessFile.close();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static InputStream g(@NonNull ByteBuffer byteBuffer) {
        return new C0661a(byteBuffer);
    }

    /* renamed from: v0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0661a extends InputStream {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f58595a;

        /* renamed from: b  reason: collision with root package name */
        private int f58596b = -1;

        C0661a(@NonNull ByteBuffer byteBuffer) {
            this.f58595a = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f58595a.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i9) {
            this.f58596b = this.f58595a.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f58595a.hasRemaining()) {
                return this.f58595a.get() & UByte.MAX_VALUE;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int i9 = this.f58596b;
            if (i9 != -1) {
                this.f58595a.position(i9);
            } else {
                throw new IOException("Cannot reset to unset mark position");
            }
        }

        @Override // java.io.InputStream
        public long skip(long j10) {
            if (this.f58595a.hasRemaining()) {
                long min = Math.min(j10, available());
                ByteBuffer byteBuffer = this.f58595a;
                byteBuffer.position((int) (byteBuffer.position() + min));
                return min;
            }
            return -1L;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i9, int i10) {
            if (this.f58595a.hasRemaining()) {
                int min = Math.min(i10, available());
                this.f58595a.get(bArr, i9, min);
                return min;
            }
            return -1;
        }
    }
}
