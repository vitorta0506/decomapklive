package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.channel.unix.Buffer;
import io.grpc.netty.shaded.io.netty.util.internal.t;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public final class g {

    /* renamed from: d  reason: collision with root package name */
    private static final int f43670d = Native.sizeofEpollEvent();

    /* renamed from: e  reason: collision with root package name */
    private static final int f43671e = Native.offsetofEpollData();

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer f43672a;

    /* renamed from: b  reason: collision with root package name */
    private long f43673b;

    /* renamed from: c  reason: collision with root package name */
    private int f43674c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(int i9) {
        if (i9 >= 1) {
            this.f43674c = i9;
            ByteBuffer b10 = Buffer.b(a(i9));
            this.f43672a = b10;
            this.f43673b = Buffer.d(b10);
            return;
        }
        throw new IllegalArgumentException("length must be >= 1 but was " + i9);
    }

    private static int a(int i9) {
        return i9 * f43670d;
    }

    private int e(int i9, int i10) {
        if (t.T()) {
            return t.E(this.f43673b + (i9 * f43670d) + i10);
        }
        return this.f43672a.getInt((i9 * f43670d) + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i9) {
        return e(i9, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i9) {
        return e(i9, f43671e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        Buffer.c(this.f43672a);
        this.f43673b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        int i9 = this.f43674c << 1;
        this.f43674c = i9;
        ByteBuffer b10 = Buffer.b(a(i9));
        Buffer.c(this.f43672a);
        this.f43672a = b10;
        this.f43673b = Buffer.d(b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g() {
        return this.f43674c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long h() {
        return this.f43673b;
    }
}
