package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010!\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u00013B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001a\u0010*\u001a\u00020+2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0012\u0010,\u001a\u00020+2\b\u0010-\u001a\u0004\u0018\u00010.H\u0014J\u0006\u0010/\u001a\u00020+J\u0006\u00100\u001a\u00020+J\u0006\u00101\u001a\u00020+J\u0006\u00102\u001a\u00020+R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00064"}, d2 = {"Lcom/guochao/faceshow/views/RecordProgressView2;", "Landroid/view/View;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "attributes", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "colorProgress", "getColorProgress", "()I", "setColorProgress", "(I)V", "colorpending", "getColorpending", "setColorpending", "list", "", "", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "paint", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "value", "progress", "getProgress", "()F", "setProgress", "(F)V", "status", "Lcom/guochao/faceshow/views/RecordProgressView2$Status;", "getStatus", "()Lcom/guochao/faceshow/views/RecordProgressView2$Status;", "setStatus", "(Lcom/guochao/faceshow/views/RecordProgressView2$Status;)V", "initData", "", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onEnd", "onPause", "onStart", "revocation", "Status", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RecordProgressView2 extends View {
    private int colorProgress;
    private int colorpending;
    @NotNull
    private List<Float> list;
    @NotNull
    private final Paint paint;
    private float progress;
    @Nullable
    private Status status;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/views/RecordProgressView2$Status;", "", "(Ljava/lang/String;I)V", "Start", "Pause", "End", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum Status {
        Start,
        Pause,
        End
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecordProgressView2(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.list = new ArrayList();
        this.colorProgress = getContext().getResources().getColor(R.color.color_app_primary);
        this.colorpending = getContext().getResources().getColor(R.color.color_ugc_app_primary_start20);
        this.progress = 1.0f;
        Paint paint = new Paint();
        paint.setStrokeWidth(DensityUtil.dp2px(4.0f));
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.paint = paint;
        initData(null, context);
    }

    private final void initData(AttributeSet attributeSet, Context context) {
        this.list.add(Float.valueOf(0.0f));
    }

    public final int getColorProgress() {
        return this.colorProgress;
    }

    public final int getColorpending() {
        return this.colorpending;
    }

    @NotNull
    public final List<Float> getList() {
        return this.list;
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    public final float getProgress() {
        return this.progress;
    }

    @Nullable
    public final Status getStatus() {
        return this.status;
    }

    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        List<Float> list;
        List<Float> list2;
        super.onDraw(canvas);
        if (canvas != null) {
            this.paint.setStyle(Paint.Style.STROKE);
            if (this.status != Status.Pause) {
                this.paint.setColor(this.colorProgress);
                canvas.drawArc(this.paint.getStrokeWidth() / 2.0f, this.paint.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.paint.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.paint.getStrokeWidth() / 2.0f), -90.0f, this.progress * 360, false, this.paint);
            } else if (this.list.size() >= 2) {
                float f10 = 360;
                float floatValue = this.list.get(list.size() - 1).floatValue() * f10;
                float floatValue2 = this.list.get(list2.size() - 1).floatValue();
                List<Float> list3 = this.list;
                float floatValue3 = (floatValue2 - list3.get(list3.size() - 2).floatValue()) * f10;
                this.paint.setColor(this.colorProgress);
                canvas.drawArc(this.paint.getStrokeWidth() / 2.0f, this.paint.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.paint.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.paint.getStrokeWidth() / 2.0f), -90.0f, floatValue, false, this.paint);
                this.paint.setColor(this.colorpending);
                canvas.drawArc(this.paint.getStrokeWidth() / 2.0f, this.paint.getStrokeWidth() / 2.0f, getMeasuredWidth() - (this.paint.getStrokeWidth() / 2.0f), getMeasuredHeight() - (this.paint.getStrokeWidth() / 2.0f), (floatValue - floatValue3) - 90.0f, floatValue3, false, this.paint);
            }
        }
    }

    public final void onEnd() {
        this.status = Status.End;
        invalidate();
    }

    public final void onPause() {
        this.list.add(Float.valueOf(this.progress));
        this.status = Status.Pause;
        invalidate();
    }

    public final void onStart() {
        this.status = Status.Start;
        invalidate();
    }

    public final void revocation() {
        if (this.list.size() > 1) {
            CollectionsKt__MutableCollectionsKt.removeLast(this.list);
            invalidate();
        }
    }

    public final void setColorProgress(int i9) {
        this.colorProgress = i9;
    }

    public final void setColorpending(int i9) {
        this.colorpending = i9;
    }

    public final void setList(@NotNull List<Float> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.list = list;
    }

    public final void setProgress(float f10) {
        if (f10 == this.progress) {
            return;
        }
        this.progress = f10;
        invalidate();
    }

    public final void setStatus(@Nullable Status status) {
        this.status = status;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecordProgressView2(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        this.list = new ArrayList();
        this.colorProgress = getContext().getResources().getColor(R.color.color_app_primary);
        this.colorpending = getContext().getResources().getColor(R.color.color_ugc_app_primary_start20);
        this.progress = 1.0f;
        Paint paint = new Paint();
        paint.setStrokeWidth(DensityUtil.dp2px(4.0f));
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.paint = paint;
        initData(attributes, context);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecordProgressView2(@NotNull Context context, @NotNull AttributeSet attributes, int i9) {
        super(context, attributes, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
        this.list = new ArrayList();
        this.colorProgress = getContext().getResources().getColor(R.color.color_app_primary);
        this.colorpending = getContext().getResources().getColor(R.color.color_ugc_app_primary_start20);
        this.progress = 1.0f;
        Paint paint = new Paint();
        paint.setStrokeWidth(DensityUtil.dp2px(4.0f));
        paint.setDither(true);
        paint.setAntiAlias(true);
        this.paint = paint;
        initData(attributes, context);
    }
}
