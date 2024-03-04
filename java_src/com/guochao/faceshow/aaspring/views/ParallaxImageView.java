package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b*\u0010+B\u001b\b\u0016\u0012\u0006\u0010)\u001a\u00020(\u0012\b\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\b*\u0010.B#\b\u0016\u0012\u0006\u0010)\u001a\u00020(\u0012\b\u0010-\u001a\u0004\u0018\u00010,\u0012\u0006\u0010/\u001a\u00020\u0002¢\u0006\u0004\b*\u00100B+\b\u0016\u0012\u0006\u0010)\u001a\u00020(\u0012\b\u0010-\u001a\u0004\u0018\u00010,\u0012\u0006\u0010/\u001a\u00020\u0002\u0012\u0006\u00101\u001a\u00020\u0002¢\u0006\u0004\b*\u00102J0\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014J\u0010\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0016\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002J\b\u0010\u0012\u001a\u00020\nH\u0014J\b\u0010\u0013\u001a\u00020\nH\u0014J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001cR$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001d\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00070#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'¨\u00063"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/ParallaxImageView;", "Landroid/view/View;", "", "width", "bitmapWidth", "Landroid/graphics/Matrix;", "localMatrix", "Landroid/graphics/Bitmap;", "bitmap", "bitmapHeight", "", "setBitmap", "Landroid/graphics/Canvas;", "canvas", "onDraw", "totalScrollRange", TypedValues.CycleType.S_WAVE_OFFSET, "onOffsetChanged", "onAttachedToWindow", "onDetachedFromWindow", "", "url", "loadUrl", "mBitmap", "Landroid/graphics/Bitmap;", "mMatrix", "Landroid/graphics/Matrix;", "mTotalRange", "I", "mOffset", "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "Ls0/i;", TypedValues.AttributesType.S_TARGET, "Ls0/i;", "getTarget", "()Ls0/i;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ParallaxImageView extends View {
    @Nullable
    private Bitmap mBitmap;
    @Nullable
    private Matrix mMatrix;
    private int mOffset;
    private int mTotalRange;
    @NotNull
    private final s0.i<Bitmap> target;
    @Nullable
    private String url;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParallaxImageView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.target = new s0.i<Bitmap>() { // from class: com.guochao.faceshow.aaspring.views.ParallaxImageView$target$1
            @Override // s0.a, s0.k
            public void onLoadFailed(@Nullable Drawable drawable) {
                ParallaxImageView.this.setBitmap(null);
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, t0.f fVar) {
                onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
            }

            public void onResourceReady(@NotNull Bitmap resource, @Nullable t0.f<? super Bitmap> fVar) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                ParallaxImageView.this.setBitmap(resource);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setBitmap$lambda-0  reason: not valid java name */
    public static final void m600setBitmap$lambda0(ParallaxImageView this$0, int i9, Ref.ObjectRef localMatrix, Bitmap bitmap, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(localMatrix, "$localMatrix");
        this$0.setBitmap(this$0.getMeasuredWidth(), i9, (Matrix) localMatrix.element, bitmap, i10);
    }

    @NotNull
    public final s0.i<Bitmap> getTarget() {
        return this.target;
    }

    @Nullable
    public final String getUrl() {
        return this.url;
    }

    public final void loadUrl(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        if (isAttachedToWindow()) {
            com.bumptech.glide.c.v(this).b().Z0(url).a0(getWidth(), getHeight()).M0(this.target);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (TextUtils.isEmpty(this.url)) {
            return;
        }
        com.bumptech.glide.c.v(this).b().Z0(this.url).a0(getWidth(), getHeight()).M0(this.target);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bumptech.glide.c.v(this).g(this.target);
        setBitmap(null);
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        Bitmap bitmap = this.mBitmap;
        if (bitmap == null) {
            canvas.drawColor(Color.parseColor("#cccccc"));
        } else if (this.mTotalRange != 0 && this.mOffset != 0) {
            canvas.save();
            canvas.translate(0.0f, ((getHeight() * 0.5f) * this.mOffset) / this.mTotalRange);
            Bitmap bitmap2 = this.mBitmap;
            Intrinsics.checkNotNull(bitmap2);
            Matrix matrix = this.mMatrix;
            Intrinsics.checkNotNull(matrix);
            canvas.drawBitmap(bitmap2, matrix, null);
            canvas.restore();
        } else {
            Intrinsics.checkNotNull(bitmap);
            Matrix matrix2 = this.mMatrix;
            Intrinsics.checkNotNull(matrix2);
            canvas.drawBitmap(bitmap, matrix2, null);
        }
    }

    public final void onOffsetChanged(int i9, int i10) {
        this.mOffset = i10;
        this.mTotalRange = i9;
        invalidate();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, android.graphics.Matrix] */
    public final void setBitmap(@Nullable final Bitmap bitmap) {
        if (bitmap == null) {
            this.mBitmap = null;
            invalidate();
            return;
        }
        final int width = bitmap.getWidth();
        final int height = bitmap.getHeight();
        if (width != 0 && height != 0) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new Matrix();
            int measuredWidth = getMeasuredWidth();
            if (measuredWidth > 0) {
                setBitmap(measuredWidth, width, (Matrix) objectRef.element, bitmap, height);
                return;
            } else {
                post(new Runnable() { // from class: com.guochao.faceshow.aaspring.views.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        ParallaxImageView.m600setBitmap$lambda0(ParallaxImageView.this, width, objectRef, bitmap, height);
                    }
                });
                return;
            }
        }
        this.mBitmap = null;
        invalidate();
    }

    public final void setUrl(@Nullable String str) {
        this.url = str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParallaxImageView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.target = new s0.i<Bitmap>() { // from class: com.guochao.faceshow.aaspring.views.ParallaxImageView$target$1
            @Override // s0.a, s0.k
            public void onLoadFailed(@Nullable Drawable drawable) {
                ParallaxImageView.this.setBitmap(null);
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, t0.f fVar) {
                onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
            }

            public void onResourceReady(@NotNull Bitmap resource, @Nullable t0.f<? super Bitmap> fVar) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                ParallaxImageView.this.setBitmap(resource);
            }
        };
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParallaxImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        this.target = new s0.i<Bitmap>() { // from class: com.guochao.faceshow.aaspring.views.ParallaxImageView$target$1
            @Override // s0.a, s0.k
            public void onLoadFailed(@Nullable Drawable drawable) {
                ParallaxImageView.this.setBitmap(null);
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, t0.f fVar) {
                onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
            }

            public void onResourceReady(@NotNull Bitmap resource, @Nullable t0.f<? super Bitmap> fVar) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                ParallaxImageView.this.setBitmap(resource);
            }
        };
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParallaxImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.target = new s0.i<Bitmap>() { // from class: com.guochao.faceshow.aaspring.views.ParallaxImageView$target$1
            @Override // s0.a, s0.k
            public void onLoadFailed(@Nullable Drawable drawable) {
                ParallaxImageView.this.setBitmap(null);
            }

            @Override // s0.k
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, t0.f fVar) {
                onResourceReady((Bitmap) obj, (t0.f<? super Bitmap>) fVar);
            }

            public void onResourceReady(@NotNull Bitmap resource, @Nullable t0.f<? super Bitmap> fVar) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                ParallaxImageView.this.setBitmap(resource);
            }
        };
    }

    private final void setBitmap(int i9, int i10, Matrix matrix, Bitmap bitmap, int i11) {
        float f10 = (i9 * 1.0f) / i10;
        matrix.postScale(f10, f10);
        this.mMatrix = matrix;
        this.mBitmap = bitmap;
        this.mOffset = 0;
        this.mTotalRange = 0;
        invalidate();
    }
}
