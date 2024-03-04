package io.grpc.netty.shaded.io.netty.channel.unix;

import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes5.dex */
public class FileDescriptor {

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater<FileDescriptor> f43813c = AtomicIntegerFieldUpdater.newUpdater(FileDescriptor.class, "a");

    /* renamed from: a  reason: collision with root package name */
    volatile int f43814a;

    /* renamed from: b  reason: collision with root package name */
    final int f43815b;

    public FileDescriptor(int i9) {
        s.n(i9, "fd");
        this.f43815b = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i9) {
        return i9 | 2;
    }

    private static native int close(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(int i9) {
        return (i9 & 1) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(int i9) {
        return (i9 & 2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(int i9) {
        return (i9 & 4) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i9) {
        return i9 | 4;
    }

    private static native int read(int i9, ByteBuffer byteBuffer, int i10, int i11);

    private static native int readAddress(int i9, long j10, int i10, int i11);

    private static native int write(int i9, ByteBuffer byteBuffer, int i10, int i11);

    private static native int writeAddress(int i9, long j10, int i10, int i11);

    private static native long writev(int i9, ByteBuffer[] byteBufferArr, int i10, int i11, long j10);

    private static native long writevAddresses(int i9, long j10, int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(int i9, int i10) {
        return f43813c.compareAndSet(this, i9, i10);
    }

    public void b() throws IOException {
        int close;
        if (i() && (close = close(this.f43815b)) < 0) {
            throw Errors.e("close", close);
        }
    }

    public final int d() {
        return this.f43815b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FileDescriptor) && this.f43815b == ((FileDescriptor) obj).f43815b;
    }

    public boolean g() {
        return !e(this.f43814a);
    }

    public int hashCode() {
        return this.f43815b;
    }

    protected boolean i() {
        int i9;
        do {
            i9 = this.f43814a;
            if (e(i9)) {
                return false;
            }
        } while (!a(i9, i9 | 7));
        return true;
    }

    public final int k(ByteBuffer byteBuffer, int i9, int i10) throws IOException {
        int read = read(this.f43815b, byteBuffer, i9, i10);
        if (read > 0) {
            return read;
        }
        if (read == 0) {
            return -1;
        }
        return Errors.c("read", read);
    }

    public final int l(long j10, int i9, int i10) throws IOException {
        int readAddress = readAddress(this.f43815b, j10, i9, i10);
        if (readAddress > 0) {
            return readAddress;
        }
        if (readAddress == 0) {
            return -1;
        }
        return Errors.c("readAddress", readAddress);
    }

    public final int m(ByteBuffer byteBuffer, int i9, int i10) throws IOException {
        int write = write(this.f43815b, byteBuffer, i9, i10);
        return write >= 0 ? write : Errors.c("write", write);
    }

    public final int n(long j10, int i9, int i10) throws IOException {
        int writeAddress = writeAddress(this.f43815b, j10, i9, i10);
        return writeAddress >= 0 ? writeAddress : Errors.c("writeAddress", writeAddress);
    }

    public final long o(ByteBuffer[] byteBufferArr, int i9, int i10, long j10) throws IOException {
        long writev = writev(this.f43815b, byteBufferArr, i9, Math.min(b.f43829a, i10), j10);
        return writev >= 0 ? writev : Errors.c("writev", (int) writev);
    }

    public final long p(long j10, int i9) throws IOException {
        long writevAddresses = writevAddresses(this.f43815b, j10, i9);
        return writevAddresses >= 0 ? writevAddresses : Errors.c("writevAddresses", (int) writevAddresses);
    }

    public String toString() {
        return "FileDescriptor{fd=" + this.f43815b + '}';
    }
}
