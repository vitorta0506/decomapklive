package com.tencent.liteav.videobase.videobase;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final View f31926a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31927b;

    private b(View view, int i9) {
        this.f31926a = view;
        this.f31927b = i9;
    }

    public static Runnable a(View view, int i9) {
        return new b(view, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f31926a.setVisibility(this.f31927b);
    }
}
