package f2;

import c2.a;
import c2.m;
import c2.s;
import c2.v;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes.dex */
final class b extends c2.a {

    /* renamed from: f2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0421b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final v f39586a;

        /* renamed from: b  reason: collision with root package name */
        private final int f39587b;

        /* renamed from: c  reason: collision with root package name */
        private final s.a f39588c;

        private long c(m mVar) throws IOException {
            while (mVar.h() < mVar.a() - 6 && !s.h(mVar, this.f39586a, this.f39587b, this.f39588c)) {
                mVar.i(1);
            }
            if (mVar.h() >= mVar.a() - 6) {
                mVar.i((int) (mVar.a() - mVar.h()));
                return this.f39586a.f1564j;
            }
            return this.f39588c.f1551a;
        }

        @Override // c2.a.f
        public a.e a(m mVar, long j10) throws IOException {
            long position = mVar.getPosition();
            long c10 = c(mVar);
            long h10 = mVar.h();
            mVar.i(Math.max(6, this.f39586a.f1557c));
            long c11 = c(mVar);
            long h11 = mVar.h();
            if (c10 > j10 || c11 <= j10) {
                if (c11 <= j10) {
                    return a.e.f(c11, h11);
                }
                return a.e.d(c10, position);
            }
            return a.e.e(h10);
        }

        @Override // c2.a.f
        public /* synthetic */ void b() {
            c2.b.a(this);
        }

        private C0421b(v vVar, int i9) {
            this.f39586a = vVar;
            this.f39587b = i9;
            this.f39588c = new s.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final v vVar, int i9, long j10, long j11) {
        super(new a.d() { // from class: f2.a
            @Override // c2.a.d
            public final long a(long j12) {
                return v.this.i(j12);
            }
        }, new C0421b(vVar, i9), vVar.f(), 0L, vVar.f1564j, j10, j11, vVar.d(), Math.max(6, vVar.f1557c));
        Objects.requireNonNull(vVar);
    }
}
