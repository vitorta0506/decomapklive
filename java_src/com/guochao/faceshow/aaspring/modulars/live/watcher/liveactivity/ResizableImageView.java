package com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class ResizableImageView extends ImageView {
    public ResizableImageView(Context context) {
        super(context);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i9, int i10) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            int size = View.MeasureSpec.getSize(i9);
            setMeasuredDimension(size, (int) Math.ceil((size * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth()));
            return;
        }
        super.onMeasure(i9, i10);
    }

    public ResizableImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ResizableImageView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
