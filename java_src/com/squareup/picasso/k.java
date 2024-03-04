package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class k extends a<ImageView> {

    /* renamed from: m  reason: collision with root package name */
    e f29960m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Picasso picasso, ImageView imageView, s sVar, int i9, int i10, int i11, Drawable drawable, String str, Object obj, e eVar, boolean z10) {
        super(picasso, imageView, sVar, i9, i10, i11, drawable, str, obj, z10);
        this.f29960m = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.a
    public void a() {
        super.a();
        if (this.f29960m != null) {
            this.f29960m = null;
        }
    }

    @Override // com.squareup.picasso.a
    public void b(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        if (bitmap != null) {
            ImageView imageView = (ImageView) this.f29888c.get();
            if (imageView == null) {
                return;
            }
            Picasso picasso = this.f29886a;
            q.c(imageView, picasso.f29860e, bitmap, loadedFrom, this.f29889d, picasso.f29868m);
            e eVar = this.f29960m;
            if (eVar != null) {
                eVar.onSuccess();
                return;
            }
            return;
        }
        throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
    }

    @Override // com.squareup.picasso.a
    public void c() {
        ImageView imageView = (ImageView) this.f29888c.get();
        if (imageView == null) {
            return;
        }
        int i9 = this.f29892g;
        if (i9 != 0) {
            imageView.setImageResource(i9);
        } else {
            Drawable drawable = this.f29893h;
            if (drawable != null) {
                imageView.setImageDrawable(drawable);
            }
        }
        e eVar = this.f29960m;
        if (eVar != null) {
            eVar.onError();
        }
    }
}
