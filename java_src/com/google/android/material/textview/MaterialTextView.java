package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes2.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    private void applyLineHeightFromViewAppearance(@NonNull Resources.Theme theme, int i9) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i9, R.styleable.MaterialTextAppearance);
        int readFirstAvailableDimension = readFirstAvailableDimension(getContext(), obtainStyledAttributes, R.styleable.MaterialTextAppearance_android_lineHeight, R.styleable.MaterialTextAppearance_lineHeight);
        obtainStyledAttributes.recycle();
        if (readFirstAvailableDimension >= 0) {
            setLineHeight(readFirstAvailableDimension);
        }
    }

    private static boolean canApplyTextAppearanceLineHeight(Context context) {
        return MaterialAttributes.resolveBoolean(context, R.attr.textAppearanceLineHeightEnabled, true);
    }

    private static int findViewAppearanceResourceId(@NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i9, int i10) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaterialTextView, i9, i10);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.MaterialTextView_android_textAppearance, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private static int readFirstAvailableDimension(@NonNull Context context, @NonNull TypedArray typedArray, @NonNull @StyleableRes int... iArr) {
        int i9 = -1;
        for (int i10 = 0; i10 < iArr.length && i9 < 0; i10++) {
            i9 = MaterialResources.getDimensionPixelSize(context, typedArray, iArr[i10], -1);
        }
        return i9;
    }

    private static boolean viewAttrsHasLineHeight(@NonNull Context context, @NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i9, int i10) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaterialTextView, i9, i10);
        int readFirstAvailableDimension = readFirstAvailableDimension(context, obtainStyledAttributes, R.styleable.MaterialTextView_android_lineHeight, R.styleable.MaterialTextView_lineHeight);
        obtainStyledAttributes.recycle();
        return readFirstAvailableDimension != -1;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i9) {
        super.setTextAppearance(context, i9);
        if (canApplyTextAppearanceLineHeight(context)) {
            applyLineHeightFromViewAppearance(context.getTheme(), i9);
        }
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, 0);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i9, i10), attributeSet, i9);
        int findViewAppearanceResourceId;
        Context context2 = getContext();
        if (canApplyTextAppearanceLineHeight(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (viewAttrsHasLineHeight(context2, theme, attributeSet, i9, i10) || (findViewAppearanceResourceId = findViewAppearanceResourceId(theme, attributeSet, i9, i10)) == -1) {
                return;
            }
            applyLineHeightFromViewAppearance(theme, findViewAppearanceResourceId);
        }
    }
}
