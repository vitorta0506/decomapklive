package a2;

import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.l2;
import j3.d;
import java.util.List;
import v2.q;
/* loaded from: classes.dex */
public interface a extends l2.d, v2.w, d.a, com.google.android.exoplayer2.drm.s {
    void J();

    void M(l2 l2Var, Looper looper);

    void V(List<q.b> list, @Nullable q.b bVar);

    void b(Exception exc);

    void b0(c cVar);

    void c(String str);

    void d(String str, long j10, long j11);

    void e(String str);

    void f(String str, long j10, long j11);

    void h(com.google.android.exoplayer2.k1 k1Var, @Nullable b2.g gVar);

    void i(b2.e eVar);

    void j(com.google.android.exoplayer2.k1 k1Var, @Nullable b2.g gVar);

    void m(long j10);

    void o(Exception exc);

    void p(b2.e eVar);

    void release();

    void s(b2.e eVar);

    void t(int i9, long j10);

    void u(Object obj, long j10);

    void v(Exception exc);

    void w(b2.e eVar);

    void x(int i9, long j10, long j11);

    void y(long j10, int i9);
}
