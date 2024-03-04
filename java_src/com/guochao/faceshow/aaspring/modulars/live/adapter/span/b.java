package com.guochao.faceshow.aaspring.modulars.live.adapter.span;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class b extends s0.c<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    WeakReference<a> f18267a;

    public b(a aVar) {
        this.f18267a = new WeakReference<>(aVar);
    }

    @Override // s0.k
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override // s0.k
    public /* bridge */ /* synthetic */ void onResourceReady(@NonNull Object obj, @Nullable t0.f fVar) {
        onResourceReady((Drawable) obj, (t0.f<? super Drawable>) fVar);
    }

    public void onResourceReady(@NonNull Drawable drawable, @Nullable t0.f<? super Drawable> fVar) {
        a aVar = this.f18267a.get();
        if (aVar == null) {
            return;
        }
        aVar.a(drawable);
    }
}
