package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import b2.a;
import b2.c;
import com.google.android.exoplayer2.i1;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class DecoderInputBuffer extends a {

    /* renamed from: b  reason: collision with root package name */
    public final c f5707b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f5708c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f5709d;

    /* renamed from: e  reason: collision with root package name */
    public long f5710e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f5711f;

    /* renamed from: g  reason: collision with root package name */
    private final int f5712g;

    /* renamed from: h  reason: collision with root package name */
    private final int f5713h;

    /* loaded from: classes.dex */
    public static final class InsufficientCapacityException extends IllegalStateException {
        public final int currentCapacity;
        public final int requiredCapacity;

        public InsufficientCapacityException(int i9, int i10) {
            super("Buffer too small (" + i9 + " < " + i10 + ")");
            this.currentCapacity = i9;
            this.requiredCapacity = i10;
        }
    }

    static {
        i1.a("goog.exo.decoder");
    }

    public DecoderInputBuffer(int i9) {
        this(i9, 0);
    }

    private ByteBuffer p(int i9) {
        int i10 = this.f5712g;
        if (i10 == 1) {
            return ByteBuffer.allocate(i9);
        }
        if (i10 == 2) {
            return ByteBuffer.allocateDirect(i9);
        }
        ByteBuffer byteBuffer = this.f5708c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i9);
    }

    public static DecoderInputBuffer t() {
        return new DecoderInputBuffer(0);
    }

    @Override // b2.a
    public void f() {
        super.f();
        ByteBuffer byteBuffer = this.f5708c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f5711f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f5709d = false;
    }

    public void q(int i9) {
        int i10 = i9 + this.f5713h;
        ByteBuffer byteBuffer = this.f5708c;
        if (byteBuffer == null) {
            this.f5708c = p(i10);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i11 = i10 + position;
        if (capacity >= i11) {
            this.f5708c = byteBuffer;
            return;
        }
        ByteBuffer p10 = p(i11);
        p10.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            p10.put(byteBuffer);
        }
        this.f5708c = p10;
    }

    public final void r() {
        ByteBuffer byteBuffer = this.f5708c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f5711f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean s() {
        return h(BasicMeasure.EXACTLY);
    }

    public void u(int i9) {
        ByteBuffer byteBuffer = this.f5711f;
        if (byteBuffer != null && byteBuffer.capacity() >= i9) {
            this.f5711f.clear();
        } else {
            this.f5711f = ByteBuffer.allocate(i9);
        }
    }

    public DecoderInputBuffer(int i9, int i10) {
        this.f5707b = new c();
        this.f5712g = i9;
        this.f5713h = i10;
    }
}
