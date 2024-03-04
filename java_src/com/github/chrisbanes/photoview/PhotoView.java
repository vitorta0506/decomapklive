package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import h1.d;
import h1.e;
import h1.f;
import h1.g;
import h1.h;
import h1.i;
import h1.j;
import h1.k;
/* loaded from: classes.dex */
public class PhotoView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private k f5115a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView.ScaleType f5116b;

    public PhotoView(Context context) {
        this(context, null);
    }

    private void b() {
        this.f5115a = new k(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.f5116b;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f5116b = null;
        }
    }

    public void a(Matrix matrix) {
        this.f5115a.O(matrix);
    }

    public void c(float f10, float f11, float f12, boolean z10) {
        this.f5115a.Z(f10, f11, f12, z10);
    }

    public void d(float f10, boolean z10) {
        this.f5115a.a0(f10, z10);
    }

    public void e(float f10, float f11, float f12) {
        this.f5115a.b0(f10, f11, f12);
    }

    public k getAttacher() {
        return this.f5115a;
    }

    public RectF getDisplayRect() {
        return this.f5115a.D();
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f5115a.G();
    }

    public float getMaximumScale() {
        return this.f5115a.J();
    }

    public float getMediumScale() {
        return this.f5115a.K();
    }

    public float getMinimumScale() {
        return this.f5115a.L();
    }

    public float getScale() {
        return this.f5115a.M();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f5115a.N();
    }

    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.f5115a.R(z10);
    }

    @Override // android.widget.ImageView
    protected boolean setFrame(int i9, int i10, int i11, int i12) {
        boolean frame = super.setFrame(i9, i10, i11, i12);
        if (frame) {
            this.f5115a.f0();
        }
        return frame;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        k kVar = this.f5115a;
        if (kVar != null) {
            kVar.f0();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i9) {
        super.setImageResource(i9);
        k kVar = this.f5115a;
        if (kVar != null) {
            kVar.f0();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        k kVar = this.f5115a;
        if (kVar != null) {
            kVar.f0();
        }
    }

    public void setMaximumScale(float f10) {
        this.f5115a.T(f10);
    }

    public void setMediumScale(float f10) {
        this.f5115a.U(f10);
    }

    public void setMinimumScale(float f10) {
        this.f5115a.V(f10);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5115a.setOnClickListener(onClickListener);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f5115a.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f5115a.setOnLongClickListener(onLongClickListener);
    }

    public void setOnMatrixChangeListener(d dVar) {
        this.f5115a.setOnMatrixChangeListener(dVar);
    }

    public void setOnOutsidePhotoTapListener(e eVar) {
        this.f5115a.setOnOutsidePhotoTapListener(eVar);
    }

    public void setOnPhotoTapListener(f fVar) {
        this.f5115a.setOnPhotoTapListener(fVar);
    }

    public void setOnScaleChangeListener(g gVar) {
        this.f5115a.setOnScaleChangeListener(gVar);
    }

    public void setOnSingleFlingListener(h hVar) {
        this.f5115a.setOnSingleFlingListener(hVar);
    }

    public void setOnViewDragListener(i iVar) {
        this.f5115a.setOnViewDragListener(iVar);
    }

    public void setOnViewTapListener(j jVar) {
        this.f5115a.setOnViewTapListener(jVar);
    }

    public void setRotationBy(float f10) {
        this.f5115a.W(f10);
    }

    public void setRotationTo(float f10) {
        this.f5115a.X(f10);
    }

    public void setScale(float f10) {
        this.f5115a.Y(f10);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        k kVar = this.f5115a;
        if (kVar == null) {
            this.f5116b = scaleType;
        } else {
            kVar.c0(scaleType);
        }
    }

    public void setZoomTransitionDuration(int i9) {
        this.f5115a.d0(i9);
    }

    public void setZoomable(boolean z10) {
        this.f5115a.e0(z10);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }
}
