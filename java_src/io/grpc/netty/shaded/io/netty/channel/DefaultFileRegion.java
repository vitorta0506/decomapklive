package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes5.dex */
public class DefaultFileRegion extends io.grpc.netty.shaded.io.netty.util.b implements p0 {

    /* renamed from: f  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f43436f = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(DefaultFileRegion.class);

    /* renamed from: a  reason: collision with root package name */
    private final File f43437a;

    /* renamed from: b  reason: collision with root package name */
    private final long f43438b;

    /* renamed from: c  reason: collision with root package name */
    private final long f43439c;

    /* renamed from: d  reason: collision with root package name */
    private long f43440d;

    /* renamed from: e  reason: collision with root package name */
    private FileChannel f43441e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(DefaultFileRegion defaultFileRegion, long j10) throws IOException {
        long size = defaultFileRegion.f43441e.size();
        if (defaultFileRegion.f43438b + (defaultFileRegion.f43439c - j10) + j10 <= size) {
            return;
        }
        throw new IOException("Underlying file size " + size + " smaller then requested count " + defaultFileRegion.f43439c);
    }

    public boolean a() {
        return this.f43441e != null;
    }

    public void b() throws IOException {
        if (a() || refCnt() <= 0) {
            return;
        }
        this.f43441e = new RandomAccessFile(this.f43437a, "r").getChannel();
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p0
    public long count() {
        return this.f43439c;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p0
    public long d() {
        return this.f43440d;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    protected void deallocate() {
        FileChannel fileChannel = this.f43441e;
        if (fileChannel == null) {
            return;
        }
        this.f43441e = null;
        try {
            fileChannel.close();
        } catch (IOException e10) {
            f43436f.warn("Failed to close a file.", (Throwable) e10);
        }
    }

    public long e() {
        return this.f43438b;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.p0
    public long g(WritableByteChannel writableByteChannel, long j10) throws IOException {
        long j11 = this.f43439c - j10;
        int i9 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1));
        if (i9 < 0 || j10 < 0) {
            throw new IllegalArgumentException("position out of range: " + j10 + " (expected: 0 - " + (this.f43439c - 1) + ')');
        } else if (i9 == 0) {
            return 0L;
        } else {
            if (refCnt() != 0) {
                b();
                long transferTo = this.f43441e.transferTo(this.f43438b + j10, j11, writableByteChannel);
                int i10 = (transferTo > 0L ? 1 : (transferTo == 0L ? 0 : -1));
                if (i10 > 0) {
                    this.f43440d += transferTo;
                } else if (i10 == 0) {
                    k(this, j10);
                }
                return transferTo;
            }
            throw new IllegalReferenceCountException(0);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: h */
    public p0 retain(int i9) {
        super.retain(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b
    /* renamed from: i */
    public p0 touch() {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    /* renamed from: j */
    public p0 touch(Object obj) {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.b, io.grpc.netty.shaded.io.netty.util.s
    public p0 retain() {
        super.retain();
        return this;
    }
}
