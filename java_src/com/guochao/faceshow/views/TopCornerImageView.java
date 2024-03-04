package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.guochao.faceshow.utils.DensityUtil;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes4.dex */
public class TopCornerImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    Path f26853a;

    public TopCornerImageView(@NonNull @NotNull Context context) {
        super(context);
        this.f26853a = new Path();
    }

    private Path a(int i9, int i10) {
        Path path = this.f26853a;
        path.reset();
        float dp2px = DensityUtil.dp2px(7.0f);
        path.addRoundRect(new RectF(0.0f, 0.0f, i9, i10), new float[]{dp2px, dp2px, dp2px, dp2px}, Path.Direction.CW);
        return path;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.clipPath(a(getWidth(), getHeight()));
        super.onDraw(canvas);
    }

    public TopCornerImageView(@NonNull @NotNull Context context, @Nullable @org.jetbrains.annotations.Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26853a = new Path();
    }

    public TopCornerImageView(@NonNull @NotNull Context context, @Nullable @org.jetbrains.annotations.Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26853a = new Path();
    }
}
