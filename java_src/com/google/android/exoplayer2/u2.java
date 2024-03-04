package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.p2;
import java.io.IOException;
/* loaded from: classes.dex */
public interface u2 extends p2.b {

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();
    }

    boolean c();

    void e();

    int f();

    boolean g();

    String getName();

    int getState();

    void h(k1[] k1VarArr, v2.i0 i0Var, long j10, long j11) throws ExoPlaybackException;

    void i();

    boolean isReady();

    void j(int i9, a2.s1 s1Var);

    void l(x2 x2Var, k1[] k1VarArr, v2.i0 i0Var, long j10, boolean z10, boolean z11, long j11, long j12) throws ExoPlaybackException;

    void m() throws IOException;

    boolean n();

    w2 o();

    void q(float f10, float f11) throws ExoPlaybackException;

    void reset();

    void s(long j10, long j11) throws ExoPlaybackException;

    void start() throws ExoPlaybackException;

    void stop();

    @Nullable
    v2.i0 t();

    long u();

    void v(long j10) throws ExoPlaybackException;

    @Nullable
    com.google.android.exoplayer2.util.t w();
}
