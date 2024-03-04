package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;
/* loaded from: classes.dex */
final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final g0.d f4537a = new a();

    /* loaded from: classes.dex */
    class a extends g0.e {
        a() {
        }

        @Override // g0.e, g0.d
        public void c(Bitmap bitmap) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static com.bumptech.glide.load.engine.u<Bitmap> a(g0.d dVar, Drawable drawable, int i9, int i10) {
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        boolean z10 = false;
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmap = null;
        } else {
            bitmap = b(dVar, current, i9, i10);
            z10 = true;
        }
        if (!z10) {
            dVar = f4537a;
        }
        return e.c(bitmap, dVar);
    }

    @Nullable
    private static Bitmap b(g0.d dVar, Drawable drawable, int i9, int i10) {
        if (i9 == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            return null;
        } else if (i10 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable("DrawableToBitmap", 5)) {
                Log.w("DrawableToBitmap", "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            }
            return null;
        } else {
            if (drawable.getIntrinsicWidth() > 0) {
                i9 = drawable.getIntrinsicWidth();
            }
            if (drawable.getIntrinsicHeight() > 0) {
                i10 = drawable.getIntrinsicHeight();
            }
            Lock i11 = a0.i();
            i11.lock();
            Bitmap d10 = dVar.d(i9, i10, Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(d10);
                drawable.setBounds(0, 0, i9, i10);
                drawable.draw(canvas);
                canvas.setBitmap(null);
                return d10;
            } finally {
                i11.unlock();
            }
        }
    }
}
