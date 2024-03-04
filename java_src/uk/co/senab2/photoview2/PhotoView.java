package uk.co.senab2.photoview2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.View;
import android.widget.ImageView;
import uk.co.senab2.photoview2.c;
/* loaded from: classes7.dex */
public class PhotoView extends ImageView implements b {

    /* renamed from: a  reason: collision with root package name */
    private c f58544a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView.ScaleType f58545b;

    public PhotoView(Context context) {
        this(context, null);
    }

    protected void a() {
        c cVar = this.f58544a;
        if (cVar == null || cVar.u() == null) {
            this.f58544a = new c(this);
        }
        ImageView.ScaleType scaleType = this.f58545b;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.f58545b = null;
        }
    }

    public void b(float f10, boolean z10) {
        this.f58544a.T(f10, z10);
    }

    public RectF getDisplayRect() {
        return this.f58544a.q();
    }

    public b getIPhotoViewImplementation() {
        return this.f58544a;
    }

    @Override // android.widget.ImageView
    public Matrix getImageMatrix() {
        return this.f58544a.t();
    }

    public float getMaximumScale() {
        return this.f58544a.x();
    }

    public float getMediumScale() {
        return this.f58544a.y();
    }

    public float getMinimumScale() {
        return this.f58544a.z();
    }

    public float getScale() {
        return this.f58544a.C();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f58544a.D();
    }

    public Bitmap getVisibleRectangleBitmap() {
        return this.f58544a.F();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        a();
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        this.f58544a.p();
        this.f58544a.I();
        this.f58544a = null;
        super.onDetachedFromWindow();
    }

    public void setAllowParentInterceptOnEdge(boolean z10) {
        this.f58544a.J(z10);
    }

    @Override // android.widget.ImageView
    protected boolean setFrame(int i9, int i10, int i11, int i12) {
        boolean frame = super.setFrame(i9, i10, i11, i12);
        c cVar = this.f58544a;
        if (cVar != null) {
            cVar.X();
        }
        return frame;
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        c cVar = this.f58544a;
        if (cVar != null) {
            cVar.X();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i9) {
        super.setImageResource(i9);
        c cVar = this.f58544a;
        if (cVar != null) {
            cVar.X();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        c cVar = this.f58544a;
        if (cVar != null) {
            cVar.X();
        }
    }

    public void setMaximumScale(float f10) {
        this.f58544a.M(f10);
    }

    public void setMediumScale(float f10) {
        this.f58544a.N(f10);
    }

    public void setMinimumScale(float f10) {
        this.f58544a.O(f10);
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f58544a.setOnDoubleTapListener(onDoubleTapListener);
    }

    @Override // android.view.View, uk.co.senab2.photoview2.b
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f58544a.setOnLongClickListener(onLongClickListener);
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnMatrixChangeListener(c.e eVar) {
        this.f58544a.setOnMatrixChangeListener(eVar);
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnPhotoTapListener(c.f fVar) {
        this.f58544a.setOnPhotoTapListener(fVar);
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnScaleChangeListener(c.g gVar) {
        this.f58544a.setOnScaleChangeListener(gVar);
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnSingleFlingListener(c.h hVar) {
        this.f58544a.setOnSingleFlingListener(hVar);
    }

    @Override // uk.co.senab2.photoview2.b
    public void setOnViewTapListener(c.i iVar) {
        this.f58544a.setOnViewTapListener(iVar);
    }

    public void setRotationBy(float f10) {
        this.f58544a.P(f10);
    }

    public void setRotationTo(float f10) {
        this.f58544a.Q(f10);
    }

    public void setScale(float f10) {
        this.f58544a.R(f10);
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        c cVar = this.f58544a;
        if (cVar != null) {
            cVar.U(scaleType);
        } else {
            this.f58545b = scaleType;
        }
    }

    public void setZoomTransitionDuration(int i9) {
        this.f58544a.V(i9);
    }

    public void setZoomable(boolean z10) {
        this.f58544a.W(z10);
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        a();
    }
}
