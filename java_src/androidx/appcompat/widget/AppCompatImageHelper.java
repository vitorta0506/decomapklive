package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AppCompatImageHelper {
    private TintInfo mImageTint;
    private TintInfo mInternalImageTint;
    private int mLevel = 0;
    private TintInfo mTmpInfo;
    @NonNull
    private final ImageView mView;

    public AppCompatImageHelper(@NonNull ImageView imageView) {
        this.mView = imageView;
    }

    private boolean applyFrameworkTintUsingColorFilter(@NonNull Drawable drawable) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new TintInfo();
        }
        TintInfo tintInfo = this.mTmpInfo;
        tintInfo.clear();
        ColorStateList imageTintList = ImageViewCompat.getImageTintList(this.mView);
        if (imageTintList != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = imageTintList;
        }
        PorterDuff.Mode imageTintMode = ImageViewCompat.getImageTintMode(this.mView);
        if (imageTintMode != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = imageTintMode;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
            return true;
        }
        return false;
    }

    private boolean shouldApplyFrameworkTintUsingColorFilter() {
        int i9 = Build.VERSION.SDK_INT;
        return i9 > 21 ? this.mInternalImageTint != null : i9 == 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applyImageLevel() {
        if (this.mView.getDrawable() != null) {
            this.mView.getDrawable().setLevel(this.mLevel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applySupportImageTint() {
        Drawable drawable = this.mView.getDrawable();
        if (drawable != null) {
            DrawableUtils.fixDrawable(drawable);
        }
        if (drawable != null) {
            if (shouldApplyFrameworkTintUsingColorFilter() && applyFrameworkTintUsingColorFilter(drawable)) {
                return;
            }
            TintInfo tintInfo = this.mImageTint;
            if (tintInfo != null) {
                AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.mInternalImageTint;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.tintDrawable(drawable, tintInfo2, this.mView.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getSupportImageTintList() {
        TintInfo tintInfo = this.mImageTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode getSupportImageTintMode() {
        TintInfo tintInfo = this.mImageTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasOverlappingRendering() {
        return !(this.mView.getBackground() instanceof RippleDrawable);
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i9) {
        int resourceId;
        Context context = this.mView.getContext();
        int[] iArr = R.styleable.AppCompatImageView;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i9, 0);
        ImageView imageView = this.mView;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i9, 0);
        try {
            Drawable drawable = this.mView.getDrawable();
            if (drawable == null && (resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = AppCompatResources.getDrawable(this.mView.getContext(), resourceId)) != null) {
                this.mView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            int i10 = R.styleable.AppCompatImageView_tint;
            if (obtainStyledAttributes.hasValue(i10)) {
                ImageViewCompat.setImageTintList(this.mView, obtainStyledAttributes.getColorStateList(i10));
            }
            int i11 = R.styleable.AppCompatImageView_tintMode;
            if (obtainStyledAttributes.hasValue(i11)) {
                ImageViewCompat.setImageTintMode(this.mView, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i11, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void obtainLevelFromDrawable(@NonNull Drawable drawable) {
        this.mLevel = drawable.getLevel();
    }

    public void setImageResource(int i9) {
        if (i9 != 0) {
            Drawable drawable = AppCompatResources.getDrawable(this.mView.getContext(), i9);
            if (drawable != null) {
                DrawableUtils.fixDrawable(drawable);
            }
            this.mView.setImageDrawable(drawable);
        } else {
            this.mView.setImageDrawable(null);
        }
        applySupportImageTint();
    }

    void setInternalImageTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalImageTint == null) {
                this.mInternalImageTint = new TintInfo();
            }
            TintInfo tintInfo = this.mInternalImageTint;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.mInternalImageTint = null;
        }
        applySupportImageTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.mImageTint == null) {
            this.mImageTint = new TintInfo();
        }
        TintInfo tintInfo = this.mImageTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        applySupportImageTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.mImageTint == null) {
            this.mImageTint = new TintInfo();
        }
        TintInfo tintInfo = this.mImageTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        applySupportImageTint();
    }
}
