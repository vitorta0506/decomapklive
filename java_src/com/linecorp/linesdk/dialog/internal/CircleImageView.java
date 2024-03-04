package com.linecorp.linesdk.dialog.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
/* loaded from: classes4.dex */
public class CircleImageView extends AppCompatImageView {
    public CircleImageView(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setImageDrawable(null);
            return;
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        RoundedBitmapDrawable create = RoundedBitmapDrawableFactory.create(getContext().getResources(), bitmap);
        create.setCircular(true);
        create.setCornerRadius(Math.max(bitmap.getWidth(), bitmap.getHeight()) / 2.0f);
        super.setImageDrawable(create);
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
