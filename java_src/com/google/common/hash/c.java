package com.google.common.hash;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
abstract class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f13518a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13519b;

    /* renamed from: c  reason: collision with root package name */
    private final int f13520c;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(int i9) {
        this(i9, i9);
    }

    private void d() {
        l.a(this.f13518a);
        while (this.f13518a.remaining() >= this.f13520c) {
            e(this.f13518a);
        }
        this.f13518a.compact();
    }

    @Override // com.google.common.hash.j
    public final h b() {
        d();
        l.a(this.f13518a);
        if (this.f13518a.remaining() > 0) {
            f(this.f13518a);
            ByteBuffer byteBuffer = this.f13518a;
            l.b(byteBuffer, byteBuffer.limit());
        }
        return c();
    }

    protected abstract h c();

    protected abstract void e(ByteBuffer byteBuffer);

    protected abstract void f(ByteBuffer byteBuffer);

    protected c(int i9, int i10) {
        com.google.common.base.o.d(i10 % i9 == 0);
        this.f13518a = ByteBuffer.allocate(i10 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f13519b = i10;
        this.f13520c = i9;
    }
}
