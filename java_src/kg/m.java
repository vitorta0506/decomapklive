package kg;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import kotlin.UShort;
/* loaded from: classes5.dex */
public class m extends InputStream implements DataInput {

    /* renamed from: a  reason: collision with root package name */
    private final j f53825a;

    /* renamed from: b  reason: collision with root package name */
    private final int f53826b;

    /* renamed from: c  reason: collision with root package name */
    private final int f53827c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f53828d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f53829e;

    /* renamed from: f  reason: collision with root package name */
    private StringBuilder f53830f;

    public m(j jVar, boolean z10) {
        this(jVar, jVar.P1(), z10);
    }

    private void a(int i9) throws IOException {
        if (i9 >= 0) {
            if (i9 <= available()) {
                return;
            }
            throw new EOFException("fieldSize is too long! Length is " + i9 + ", but maximum is " + available());
        }
        throw new IndexOutOfBoundsException("fieldSize cannot be a negative number");
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f53827c - this.f53825a.Q1();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            super.close();
        } finally {
            if (this.f53829e && !this.f53828d) {
                this.f53828d = true;
                this.f53825a.release();
            }
        }
    }

    @Override // java.io.InputStream
    public void mark(int i9) {
        this.f53825a.l1();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (available() == 0) {
            return -1;
        }
        return this.f53825a.x1() & UByte.MAX_VALUE;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        a(1);
        return read() != 0;
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        if (available() != 0) {
            return this.f53825a.x1();
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        return (char) readShort();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        a(4);
        return this.f53825a.E1();
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        int available = available();
        if (available == 0) {
            return null;
        }
        StringBuilder sb2 = this.f53830f;
        if (sb2 != null) {
            sb2.setLength(0);
        }
        while (true) {
            short L1 = this.f53825a.L1();
            available--;
            if (L1 == 10) {
                break;
            } else if (L1 != 13) {
                if (this.f53830f == null) {
                    this.f53830f = new StringBuilder();
                }
                this.f53830f.append((char) L1);
                if (available <= 0) {
                    break;
                }
            } else if (available > 0) {
                j jVar = this.f53825a;
                if (((char) jVar.R0(jVar.Q1())) == '\n') {
                    this.f53825a.l2(1);
                }
            }
        }
        StringBuilder sb3 = this.f53830f;
        return (sb3 == null || sb3.length() <= 0) ? "" : this.f53830f.toString();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        a(8);
        return this.f53825a.G1();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        a(2);
        return this.f53825a.J1();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return DataInputStream.readUTF(this);
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        return readByte() & UByte.MAX_VALUE;
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        return readShort() & UShort.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        this.f53825a.S1();
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        int skipBytes;
        if (j10 > 2147483647L) {
            skipBytes = skipBytes(Integer.MAX_VALUE);
        } else {
            skipBytes = skipBytes((int) j10);
        }
        return skipBytes;
    }

    @Override // java.io.DataInput
    public int skipBytes(int i9) throws IOException {
        int min = Math.min(available(), i9);
        this.f53825a.l2(min);
        return min;
    }

    public m(j jVar, int i9, boolean z10) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "buffer");
        if (i9 < 0) {
            if (z10) {
                jVar.release();
            }
            io.grpc.netty.shaded.io.netty.util.internal.s.n(i9, "length");
        }
        if (i9 > jVar.P1()) {
            if (z10) {
                jVar.release();
            }
            throw new IndexOutOfBoundsException("Too many bytes to be read - Needs " + i9 + ", maximum is " + jVar.P1());
        }
        this.f53829e = z10;
        this.f53825a = jVar;
        int Q1 = jVar.Q1();
        this.f53826b = Q1;
        this.f53827c = Q1 + i9;
        jVar.l1();
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i9, int i10) throws IOException {
        a(i10);
        this.f53825a.D1(bArr, i9, i10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        int available = available();
        if (available == 0) {
            return -1;
        }
        int min = Math.min(available, i10);
        this.f53825a.D1(bArr, i9, min);
        return min;
    }
}
