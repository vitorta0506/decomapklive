package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class ImageFilterView extends AppCompatImageView {
    private Drawable mAltDrawable;
    private float mCrossfade;
    private Drawable mDrawable;
    private ImageMatrix mImageMatrix;
    LayerDrawable mLayer;
    Drawable[] mLayers;
    private boolean mOverlay;
    float mPanX;
    float mPanY;
    private Path mPath;
    RectF mRect;
    float mRotate;
    private float mRound;
    private float mRoundPercent;
    ViewOutlineProvider mViewOutlineProvider;
    float mZoom;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ImageMatrix {

        /* renamed from: m  reason: collision with root package name */
        float[] f837m = new float[20];
        ColorMatrix mColorMatrix = new ColorMatrix();
        ColorMatrix mTmpColorMatrix = new ColorMatrix();
        float mBrightness = 1.0f;
        float mSaturation = 1.0f;
        float mContrast = 1.0f;
        float mWarmth = 1.0f;

        private void brightness(float f10) {
            float[] fArr = this.f837m;
            fArr[0] = f10;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = f10;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = f10;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void saturation(float f10) {
            float f11 = 1.0f - f10;
            float f12 = 0.2999f * f11;
            float f13 = 0.587f * f11;
            float f14 = f11 * 0.114f;
            float[] fArr = this.f837m;
            fArr[0] = f12 + f10;
            fArr[1] = f13;
            fArr[2] = f14;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f12;
            fArr[6] = f13 + f10;
            fArr[7] = f14;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f12;
            fArr[11] = f13;
            fArr[12] = f14 + f10;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        private void warmth(float f10) {
            float log;
            float f11;
            float f12;
            if (f10 <= 0.0f) {
                f10 = 0.01f;
            }
            float f13 = (5000.0f / f10) / 100.0f;
            if (f13 > 66.0f) {
                double d10 = f13 - 60.0f;
                f11 = ((float) Math.pow(d10, -0.13320475816726685d)) * 329.69873f;
                log = ((float) Math.pow(d10, 0.07551484555006027d)) * 288.12216f;
            } else {
                log = (((float) Math.log(f13)) * 99.4708f) - 161.11957f;
                f11 = 255.0f;
            }
            if (f13 < 66.0f) {
                f12 = f13 > 19.0f ? (((float) Math.log(f13 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f;
            } else {
                f12 = 255.0f;
            }
            float min = Math.min(255.0f, Math.max(f11, 0.0f));
            float min2 = Math.min(255.0f, Math.max(log, 0.0f));
            float min3 = Math.min(255.0f, Math.max(f12, 0.0f));
            float min4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float min5 = Math.min(255.0f, Math.max((((float) Math.log(50.0f)) * 99.4708f) - 161.11957f, 0.0f));
            float min6 = min3 / Math.min(255.0f, Math.max((((float) Math.log(40.0f)) * 138.51773f) - 305.0448f, 0.0f));
            float[] fArr = this.f837m;
            fArr[0] = min / min4;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = min2 / min5;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = min6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void updateMatrix(ImageView imageView) {
            boolean z10;
            this.mColorMatrix.reset();
            float f10 = this.mSaturation;
            boolean z11 = true;
            if (f10 != 1.0f) {
                saturation(f10);
                this.mColorMatrix.set(this.f837m);
                z10 = true;
            } else {
                z10 = false;
            }
            float f11 = this.mContrast;
            if (f11 != 1.0f) {
                this.mTmpColorMatrix.setScale(f11, f11, f11, 1.0f);
                this.mColorMatrix.postConcat(this.mTmpColorMatrix);
                z10 = true;
            }
            float f12 = this.mWarmth;
            if (f12 != 1.0f) {
                warmth(f12);
                this.mTmpColorMatrix.set(this.f837m);
                this.mColorMatrix.postConcat(this.mTmpColorMatrix);
                z10 = true;
            }
            float f13 = this.mBrightness;
            if (f13 != 1.0f) {
                brightness(f13);
                this.mTmpColorMatrix.set(this.f837m);
                this.mColorMatrix.postConcat(this.mTmpColorMatrix);
            } else {
                z11 = z10;
            }
            if (z11) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.mColorMatrix));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        this.mImageMatrix = new ImageMatrix();
        this.mOverlay = true;
        this.mAltDrawable = null;
        this.mDrawable = null;
        this.mCrossfade = 0.0f;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mLayers = new Drawable[2];
        this.mPanX = Float.NaN;
        this.mPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            this.mAltDrawable = obtainStyledAttributes.getDrawable(R.styleable.ImageFilterView_altSrc);
            for (int i9 = 0; i9 < indexCount; i9++) {
                int index = obtainStyledAttributes.getIndex(i9);
                if (index == R.styleable.ImageFilterView_crossfade) {
                    this.mCrossfade = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == R.styleable.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_brightness) {
                    setBrightness(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_round) {
                    setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == R.styleable.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.mOverlay));
                } else if (index == R.styleable.ImageFilterView_imagePanX) {
                    setImagePanX(obtainStyledAttributes.getFloat(index, this.mPanX));
                } else if (index == R.styleable.ImageFilterView_imagePanY) {
                    setImagePanY(obtainStyledAttributes.getFloat(index, this.mPanY));
                } else if (index == R.styleable.ImageFilterView_imageRotate) {
                    setImageRotate(obtainStyledAttributes.getFloat(index, this.mRotate));
                } else if (index == R.styleable.ImageFilterView_imageZoom) {
                    setImageZoom(obtainStyledAttributes.getFloat(index, this.mZoom));
                }
            }
            obtainStyledAttributes.recycle();
            Drawable drawable = getDrawable();
            this.mDrawable = drawable;
            if (this.mAltDrawable != null && drawable != null) {
                Drawable[] drawableArr = this.mLayers;
                Drawable mutate = getDrawable().mutate();
                this.mDrawable = mutate;
                drawableArr[0] = mutate;
                this.mLayers[1] = this.mAltDrawable.mutate();
                LayerDrawable layerDrawable = new LayerDrawable(this.mLayers);
                this.mLayer = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.mCrossfade * 255.0f));
                if (!this.mOverlay) {
                    this.mLayer.getDrawable(0).setAlpha((int) ((1.0f - this.mCrossfade) * 255.0f));
                }
                super.setImageDrawable(this.mLayer);
                return;
            }
            Drawable drawable2 = getDrawable();
            this.mDrawable = drawable2;
            if (drawable2 != null) {
                Drawable[] drawableArr2 = this.mLayers;
                Drawable mutate2 = drawable2.mutate();
                this.mDrawable = mutate2;
                drawableArr2[0] = mutate2;
            }
        }
    }

    private void setMatrix() {
        if (Float.isNaN(this.mPanX) && Float.isNaN(this.mPanY) && Float.isNaN(this.mZoom) && Float.isNaN(this.mRotate)) {
            return;
        }
        float f10 = Float.isNaN(this.mPanX) ? 0.0f : this.mPanX;
        float f11 = Float.isNaN(this.mPanY) ? 0.0f : this.mPanY;
        float f12 = Float.isNaN(this.mZoom) ? 1.0f : this.mZoom;
        float f13 = Float.isNaN(this.mRotate) ? 0.0f : this.mRotate;
        Matrix matrix = new Matrix();
        matrix.reset();
        float intrinsicWidth = getDrawable().getIntrinsicWidth();
        float intrinsicHeight = getDrawable().getIntrinsicHeight();
        float width = getWidth();
        float height = getHeight();
        float f14 = f12 * (intrinsicWidth * height < intrinsicHeight * width ? width / intrinsicWidth : height / intrinsicHeight);
        matrix.postScale(f14, f14);
        float f15 = intrinsicWidth * f14;
        float f16 = f14 * intrinsicHeight;
        matrix.postTranslate((((f10 * (width - f15)) + width) - f15) * 0.5f, (((f11 * (height - f16)) + height) - f16) * 0.5f);
        matrix.postRotate(f13, width / 2.0f, height / 2.0f);
        setImageMatrix(matrix);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private void setOverlay(boolean z10) {
        this.mOverlay = z10;
    }

    private void updateViewMatrix() {
        if (Float.isNaN(this.mPanX) && Float.isNaN(this.mPanY) && Float.isNaN(this.mZoom) && Float.isNaN(this.mRotate)) {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            setMatrix();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getBrightness() {
        return this.mImageMatrix.mBrightness;
    }

    public float getContrast() {
        return this.mImageMatrix.mContrast;
    }

    public float getCrossfade() {
        return this.mCrossfade;
    }

    public float getImagePanX() {
        return this.mPanX;
    }

    public float getImagePanY() {
        return this.mPanY;
    }

    public float getImageRotate() {
        return this.mRotate;
    }

    public float getImageZoom() {
        return this.mZoom;
    }

    public float getRound() {
        return this.mRound;
    }

    public float getRoundPercent() {
        return this.mRoundPercent;
    }

    public float getSaturation() {
        return this.mImageMatrix.mSaturation;
    }

    public float getWarmth() {
        return this.mImageMatrix.mWarmth;
    }

    @Override // android.view.View
    public void layout(int i9, int i10, int i11, int i12) {
        super.layout(i9, i10, i11, i12);
        setMatrix();
    }

    public void setAltImageResource(int i9) {
        Drawable mutate = AppCompatResources.getDrawable(getContext(), i9).mutate();
        this.mAltDrawable = mutate;
        Drawable[] drawableArr = this.mLayers;
        drawableArr[0] = this.mDrawable;
        drawableArr[1] = mutate;
        LayerDrawable layerDrawable = new LayerDrawable(this.mLayers);
        this.mLayer = layerDrawable;
        super.setImageDrawable(layerDrawable);
        setCrossfade(this.mCrossfade);
    }

    public void setBrightness(float f10) {
        ImageMatrix imageMatrix = this.mImageMatrix;
        imageMatrix.mBrightness = f10;
        imageMatrix.updateMatrix(this);
    }

    public void setContrast(float f10) {
        ImageMatrix imageMatrix = this.mImageMatrix;
        imageMatrix.mContrast = f10;
        imageMatrix.updateMatrix(this);
    }

    public void setCrossfade(float f10) {
        this.mCrossfade = f10;
        if (this.mLayers != null) {
            if (!this.mOverlay) {
                this.mLayer.getDrawable(0).setAlpha((int) ((1.0f - this.mCrossfade) * 255.0f));
            }
            this.mLayer.getDrawable(1).setAlpha((int) (this.mCrossfade * 255.0f));
            super.setImageDrawable(this.mLayer);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.mAltDrawable != null && drawable != null) {
            Drawable mutate = drawable.mutate();
            this.mDrawable = mutate;
            Drawable[] drawableArr = this.mLayers;
            drawableArr[0] = mutate;
            drawableArr[1] = this.mAltDrawable;
            LayerDrawable layerDrawable = new LayerDrawable(this.mLayers);
            this.mLayer = layerDrawable;
            super.setImageDrawable(layerDrawable);
            setCrossfade(this.mCrossfade);
            return;
        }
        super.setImageDrawable(drawable);
    }

    public void setImagePanX(float f10) {
        this.mPanX = f10;
        updateViewMatrix();
    }

    public void setImagePanY(float f10) {
        this.mPanY = f10;
        updateViewMatrix();
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i9) {
        if (this.mAltDrawable != null) {
            Drawable mutate = AppCompatResources.getDrawable(getContext(), i9).mutate();
            this.mDrawable = mutate;
            Drawable[] drawableArr = this.mLayers;
            drawableArr[0] = mutate;
            drawableArr[1] = this.mAltDrawable;
            LayerDrawable layerDrawable = new LayerDrawable(this.mLayers);
            this.mLayer = layerDrawable;
            super.setImageDrawable(layerDrawable);
            setCrossfade(this.mCrossfade);
            return;
        }
        super.setImageResource(i9);
    }

    public void setImageRotate(float f10) {
        this.mRotate = f10;
        updateViewMatrix();
    }

    public void setImageZoom(float f10) {
        this.mZoom = f10;
        updateViewMatrix();
    }

    @RequiresApi(21)
    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.mRound = f10;
            float f11 = this.mRoundPercent;
            this.mRoundPercent = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.mRound != f10;
        this.mRound = f10;
        if (f10 != 0.0f) {
            if (this.mPath == null) {
                this.mPath = new Path();
            }
            if (this.mRect == null) {
                this.mRect = new RectF();
            }
            if (this.mViewOutlineProvider == null) {
                ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.2
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.mRound);
                    }
                };
                this.mViewOutlineProvider = viewOutlineProvider;
                setOutlineProvider(viewOutlineProvider);
            }
            setClipToOutline(true);
            this.mRect.set(0.0f, 0.0f, getWidth(), getHeight());
            this.mPath.reset();
            Path path = this.mPath;
            RectF rectF = this.mRect;
            float f12 = this.mRound;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    @RequiresApi(21)
    public void setRoundPercent(float f10) {
        boolean z10 = this.mRoundPercent != f10;
        this.mRoundPercent = f10;
        if (f10 != 0.0f) {
            if (this.mPath == null) {
                this.mPath = new Path();
            }
            if (this.mRect == null) {
                this.mRect = new RectF();
            }
            if (this.mViewOutlineProvider == null) {
                ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.1
                    @Override // android.view.ViewOutlineProvider
                    public void getOutline(View view, Outline outline) {
                        int width = ImageFilterView.this.getWidth();
                        int height = ImageFilterView.this.getHeight();
                        outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.mRoundPercent) / 2.0f);
                    }
                };
                this.mViewOutlineProvider = viewOutlineProvider;
                setOutlineProvider(viewOutlineProvider);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.mRoundPercent) / 2.0f;
            this.mRect.set(0.0f, 0.0f, width, height);
            this.mPath.reset();
            this.mPath.addRoundRect(this.mRect, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f10) {
        ImageMatrix imageMatrix = this.mImageMatrix;
        imageMatrix.mSaturation = f10;
        imageMatrix.updateMatrix(this);
    }

    public void setWarmth(float f10) {
        ImageMatrix imageMatrix = this.mImageMatrix;
        imageMatrix.mWarmth = f10;
        imageMatrix.updateMatrix(this);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mImageMatrix = new ImageMatrix();
        this.mOverlay = true;
        this.mAltDrawable = null;
        this.mDrawable = null;
        this.mCrossfade = 0.0f;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mLayers = new Drawable[2];
        this.mPanX = Float.NaN;
        this.mPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mImageMatrix = new ImageMatrix();
        this.mOverlay = true;
        this.mAltDrawable = null;
        this.mDrawable = null;
        this.mCrossfade = 0.0f;
        this.mRoundPercent = 0.0f;
        this.mRound = Float.NaN;
        this.mLayers = new Drawable[2];
        this.mPanX = Float.NaN;
        this.mPanY = Float.NaN;
        this.mZoom = Float.NaN;
        this.mRotate = Float.NaN;
        init(context, attributeSet);
    }
}
