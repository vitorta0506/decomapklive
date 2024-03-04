package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TintTypedArray {
    private final Context mContext;
    private TypedValue mTypedValue;
    private final TypedArray mWrapped;

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.mContext = context;
        this.mWrapped = typedArray;
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public boolean getBoolean(int i9, boolean z10) {
        return this.mWrapped.getBoolean(i9, z10);
    }

    @RequiresApi(21)
    public int getChangingConfigurations() {
        return this.mWrapped.getChangingConfigurations();
    }

    public int getColor(int i9, int i10) {
        return this.mWrapped.getColor(i9, i10);
    }

    public ColorStateList getColorStateList(int i9) {
        int resourceId;
        ColorStateList colorStateList;
        return (!this.mWrapped.hasValue(i9) || (resourceId = this.mWrapped.getResourceId(i9, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(this.mContext, resourceId)) == null) ? this.mWrapped.getColorStateList(i9) : colorStateList;
    }

    public float getDimension(int i9, float f10) {
        return this.mWrapped.getDimension(i9, f10);
    }

    public int getDimensionPixelOffset(int i9, int i10) {
        return this.mWrapped.getDimensionPixelOffset(i9, i10);
    }

    public int getDimensionPixelSize(int i9, int i10) {
        return this.mWrapped.getDimensionPixelSize(i9, i10);
    }

    public Drawable getDrawable(int i9) {
        int resourceId;
        if (this.mWrapped.hasValue(i9) && (resourceId = this.mWrapped.getResourceId(i9, 0)) != 0) {
            return AppCompatResources.getDrawable(this.mContext, resourceId);
        }
        return this.mWrapped.getDrawable(i9);
    }

    public Drawable getDrawableIfKnown(int i9) {
        int resourceId;
        if (!this.mWrapped.hasValue(i9) || (resourceId = this.mWrapped.getResourceId(i9, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.get().getDrawable(this.mContext, resourceId, true);
    }

    public float getFloat(int i9, float f10) {
        return this.mWrapped.getFloat(i9, f10);
    }

    @Nullable
    public Typeface getFont(@StyleableRes int i9, int i10, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.mWrapped.getResourceId(i9, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        return ResourcesCompat.getFont(this.mContext, resourceId, this.mTypedValue, i10, fontCallback);
    }

    public float getFraction(int i9, int i10, int i11, float f10) {
        return this.mWrapped.getFraction(i9, i10, i11, f10);
    }

    public int getIndex(int i9) {
        return this.mWrapped.getIndex(i9);
    }

    public int getIndexCount() {
        return this.mWrapped.getIndexCount();
    }

    public int getInt(int i9, int i10) {
        return this.mWrapped.getInt(i9, i10);
    }

    public int getInteger(int i9, int i10) {
        return this.mWrapped.getInteger(i9, i10);
    }

    public int getLayoutDimension(int i9, String str) {
        return this.mWrapped.getLayoutDimension(i9, str);
    }

    public String getNonResourceString(int i9) {
        return this.mWrapped.getNonResourceString(i9);
    }

    public String getPositionDescription() {
        return this.mWrapped.getPositionDescription();
    }

    public int getResourceId(int i9, int i10) {
        return this.mWrapped.getResourceId(i9, i10);
    }

    public Resources getResources() {
        return this.mWrapped.getResources();
    }

    public String getString(int i9) {
        return this.mWrapped.getString(i9);
    }

    public CharSequence getText(int i9) {
        return this.mWrapped.getText(i9);
    }

    public CharSequence[] getTextArray(int i9) {
        return this.mWrapped.getTextArray(i9);
    }

    public int getType(int i9) {
        return this.mWrapped.getType(i9);
    }

    public boolean getValue(int i9, TypedValue typedValue) {
        return this.mWrapped.getValue(i9, typedValue);
    }

    public TypedArray getWrappedTypeArray() {
        return this.mWrapped;
    }

    public boolean hasValue(int i9) {
        return this.mWrapped.hasValue(i9);
    }

    public int length() {
        return this.mWrapped.length();
    }

    public TypedValue peekValue(int i9) {
        return this.mWrapped.peekValue(i9);
    }

    public void recycle() {
        this.mWrapped.recycle();
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i9, int i10) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i9, i10));
    }

    public int getLayoutDimension(int i9, int i10) {
        return this.mWrapped.getLayoutDimension(i9, i10);
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int i9, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i9, iArr));
    }
}
