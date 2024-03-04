package com.guochao.faceshow.component.f2fmatch.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.component.f2fmatch.R$mipmap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0015\u001a\u00020\u0016H\u0014J\b\u0010\u0017\u001a\u00020\u0016H\u0014J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0014J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001f"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;", "Landroidx/appcompat/widget/AppCompatImageView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "anim", "Landroid/animation/ValueAnimator;", "getAnim", "()Landroid/animation/ValueAnimator;", "setAnim", "(Landroid/animation/ValueAnimator;)V", "d", "Landroid/graphics/drawable/Drawable;", "rotate", "", "getRotate", "()F", "setRotate", "(F)V", "onAttachedToWindow", "", "onDetachedFromWindow", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onMeasure", "widthMeasureSpec", "", "heightMeasureSpec", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fAvatarView extends AppCompatImageView {
    @Nullable
    private ValueAnimator anim;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Drawable f25173d;
    private float rotate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public F2fAvatarView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ F2fAvatarView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onAttachedToWindow$lambda-4$lambda-3  reason: not valid java name */
    public static final void m654onAttachedToWindow$lambda4$lambda3(F2fAvatarView this$0, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        this$0.rotate = ((Float) animatedValue).floatValue();
        this$0.invalidate();
    }

    @Nullable
    public final ValueAnimator getAnim() {
        return this.anim;
    }

    public final float getRotate() {
        return this.rotate;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.guochao.faceshow.component.f2fmatch.view.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                F2fAvatarView.m654onAttachedToWindow$lambda4$lambda3(F2fAvatarView.this, valueAnimator);
            }
        });
        ofFloat.setDuration(1500L);
        ofFloat.setRepeatCount(-1);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.start();
        this.anim = ofFloat;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.anim;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            valueAnimator.cancel();
        }
        this.anim = null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        Drawable drawable = this.f25173d;
        if (drawable != null) {
            canvas.save();
            canvas.rotate(this.rotate, getWidth() / 2.0f, getHeight() / 2.0f);
            drawable.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i9, int i10) {
        Drawable drawable = this.f25173d;
        if (drawable != null) {
            setMeasuredDimension(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        } else {
            super.onMeasure(i9, i10);
        }
    }

    public final void setAnim(@Nullable ValueAnimator valueAnimator) {
        this.anim = valueAnimator;
    }

    public final void setRotate(float f10) {
        this.rotate = f10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public F2fAvatarView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        Drawable drawable = ContextCompat.getDrawable(getContext(), R$mipmap.f2f_header_loading_anim);
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        } else {
            drawable = null;
        }
        this.f25173d = drawable;
    }
}
