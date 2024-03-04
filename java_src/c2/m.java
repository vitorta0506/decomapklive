package c2;

import java.io.IOException;
/* loaded from: classes.dex */
public interface m extends j3.f {
    long a();

    boolean d(byte[] bArr, int i9, int i10, boolean z10) throws IOException;

    void f();

    boolean g(byte[] bArr, int i9, int i10, boolean z10) throws IOException;

    long getPosition();

    long h();

    void i(int i9) throws IOException;

    int j(byte[] bArr, int i9, int i10) throws IOException;

    void k(int i9) throws IOException;

    boolean l(int i9, boolean z10) throws IOException;

    void m(byte[] bArr, int i9, int i10) throws IOException;

    @Override // j3.f
    int read(byte[] bArr, int i9, int i10) throws IOException;

    void readFully(byte[] bArr, int i9, int i10) throws IOException;

    int skip(int i9) throws IOException;
}
