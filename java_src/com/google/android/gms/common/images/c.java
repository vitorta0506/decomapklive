package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.base.zam;
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    protected int f7658a;

    protected abstract void a(@Nullable Drawable drawable, boolean z10, boolean z11, boolean z12);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Context context, zam zamVar, boolean z10) {
        int i9 = this.f7658a;
        a(i9 != 0 ? context.getResources().getDrawable(i9) : null, z10, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Context context, Bitmap bitmap, boolean z10) {
        com.google.android.gms.common.internal.c.c(bitmap);
        a(new BitmapDrawable(context.getResources(), bitmap), false, false, true);
    }
}
