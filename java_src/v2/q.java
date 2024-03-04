package v2;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.s1;
import java.io.IOException;
/* loaded from: classes.dex */
public interface q {

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    public static final class b extends o {
        public b(Object obj) {
            super(obj);
        }

        public b c(Object obj) {
            return new b(super.a(obj));
        }

        public b(Object obj, long j10) {
            super(obj, j10);
        }

        public b(Object obj, long j10, int i9) {
            super(obj, j10, i9);
        }

        public b(Object obj, int i9, int i10, long j10) {
            super(obj, i9, i10, j10);
        }

        public b(o oVar) {
            super(oVar);
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void a(q qVar, i3 i3Var);
    }

    void a(c cVar);

    s1 b();

    void c(c cVar);

    void d(n nVar);

    void e(Handler handler, w wVar);

    void g(Handler handler, com.google.android.exoplayer2.drm.s sVar);

    n h(b bVar, j3.b bVar2, long j10);

    void i(com.google.android.exoplayer2.drm.s sVar);

    void j() throws IOException;

    void k(c cVar, @Nullable j3.b0 b0Var, a2.s1 s1Var);

    boolean l();

    @Nullable
    i3 m();

    void n(w wVar);

    void o(c cVar);
}
