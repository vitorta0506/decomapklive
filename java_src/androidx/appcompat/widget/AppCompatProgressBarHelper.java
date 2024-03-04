package androidx.appcompat.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.drawable.WrappedDrawable;
/* loaded from: classes.dex */
class AppCompatProgressBarHelper {
    private static final int[] TINT_ATTRS = {16843067, 16843068};
    private Bitmap mSampleTile;
    private final ProgressBar mView;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static void transferLayerProperties(LayerDrawable layerDrawable, LayerDrawable layerDrawable2, int i9) {
            layerDrawable2.setLayerGravity(i9, layerDrawable.getLayerGravity(i9));
            layerDrawable2.setLayerWidth(i9, layerDrawable.getLayerWidth(i9));
            layerDrawable2.setLayerHeight(i9, layerDrawable.getLayerHeight(i9));
            layerDrawable2.setLayerInsetLeft(i9, layerDrawable.getLayerInsetLeft(i9));
            layerDrawable2.setLayerInsetRight(i9, layerDrawable.getLayerInsetRight(i9));
            layerDrawable2.setLayerInsetTop(i9, layerDrawable.getLayerInsetTop(i9));
            layerDrawable2.setLayerInsetBottom(i9, layerDrawable.getLayerInsetBottom(i9));
            layerDrawable2.setLayerInsetStart(i9, layerDrawable.getLayerInsetStart(i9));
            layerDrawable2.setLayerInsetEnd(i9, layerDrawable.getLayerInsetEnd(i9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatProgressBarHelper(ProgressBar progressBar) {
        this.mView = progressBar;
    }

    private Shape getDrawableShape() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    private Drawable tileifyIndeterminate(Drawable drawable) {
        if (drawable instanceof AnimationDrawable) {
            AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            AnimationDrawable animationDrawable2 = new AnimationDrawable();
            animationDrawable2.setOneShot(animationDrawable.isOneShot());
            for (int i9 = 0; i9 < numberOfFrames; i9++) {
                Drawable tileify = tileify(animationDrawable.getFrame(i9), true);
                tileify.setLevel(10000);
                animationDrawable2.addFrame(tileify, animationDrawable.getDuration(i9));
            }
            animationDrawable2.setLevel(10000);
            return animationDrawable2;
        }
        return drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap getSampleTile() {
        return this.mSampleTile;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadFromAttributes(AttributeSet attributeSet, int i9) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attributeSet, TINT_ATTRS, i9, 0);
        Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            this.mView.setIndeterminateDrawable(tileifyIndeterminate(drawableIfKnown));
        }
        Drawable drawableIfKnown2 = obtainStyledAttributes.getDrawableIfKnown(1);
        if (drawableIfKnown2 != null) {
            this.mView.setProgressDrawable(tileify(drawableIfKnown2, false));
        }
        obtainStyledAttributes.recycle();
    }

    @VisibleForTesting
    Drawable tileify(Drawable drawable, boolean z10) {
        if (drawable instanceof WrappedDrawable) {
            WrappedDrawable wrappedDrawable = (WrappedDrawable) drawable;
            Drawable wrappedDrawable2 = wrappedDrawable.getWrappedDrawable();
            if (wrappedDrawable2 != null) {
                wrappedDrawable.setWrappedDrawable(tileify(wrappedDrawable2, z10));
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i9 = 0; i9 < numberOfLayers; i9++) {
                int id2 = layerDrawable.getId(i9);
                drawableArr[i9] = tileify(layerDrawable.getDrawable(i9), id2 == 16908301 || id2 == 16908303);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                layerDrawable2.setId(i10, layerDrawable.getId(i10));
                if (Build.VERSION.SDK_INT >= 23) {
                    Api23Impl.transferLayerProperties(layerDrawable, layerDrawable2, i10);
                }
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (this.mSampleTile == null) {
                this.mSampleTile = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(getDrawableShape());
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            return z10 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
        }
        return drawable;
    }
}
