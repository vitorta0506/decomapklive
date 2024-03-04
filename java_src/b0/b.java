package b0;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f1093a;

    /* renamed from: b  reason: collision with root package name */
    private final Charset f1094b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f1095c;

    /* renamed from: d  reason: collision with root package name */
    private int f1096d;

    /* renamed from: e  reason: collision with root package name */
    private int f1097e;

    /* loaded from: classes.dex */
    class a extends ByteArrayOutputStream {
        a(int i9) {
            super(i9);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i9 = ((ByteArrayOutputStream) this).count;
            if (i9 > 0 && ((ByteArrayOutputStream) this).buf[i9 - 1] == 13) {
                i9--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i9, b.this.f1094b.name());
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void c() throws IOException {
        InputStream inputStream = this.f1093a;
        byte[] bArr = this.f1095c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f1096d = 0;
            this.f1097e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f1093a) {
            if (this.f1095c != null) {
                this.f1095c = null;
                this.f1093a.close();
            }
        }
    }

    public boolean e() {
        return this.f1097e == -1;
    }

    public String j() throws IOException {
        int i9;
        byte[] bArr;
        int i10;
        synchronized (this.f1093a) {
            if (this.f1095c != null) {
                if (this.f1096d >= this.f1097e) {
                    c();
                }
                for (int i11 = this.f1096d; i11 != this.f1097e; i11++) {
                    byte[] bArr2 = this.f1095c;
                    if (bArr2[i11] == 10) {
                        int i12 = this.f1096d;
                        if (i11 != i12) {
                            i10 = i11 - 1;
                            if (bArr2[i10] == 13) {
                                String str = new String(bArr2, i12, i10 - i12, this.f1094b.name());
                                this.f1096d = i11 + 1;
                                return str;
                            }
                        }
                        i10 = i11;
                        String str2 = new String(bArr2, i12, i10 - i12, this.f1094b.name());
                        this.f1096d = i11 + 1;
                        return str2;
                    }
                }
                a aVar = new a((this.f1097e - this.f1096d) + 80);
                loop1: while (true) {
                    byte[] bArr3 = this.f1095c;
                    int i13 = this.f1096d;
                    aVar.write(bArr3, i13, this.f1097e - i13);
                    this.f1097e = -1;
                    c();
                    i9 = this.f1096d;
                    while (i9 != this.f1097e) {
                        bArr = this.f1095c;
                        if (bArr[i9] == 10) {
                            break loop1;
                        }
                        i9++;
                    }
                }
                int i14 = this.f1096d;
                if (i9 != i14) {
                    aVar.write(bArr, i14, i9 - i14);
                }
                this.f1096d = i9 + 1;
                return aVar.toString();
            }
            throw new IOException("LineReader is closed");
        }
    }

    public b(InputStream inputStream, int i9, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i9 >= 0) {
            if (charset.equals(c.f1099a)) {
                this.f1093a = inputStream;
                this.f1094b = charset;
                this.f1095c = new byte[i9];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw new IllegalArgumentException("capacity <= 0");
    }
}
