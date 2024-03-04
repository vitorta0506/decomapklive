package com.guochao.faceshow.aaspring.modulars.chat.viewholder;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ImageMessageHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ImageMessageHolder f17280b;

    @UiThread
    public ImageMessageHolder_ViewBinding(ImageMessageHolder imageMessageHolder, View view) {
        this.f17280b = imageMessageHolder;
        imageMessageHolder.mImageView = (ImageView) c.d(view, R.id.img, "field 'mImageView'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ImageMessageHolder imageMessageHolder = this.f17280b;
        if (imageMessageHolder != null) {
            this.f17280b = null;
            imageMessageHolder.mImageView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
