package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
/* loaded from: classes4.dex */
final class z extends a<y> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public z(Picasso picasso, y yVar, s sVar, int i9, int i10, Drawable drawable, String str, Object obj, int i11) {
        super(picasso, yVar, sVar, i9, i10, i11, drawable, str, obj, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.a
    public void b(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap != null) {
            y k10 = k();
            if (k10 != null) {
                k10.b(bitmap, loadedFrom);
                if (bitmap.isRecycled()) {
                    throw new IllegalStateException("Target callback must not recycle bitmap!");
                }
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.a
    public void c() {
        y k10 = k();
        if (k10 != null) {
            if (this.f29892g != 0) {
                k10.a(this.f29886a.f29860e.getResources().getDrawable(this.f29892g));
            } else {
                k10.a(this.f29893h);
            }
        }
    }
}
