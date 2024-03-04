package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0012\u0010 \u001a\u00020\u001f2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006#"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attributes", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "colorBlue", "getColorBlue", "()I", "setColorBlue", "(I)V", "colorLightBlue", "getColorLightBlue", "setColorLightBlue", "paint", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "value", "", "progress", "getProgress", "()F", "setProgress", "(F)V", "initattributes", "", "onDraw", "canvas", "Landroid/graphics/Canvas;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoCoverCircleProgressView extends View {
    private int colorBlue;
    private int colorLightBlue;
    @NotNull
    private final Paint paint;
    private float progress;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCoverCircleProgressView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.colorBlue = getContext().getResources().getColor(R.color.color_app_primary);
        this.colorLightBlue = getContext().getResources().getColor(R.color.color_video_record_light);
        this.progress = 1.0f;
        Paint paint = new Paint();
        paint.setStrokeWidth(DensityUtil.dp2px(4.0f));
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.paint = paint;
    }

    private final void initattributes(AttributeSet attributeSet, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.circle_progress);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…tyleable.circle_progress)");
        this.colorBlue = obtainStyledAttributes.getColor(0, getResources().getColor(R.color.color_app_primary));
        this.colorLightBlue = obtainStyledAttributes.getColor(1, getResources().getColor(R.color.color_video_record_light));
    }

    public final int getColorBlue() {
        return this.colorBlue;
    }

    public final int getColorLightBlue() {
        return this.colorLightBlue;
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    public final float getProgress() {
        return this.progress;
    }

    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        super.onDraw(canvas);
        if (canvas != null) {
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setColor(this.colorLightBlue);
            canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, (getMeasuredWidth() - this.paint.getStrokeWidth()) / 2.0f, this.paint);
            this.paint.setColor(this.colorBlue);
            canvas.drawArc(this.paint.getStrokeWidth() / 2.0f, this.paint.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.paint.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.paint.getStrokeWidth() / 2.0f), -90.0f, this.progress * 360, false, this.paint);
            this.paint.setStyle(Paint.Style.FILL);
            canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, DensityUtil.dp2px(17.0f) / 2.0f, this.paint);
        }
    }

    public final void setColorBlue(int i9) {
        this.colorBlue = i9;
    }

    public final void setColorLightBlue(int i9) {
        this.colorLightBlue = i9;
    }

    public final void setProgress(float f10) {
        if (f10 == this.progress) {
            return;
        }
        this.progress = f10;
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCoverCircleProgressView(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        this.colorBlue = getContext().getResources().getColor(R.color.color_app_primary);
        this.colorLightBlue = getContext().getResources().getColor(R.color.color_video_record_light);
        this.progress = 1.0f;
        Paint paint = new Paint();
        paint.setStrokeWidth(DensityUtil.dp2px(4.0f));
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.paint = paint;
        initattributes(attributes, context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCoverCircleProgressView(@NotNull Context context, @NotNull AttributeSet attributes, int i9) {
        super(context, attributes, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        this.colorBlue = getContext().getResources().getColor(R.color.color_app_primary);
        this.colorLightBlue = getContext().getResources().getColor(R.color.color_video_record_light);
        this.progress = 1.0f;
        Paint paint = new Paint();
        paint.setStrokeWidth(DensityUtil.dp2px(4.0f));
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.paint = paint;
        initattributes(attributes, context);
    }
}
