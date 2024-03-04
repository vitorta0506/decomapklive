package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J(\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0014R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/RoundCornerView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "clipPath", "Landroid/graphics/Path;", "radius", "", "dispatchDraw", "", "canvas", "Landroid/graphics/Canvas;", "onSizeChanged", "w", "h", "oldw", "oldh", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RoundCornerView extends FrameLayout {
    @NotNull
    private final Path clipPath;
    private final int radius;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundCornerView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ RoundCornerView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@Nullable Canvas canvas) {
        if (canvas != null) {
            canvas.clipPath(this.clipPath);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        int i13 = this.radius;
        float width = getWidth();
        float height = getHeight();
        super.onSizeChanged(i9, i10, i11, i12);
        Path path = this.clipPath;
        path.reset();
        float f10 = i13;
        path.moveTo(f10, 0.0f);
        path.lineTo(width - f10, 0.0f);
        path.quadTo(width, 0.0f, width, f10);
        path.lineTo(width, height);
        path.quadTo(width, height, width, height);
        path.lineTo(0.0f, height);
        path.quadTo(0.0f, height, 0.0f, height);
        path.lineTo(0.0f, f10);
        path.quadTo(0.0f, 0.0f, f10, 0.0f);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public RoundCornerView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.radius = DensityUtil.dp2px(16.0f);
        this.clipPath = new Path();
    }
}
