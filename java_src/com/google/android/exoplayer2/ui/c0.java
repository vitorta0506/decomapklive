package com.google.android.exoplayer2.ui;

import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public interface c0 {

    /* loaded from: classes2.dex */
    public interface a {
        void D(c0 c0Var, long j10, boolean z10);

        void E(c0 c0Var, long j10);

        void r(c0 c0Var, long j10);
    }

    void a(@Nullable long[] jArr, @Nullable boolean[] zArr, int i9);

    void addListener(a aVar);

    long getPreferredUpdateDelay();

    void removeListener(a aVar);

    void setBufferedPosition(long j10);

    void setDuration(long j10);

    void setEnabled(boolean z10);

    void setPosition(long j10);
}
