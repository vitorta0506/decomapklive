package com.google.android.play.core.internal;

import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public abstract class h implements Runnable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final d5.o f10570a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h() {
        this.f10570a = null;
    }

    public h(@Nullable d5.o oVar) {
        this.f10570a = oVar;
    }

    protected abstract void b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final d5.o c() {
        return this.f10570a;
    }

    public final void d(Exception exc) {
        d5.o oVar = this.f10570a;
        if (oVar != null) {
            oVar.d(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e10) {
            d(e10);
        }
    }
}
