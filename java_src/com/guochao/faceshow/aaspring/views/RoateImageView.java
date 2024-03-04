package com.guochao.faceshow.aaspring.views;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
@Deprecated
/* loaded from: classes3.dex */
public class RoateImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private ObjectAnimator f23998a;

    public RoateImageView(@NonNull Context context) {
        super(context);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            ObjectAnimator objectAnimator = this.f23998a;
            if (objectAnimator == null || !objectAnimator.isRunning()) {
                return;
            }
            this.f23998a.cancel();
        } catch (Exception unused) {
        }
    }

    public RoateImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RoateImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
