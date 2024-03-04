package y2;

import androidx.annotation.Nullable;
import b2.f;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
import x2.h;
import x2.i;
import x2.k;
import x2.l;
import y2.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class e implements i {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<b> f60097a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<l> f60098b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityQueue<b> f60099c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f60100d;

    /* renamed from: e  reason: collision with root package name */
    private long f60101e;

    /* renamed from: f  reason: collision with root package name */
    private long f60102f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends k implements Comparable<b> {

        /* renamed from: j  reason: collision with root package name */
        private long f60103j;

        private b() {
        }

        @Override // java.lang.Comparable
        /* renamed from: w */
        public int compareTo(b bVar) {
            if (k() != bVar.k()) {
                return k() ? 1 : -1;
            }
            long j10 = this.f5710e - bVar.f5710e;
            if (j10 == 0) {
                j10 = this.f60103j - bVar.f60103j;
                if (j10 == 0) {
                    return 0;
                }
            }
            return j10 > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends l {

        /* renamed from: f  reason: collision with root package name */
        private f.a<c> f60104f;

        public c(f.a<c> aVar) {
            this.f60104f = aVar;
        }

        @Override // b2.f
        public final void p() {
            this.f60104f.a(this);
        }
    }

    public e() {
        for (int i9 = 0; i9 < 10; i9++) {
            this.f60097a.add(new b());
        }
        this.f60098b = new ArrayDeque<>();
        for (int i10 = 0; i10 < 2; i10++) {
            this.f60098b.add(new c(new f.a() { // from class: y2.d
                @Override // b2.f.a
                public final void a(b2.f fVar) {
                    e.this.m((e.c) fVar);
                }
            }));
        }
        this.f60099c = new PriorityQueue<>();
    }

    private void l(b bVar) {
        bVar.f();
        this.f60097a.add(bVar);
    }

    @Override // x2.i
    public void a(long j10) {
        this.f60101e = j10;
    }

    protected abstract h d();

    protected abstract void e(k kVar);

    @Override // b2.d
    @Nullable
    /* renamed from: f */
    public k c() throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.f(this.f60100d == null);
        if (this.f60097a.isEmpty()) {
            return null;
        }
        b pollFirst = this.f60097a.pollFirst();
        this.f60100d = pollFirst;
        return pollFirst;
    }

    @Override // b2.d
    public void flush() {
        this.f60102f = 0L;
        this.f60101e = 0L;
        while (!this.f60099c.isEmpty()) {
            l((b) l0.j(this.f60099c.poll()));
        }
        b bVar = this.f60100d;
        if (bVar != null) {
            l(bVar);
            this.f60100d = null;
        }
    }

    @Override // b2.d
    @Nullable
    /* renamed from: g */
    public l dequeueOutputBuffer() throws SubtitleDecoderException {
        if (this.f60098b.isEmpty()) {
            return null;
        }
        while (!this.f60099c.isEmpty() && ((b) l0.j(this.f60099c.peek())).f5710e <= this.f60101e) {
            b bVar = (b) l0.j(this.f60099c.poll());
            if (bVar.k()) {
                l lVar = (l) l0.j(this.f60098b.pollFirst());
                lVar.e(4);
                l(bVar);
                return lVar;
            }
            e(bVar);
            if (j()) {
                h d10 = d();
                l lVar2 = (l) l0.j(this.f60098b.pollFirst());
                lVar2.q(bVar.f5710e, d10, Long.MAX_VALUE);
                l(bVar);
                return lVar2;
            }
            l(bVar);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final l h() {
        return this.f60098b.pollFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long i() {
        return this.f60101e;
    }

    protected abstract boolean j();

    @Override // b2.d
    /* renamed from: k */
    public void b(k kVar) throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.a(kVar == this.f60100d);
        b bVar = (b) kVar;
        if (bVar.j()) {
            l(bVar);
        } else {
            long j10 = this.f60102f;
            this.f60102f = 1 + j10;
            bVar.f60103j = j10;
            this.f60099c.add(bVar);
        }
        this.f60100d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(l lVar) {
        lVar.f();
        this.f60098b.add(lVar);
    }

    @Override // b2.d
    public void release() {
    }
}
