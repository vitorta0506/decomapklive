package j3;

import android.os.Handler;
import androidx.annotation.Nullable;
import j3.d;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public interface d {

    /* loaded from: classes2.dex */
    public interface a {

        /* renamed from: j3.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0535a {

            /* renamed from: a  reason: collision with root package name */
            private final CopyOnWriteArrayList<C0536a> f53013a = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: j3.d$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0536a {

                /* renamed from: a  reason: collision with root package name */
                private final Handler f53014a;

                /* renamed from: b  reason: collision with root package name */
                private final a f53015b;

                /* renamed from: c  reason: collision with root package name */
                private boolean f53016c;

                public C0536a(Handler handler, a aVar) {
                    this.f53014a = handler;
                    this.f53015b = aVar;
                }

                public void d() {
                    this.f53016c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0536a c0536a, int i9, long j10, long j11) {
                c0536a.f53015b.H(i9, j10, j11);
            }

            public void b(Handler handler, a aVar) {
                com.google.android.exoplayer2.util.a.e(handler);
                com.google.android.exoplayer2.util.a.e(aVar);
                e(aVar);
                this.f53013a.add(new C0536a(handler, aVar));
            }

            public void c(final int i9, final long j10, final long j11) {
                Iterator<C0536a> it = this.f53013a.iterator();
                while (it.hasNext()) {
                    final C0536a next = it.next();
                    if (!next.f53016c) {
                        next.f53014a.post(new Runnable() { // from class: j3.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                d.a.C0535a.d(d.a.C0535a.C0536a.this, i9, j10, j11);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                Iterator<C0536a> it = this.f53013a.iterator();
                while (it.hasNext()) {
                    C0536a next = it.next();
                    if (next.f53015b == aVar) {
                        next.d();
                        this.f53013a.remove(next);
                    }
                }
            }
        }

        void H(int i9, long j10, long j11);
    }

    @Nullable
    b0 c();

    void f(Handler handler, a aVar);

    void g(a aVar);
}
