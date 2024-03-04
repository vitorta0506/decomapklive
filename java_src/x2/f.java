package x2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
/* loaded from: classes.dex */
public final class f implements i {

    /* renamed from: a  reason: collision with root package name */
    private final c f59584a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final k f59585b = new k();

    /* renamed from: c  reason: collision with root package name */
    private final Deque<l> f59586c = new ArrayDeque();

    /* renamed from: d  reason: collision with root package name */
    private int f59587d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f59588e;

    /* loaded from: classes.dex */
    class a extends l {
        a() {
        }

        @Override // b2.f
        public void p() {
            f.this.h(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements h {

        /* renamed from: a  reason: collision with root package name */
        private final long f59590a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<x2.b> f59591b;

        public b(long j10, ImmutableList<x2.b> immutableList) {
            this.f59590a = j10;
            this.f59591b = immutableList;
        }

        @Override // x2.h
        public int a(long j10) {
            return this.f59590a > j10 ? 0 : -1;
        }

        @Override // x2.h
        public List<x2.b> b(long j10) {
            return j10 >= this.f59590a ? this.f59591b : ImmutableList.of();
        }

        @Override // x2.h
        public long c(int i9) {
            com.google.android.exoplayer2.util.a.a(i9 == 0);
            return this.f59590a;
        }

        @Override // x2.h
        public int d() {
            return 1;
        }
    }

    public f() {
        for (int i9 = 0; i9 < 2; i9++) {
            this.f59586c.addFirst(new a());
        }
        this.f59587d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(l lVar) {
        com.google.android.exoplayer2.util.a.f(this.f59586c.size() < 2);
        com.google.android.exoplayer2.util.a.a(!this.f59586c.contains(lVar));
        lVar.f();
        this.f59586c.addFirst(lVar);
    }

    @Override // x2.i
    public void a(long j10) {
    }

    @Override // b2.d
    @Nullable
    /* renamed from: e */
    public k c() throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.f(!this.f59588e);
        if (this.f59587d != 0) {
            return null;
        }
        this.f59587d = 1;
        return this.f59585b;
    }

    @Override // b2.d
    @Nullable
    /* renamed from: f */
    public l dequeueOutputBuffer() throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.f(!this.f59588e);
        if (this.f59587d != 2 || this.f59586c.isEmpty()) {
            return null;
        }
        l removeFirst = this.f59586c.removeFirst();
        if (this.f59585b.k()) {
            removeFirst.e(4);
        } else {
            k kVar = this.f59585b;
            removeFirst.q(this.f59585b.f5710e, new b(kVar.f5710e, this.f59584a.a(((ByteBuffer) com.google.android.exoplayer2.util.a.e(kVar.f5708c)).array())), 0L);
        }
        this.f59585b.f();
        this.f59587d = 0;
        return removeFirst;
    }

    @Override // b2.d
    public void flush() {
        com.google.android.exoplayer2.util.a.f(!this.f59588e);
        this.f59585b.f();
        this.f59587d = 0;
    }

    @Override // b2.d
    /* renamed from: g */
    public void b(k kVar) throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.f(!this.f59588e);
        com.google.android.exoplayer2.util.a.f(this.f59587d == 1);
        com.google.android.exoplayer2.util.a.a(this.f59585b == kVar);
        this.f59587d = 2;
    }

    @Override // b2.d
    public void release() {
        this.f59588e = true;
    }
}
