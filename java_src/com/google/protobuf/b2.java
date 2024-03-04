package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class b2 extends ByteString.i {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f14860a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b2(ByteBuffer byteBuffer) {
        u0.b(byteBuffer, "buffer");
        this.f14860a = byteBuffer.slice().order(ByteOrder.nativeOrder());
    }

    private ByteBuffer f(int i9, int i10) {
        if (i9 >= this.f14860a.position() && i10 <= this.f14860a.limit() && i9 <= i10) {
            ByteBuffer slice = this.f14860a.slice();
            slice.position(i9 - this.f14860a.position());
            slice.limit(i10 - this.f14860a.position());
            return slice;
        }
        throw new IllegalArgumentException(String.format("Invalid indices [%d, %d]", Integer.valueOf(i9), Integer.valueOf(i10)));
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("NioByteString instances are not to be serialized directly");
    }

    private Object writeReplace() {
        return ByteString.copyFrom(this.f14860a.slice());
    }

    @Override // com.google.protobuf.ByteString
    public ByteBuffer asReadOnlyByteBuffer() {
        return this.f14860a.asReadOnlyBuffer();
    }

    @Override // com.google.protobuf.ByteString
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        return Collections.singletonList(asReadOnlyByteBuffer());
    }

    @Override // com.google.protobuf.ByteString
    public byte byteAt(int i9) {
        try {
            return this.f14860a.get(i9);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new ArrayIndexOutOfBoundsException(e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString.i
    public boolean c(ByteString byteString, int i9, int i10) {
        return substring(0, i10).equals(byteString.substring(i9, i10 + i9));
    }

    @Override // com.google.protobuf.ByteString
    public void copyTo(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f14860a.slice());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public void copyToInternal(byte[] bArr, int i9, int i10, int i11) {
        ByteBuffer slice = this.f14860a.slice();
        slice.position(i9);
        slice.get(bArr, i10, i11);
    }

    @Override // com.google.protobuf.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (size() != byteString.size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (obj instanceof b2) {
                return this.f14860a.equals(((b2) obj).f14860a);
            }
            if (obj instanceof m2) {
                return obj.equals(this);
            }
            return this.f14860a.equals(byteString.asReadOnlyByteBuffer());
        }
        return false;
    }

    @Override // com.google.protobuf.ByteString
    public byte internalByteAt(int i9) {
        return byteAt(i9);
    }

    @Override // com.google.protobuf.ByteString
    public boolean isValidUtf8() {
        return n3.r(this.f14860a);
    }

    @Override // com.google.protobuf.ByteString
    public p newCodedInput() {
        return p.l(this.f14860a, true);
    }

    @Override // com.google.protobuf.ByteString
    public InputStream newInput() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialHash(int i9, int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            i9 = (i9 * 31) + this.f14860a.get(i12);
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.protobuf.ByteString
    public int partialIsValidUtf8(int i9, int i10, int i11) {
        return n3.u(i9, this.f14860a, i10, i11 + i10);
    }

    @Override // com.google.protobuf.ByteString
    public int size() {
        return this.f14860a.remaining();
    }

    @Override // com.google.protobuf.ByteString
    public ByteString substring(int i9, int i10) {
        try {
            return new b2(f(i9, i10));
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new ArrayIndexOutOfBoundsException(e11.getMessage());
        }
    }

    @Override // com.google.protobuf.ByteString
    protected String toStringInternal(Charset charset) {
        byte[] byteArray;
        int i9;
        int length;
        if (this.f14860a.hasArray()) {
            byteArray = this.f14860a.array();
            i9 = this.f14860a.arrayOffset() + this.f14860a.position();
            length = this.f14860a.remaining();
        } else {
            byteArray = toByteArray();
            i9 = 0;
            length = byteArray.length;
        }
        return new String(byteArray, i9, length, charset);
    }

    @Override // com.google.protobuf.ByteString
    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeToInternal(OutputStream outputStream, int i9, int i10) throws IOException {
        if (this.f14860a.hasArray()) {
            outputStream.write(this.f14860a.array(), this.f14860a.arrayOffset() + this.f14860a.position() + i9, i10);
            return;
        }
        n.g(f(i9, i10 + i9), outputStream);
    }

    /* loaded from: classes3.dex */
    class a extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f14861a;

        a() {
            this.f14861a = b2.this.f14860a.slice();
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.f14861a.remaining();
        }

        @Override // java.io.InputStream
        public void mark(int i9) {
            this.f14861a.mark();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f14861a.hasRemaining()) {
                return this.f14861a.get() & UByte.MAX_VALUE;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public void reset() throws IOException {
            try {
                this.f14861a.reset();
            } catch (InvalidMarkException e10) {
                throw new IOException(e10);
            }
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i9, int i10) throws IOException {
            if (this.f14861a.hasRemaining()) {
                int min = Math.min(i10, this.f14861a.remaining());
                this.f14861a.get(bArr, i9, min);
                return min;
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.protobuf.ByteString
    public void writeTo(o oVar) throws IOException {
        oVar.a(this.f14860a.slice());
    }
}
