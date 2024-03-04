package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
/* loaded from: classes2.dex */
public class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {
    private static final int BADGE_NUMBER_NONE = -1;
    public static final int BOTTOM_END = 8388693;
    public static final int BOTTOM_START = 8388691;
    static final String DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX = "+";
    private static final int DEFAULT_MAX_BADGE_CHARACTER_COUNT = 4;
    @StyleRes
    private static final int DEFAULT_STYLE = R.style.Widget_MaterialComponents_Badge;
    @AttrRes
    private static final int DEFAULT_THEME_ATTR = R.attr.badgeStyle;
    private static final int MAX_CIRCULAR_BADGE_NUMBER_COUNT = 9;
    public static final int TOP_END = 8388661;
    public static final int TOP_START = 8388659;
    @Nullable
    private WeakReference<View> anchorViewRef;
    @NonNull
    private final Rect badgeBounds;
    private float badgeCenterX;
    private float badgeCenterY;
    private float badgeRadius;
    private float badgeWidePadding;
    private float badgeWithTextRadius;
    @NonNull
    private final WeakReference<Context> contextRef;
    private float cornerRadius;
    @Nullable
    private WeakReference<FrameLayout> customBadgeParentRef;
    private float halfBadgeHeight;
    private float halfBadgeWidth;
    private int maxBadgeNumber;
    @NonNull
    private final SavedState savedState;
    @NonNull
    private final MaterialShapeDrawable shapeDrawable;
    @NonNull
    private final TextDrawableHelper textDrawableHelper;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface BadgeGravity {
    }

    private BadgeDrawable(@NonNull Context context) {
        this.contextRef = new WeakReference<>(context);
        ThemeEnforcement.checkMaterialTheme(context);
        Resources resources = context.getResources();
        this.badgeBounds = new Rect();
        this.shapeDrawable = new MaterialShapeDrawable();
        this.badgeRadius = resources.getDimensionPixelSize(R.dimen.mtrl_badge_radius);
        this.badgeWidePadding = resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding);
        this.badgeWithTextRadius = resources.getDimensionPixelSize(R.dimen.mtrl_badge_with_text_radius);
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.textDrawableHelper = textDrawableHelper;
        textDrawableHelper.getTextPaint().setTextAlign(Paint.Align.CENTER);
        this.savedState = new SavedState(context);
        setTextAppearanceResource(R.style.TextAppearance_MaterialComponents_Badge);
    }

    private void calculateCenterAndBounds(@NonNull Context context, @NonNull Rect rect, @NonNull View view) {
        int totalVerticalOffsetForState = getTotalVerticalOffsetForState();
        int i9 = this.savedState.badgeGravity;
        if (i9 != 8388691 && i9 != 8388693) {
            this.badgeCenterY = rect.top + totalVerticalOffsetForState;
        } else {
            this.badgeCenterY = rect.bottom - totalVerticalOffsetForState;
        }
        if (getNumber() <= 9) {
            float f10 = !hasNumber() ? this.badgeRadius : this.badgeWithTextRadius;
            this.cornerRadius = f10;
            this.halfBadgeHeight = f10;
            this.halfBadgeWidth = f10;
        } else {
            float f11 = this.badgeWithTextRadius;
            this.cornerRadius = f11;
            this.halfBadgeHeight = f11;
            this.halfBadgeWidth = (this.textDrawableHelper.getTextWidth(getBadgeText()) / 2.0f) + this.badgeWidePadding;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(hasNumber() ? R.dimen.mtrl_badge_text_horizontal_edge_offset : R.dimen.mtrl_badge_horizontal_edge_offset);
        int totalHorizontalOffsetForState = getTotalHorizontalOffsetForState();
        int i10 = this.savedState.badgeGravity;
        if (i10 != 8388659 && i10 != 8388691) {
            this.badgeCenterX = ViewCompat.getLayoutDirection(view) == 0 ? ((rect.right + this.halfBadgeWidth) - dimensionPixelSize) - totalHorizontalOffsetForState : (rect.left - this.halfBadgeWidth) + dimensionPixelSize + totalHorizontalOffsetForState;
        } else {
            this.badgeCenterX = ViewCompat.getLayoutDirection(view) == 0 ? (rect.left - this.halfBadgeWidth) + dimensionPixelSize + totalHorizontalOffsetForState : ((rect.right + this.halfBadgeWidth) - dimensionPixelSize) - totalHorizontalOffsetForState;
        }
    }

    @NonNull
    public static BadgeDrawable create(@NonNull Context context) {
        return createFromAttributes(context, null, DEFAULT_THEME_ATTR, DEFAULT_STYLE);
    }

    @NonNull
    private static BadgeDrawable createFromAttributes(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i9, @StyleRes int i10) {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.loadDefaultStateFromAttributes(context, attributeSet, i9, i10);
        return badgeDrawable;
    }

    @NonNull
    public static BadgeDrawable createFromResource(@NonNull Context context, @XmlRes int i9) {
        AttributeSet parseDrawableXml = DrawableUtils.parseDrawableXml(context, i9, "badge");
        int styleAttribute = parseDrawableXml.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = DEFAULT_STYLE;
        }
        return createFromAttributes(context, parseDrawableXml, DEFAULT_THEME_ATTR, styleAttribute);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static BadgeDrawable createFromSavedState(@NonNull Context context, @NonNull SavedState savedState) {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.restoreFromSavedState(savedState);
        return badgeDrawable;
    }

    private void drawText(Canvas canvas) {
        Rect rect = new Rect();
        String badgeText = getBadgeText();
        this.textDrawableHelper.getTextPaint().getTextBounds(badgeText, 0, badgeText.length(), rect);
        canvas.drawText(badgeText, this.badgeCenterX, this.badgeCenterY + (rect.height() / 2), this.textDrawableHelper.getTextPaint());
    }

    @NonNull
    private String getBadgeText() {
        if (getNumber() <= this.maxBadgeNumber) {
            return NumberFormat.getInstance().format(getNumber());
        }
        Context context = this.contextRef.get();
        return context == null ? "" : context.getString(R.string.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.maxBadgeNumber), DEFAULT_EXCEED_MAX_BADGE_NUMBER_SUFFIX);
    }

    private int getTotalHorizontalOffsetForState() {
        return (hasNumber() ? this.savedState.horizontalOffsetWithText : this.savedState.horizontalOffsetWithoutText) + this.savedState.additionalHorizontalOffset;
    }

    private int getTotalVerticalOffsetForState() {
        return (hasNumber() ? this.savedState.verticalOffsetWithText : this.savedState.verticalOffsetWithoutText) + this.savedState.additionalVerticalOffset;
    }

    private void loadDefaultStateFromAttributes(Context context, AttributeSet attributeSet, @AttrRes int i9, @StyleRes int i10) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Badge, i9, i10, new int[0]);
        setMaxCharacterCount(obtainStyledAttributes.getInt(R.styleable.Badge_maxCharacterCount, 4));
        int i11 = R.styleable.Badge_number;
        if (obtainStyledAttributes.hasValue(i11)) {
            setNumber(obtainStyledAttributes.getInt(i11, 0));
        }
        setBackgroundColor(readColorFromAttributes(context, obtainStyledAttributes, R.styleable.Badge_backgroundColor));
        int i12 = R.styleable.Badge_badgeTextColor;
        if (obtainStyledAttributes.hasValue(i12)) {
            setBadgeTextColor(readColorFromAttributes(context, obtainStyledAttributes, i12));
        }
        setBadgeGravity(obtainStyledAttributes.getInt(R.styleable.Badge_badgeGravity, TOP_END));
        setHorizontalOffsetWithoutText(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_horizontalOffset, 0));
        setVerticalOffsetWithoutText(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_verticalOffset, 0));
        setHorizontalOffsetWithText(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_horizontalOffsetWithText, getHorizontalOffsetWithoutText()));
        setVerticalOffsetWithText(obtainStyledAttributes.getDimensionPixelOffset(R.styleable.Badge_verticalOffsetWithText, getVerticalOffsetWithoutText()));
        int i13 = R.styleable.Badge_badgeRadius;
        if (obtainStyledAttributes.hasValue(i13)) {
            this.badgeRadius = obtainStyledAttributes.getDimensionPixelSize(i13, (int) this.badgeRadius);
        }
        int i14 = R.styleable.Badge_badgeWidePadding;
        if (obtainStyledAttributes.hasValue(i14)) {
            this.badgeWidePadding = obtainStyledAttributes.getDimensionPixelSize(i14, (int) this.badgeWidePadding);
        }
        int i15 = R.styleable.Badge_badgeWithTextRadius;
        if (obtainStyledAttributes.hasValue(i15)) {
            this.badgeWithTextRadius = obtainStyledAttributes.getDimensionPixelSize(i15, (int) this.badgeWithTextRadius);
        }
        obtainStyledAttributes.recycle();
    }

    private static int readColorFromAttributes(Context context, @NonNull TypedArray typedArray, @StyleableRes int i9) {
        return MaterialResources.getColorStateList(context, typedArray, i9).getDefaultColor();
    }

    private void restoreFromSavedState(@NonNull SavedState savedState) {
        setMaxCharacterCount(savedState.maxCharacterCount);
        if (savedState.number != -1) {
            setNumber(savedState.number);
        }
        setBackgroundColor(savedState.backgroundColor);
        setBadgeTextColor(savedState.badgeTextColor);
        setBadgeGravity(savedState.badgeGravity);
        setHorizontalOffsetWithoutText(savedState.horizontalOffsetWithoutText);
        setVerticalOffsetWithoutText(savedState.verticalOffsetWithoutText);
        setHorizontalOffsetWithText(savedState.horizontalOffsetWithText);
        setVerticalOffsetWithText(savedState.verticalOffsetWithText);
        setAdditionalHorizontalOffset(savedState.additionalHorizontalOffset);
        setAdditionalVerticalOffset(savedState.additionalVerticalOffset);
        setVisible(savedState.isVisible);
    }

    private void setTextAppearance(@Nullable TextAppearance textAppearance) {
        Context context;
        if (this.textDrawableHelper.getTextAppearance() == textAppearance || (context = this.contextRef.get()) == null) {
            return;
        }
        this.textDrawableHelper.setTextAppearance(textAppearance, context);
        updateCenterAndBounds();
    }

    private void setTextAppearanceResource(@StyleRes int i9) {
        Context context = this.contextRef.get();
        if (context == null) {
            return;
        }
        setTextAppearance(new TextAppearance(context, i9));
    }

    private void tryWrapAnchorInCompatParent(final View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != R.id.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.customBadgeParentRef;
            if (weakReference == null || weakReference.get() != viewGroup) {
                updateAnchorParentToNotClip(view);
                final FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(R.id.mtrl_anchor_parent);
                frameLayout.setClipChildren(false);
                frameLayout.setClipToPadding(false);
                frameLayout.setLayoutParams(view.getLayoutParams());
                frameLayout.setMinimumWidth(view.getWidth());
                frameLayout.setMinimumHeight(view.getHeight());
                int indexOfChild = viewGroup.indexOfChild(view);
                viewGroup.removeViewAt(indexOfChild);
                view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                frameLayout.addView(view);
                viewGroup.addView(frameLayout, indexOfChild);
                this.customBadgeParentRef = new WeakReference<>(frameLayout);
                frameLayout.post(new Runnable() { // from class: com.google.android.material.badge.BadgeDrawable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        BadgeDrawable.this.updateBadgeCoordinates(view, frameLayout);
                    }
                });
            }
        }
    }

    private static void updateAnchorParentToNotClip(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private void updateCenterAndBounds() {
        Context context = this.contextRef.get();
        WeakReference<View> weakReference = this.anchorViewRef;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.badgeBounds);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.customBadgeParentRef;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null || BadgeUtils.USE_COMPAT_PARENT) {
            if (frameLayout == null) {
                frameLayout = (ViewGroup) view.getParent();
            }
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        calculateCenterAndBounds(context, rect2, view);
        BadgeUtils.updateBadgeBounds(this.badgeBounds, this.badgeCenterX, this.badgeCenterY, this.halfBadgeWidth, this.halfBadgeHeight);
        this.shapeDrawable.setCornerSize(this.cornerRadius);
        if (rect.equals(this.badgeBounds)) {
            return;
        }
        this.shapeDrawable.setBounds(this.badgeBounds);
    }

    private void updateMaxBadgeNumber() {
        this.maxBadgeNumber = ((int) Math.pow(10.0d, getMaxCharacterCount() - 1.0d)) - 1;
    }

    public void clearNumber() {
        this.savedState.number = -1;
        updateCenterAndBounds();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.shapeDrawable.draw(canvas);
        if (hasNumber()) {
            drawText(canvas);
        }
    }

    int getAdditionalHorizontalOffset() {
        return this.savedState.additionalHorizontalOffset;
    }

    int getAdditionalVerticalOffset() {
        return this.savedState.additionalVerticalOffset;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.savedState.alpha;
    }

    @ColorInt
    public int getBackgroundColor() {
        return this.shapeDrawable.getFillColor().getDefaultColor();
    }

    public int getBadgeGravity() {
        return this.savedState.badgeGravity;
    }

    @ColorInt
    public int getBadgeTextColor() {
        return this.textDrawableHelper.getTextPaint().getColor();
    }

    @Nullable
    public CharSequence getContentDescription() {
        Context context;
        if (isVisible()) {
            if (hasNumber()) {
                if (this.savedState.contentDescriptionQuantityStrings <= 0 || (context = this.contextRef.get()) == null) {
                    return null;
                }
                if (getNumber() <= this.maxBadgeNumber) {
                    return context.getResources().getQuantityString(this.savedState.contentDescriptionQuantityStrings, getNumber(), Integer.valueOf(getNumber()));
                }
                return context.getString(this.savedState.contentDescriptionExceedsMaxBadgeNumberRes, Integer.valueOf(this.maxBadgeNumber));
            }
            return this.savedState.contentDescriptionNumberless;
        }
        return null;
    }

    @Nullable
    public FrameLayout getCustomBadgeParent() {
        WeakReference<FrameLayout> weakReference = this.customBadgeParentRef;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public int getHorizontalOffset() {
        return this.savedState.horizontalOffsetWithoutText;
    }

    @Px
    public int getHorizontalOffsetWithText() {
        return this.savedState.horizontalOffsetWithText;
    }

    @Px
    public int getHorizontalOffsetWithoutText() {
        return this.savedState.horizontalOffsetWithoutText;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.badgeBounds.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.badgeBounds.width();
    }

    public int getMaxCharacterCount() {
        return this.savedState.maxCharacterCount;
    }

    public int getNumber() {
        if (hasNumber()) {
            return this.savedState.number;
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @NonNull
    public SavedState getSavedState() {
        return this.savedState;
    }

    public int getVerticalOffset() {
        return this.savedState.verticalOffsetWithoutText;
    }

    @Px
    public int getVerticalOffsetWithText() {
        return this.savedState.verticalOffsetWithText;
    }

    @Px
    public int getVerticalOffsetWithoutText() {
        return this.savedState.verticalOffsetWithoutText;
    }

    public boolean hasNumber() {
        return this.savedState.number != -1;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onTextSizeChange() {
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalHorizontalOffset(int i9) {
        this.savedState.additionalHorizontalOffset = i9;
        updateCenterAndBounds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdditionalVerticalOffset(int i9) {
        this.savedState.additionalVerticalOffset = i9;
        updateCenterAndBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        this.savedState.alpha = i9;
        this.textDrawableHelper.getTextPaint().setAlpha(i9);
        invalidateSelf();
    }

    public void setBackgroundColor(@ColorInt int i9) {
        this.savedState.backgroundColor = i9;
        ColorStateList valueOf = ColorStateList.valueOf(i9);
        if (this.shapeDrawable.getFillColor() != valueOf) {
            this.shapeDrawable.setFillColor(valueOf);
            invalidateSelf();
        }
    }

    public void setBadgeGravity(int i9) {
        if (this.savedState.badgeGravity != i9) {
            this.savedState.badgeGravity = i9;
            WeakReference<View> weakReference = this.anchorViewRef;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            View view = this.anchorViewRef.get();
            WeakReference<FrameLayout> weakReference2 = this.customBadgeParentRef;
            updateBadgeCoordinates(view, weakReference2 != null ? weakReference2.get() : null);
        }
    }

    public void setBadgeTextColor(@ColorInt int i9) {
        this.savedState.badgeTextColor = i9;
        if (this.textDrawableHelper.getTextPaint().getColor() != i9) {
            this.textDrawableHelper.getTextPaint().setColor(i9);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public void setContentDescriptionExceedsMaxBadgeNumberStringResource(@StringRes int i9) {
        this.savedState.contentDescriptionExceedsMaxBadgeNumberRes = i9;
    }

    public void setContentDescriptionNumberless(CharSequence charSequence) {
        this.savedState.contentDescriptionNumberless = charSequence;
    }

    public void setContentDescriptionQuantityStringsResource(@PluralsRes int i9) {
        this.savedState.contentDescriptionQuantityStrings = i9;
    }

    public void setHorizontalOffset(int i9) {
        setHorizontalOffsetWithoutText(i9);
        setHorizontalOffsetWithText(i9);
    }

    public void setHorizontalOffsetWithText(@Px int i9) {
        this.savedState.horizontalOffsetWithText = i9;
        updateCenterAndBounds();
    }

    public void setHorizontalOffsetWithoutText(@Px int i9) {
        this.savedState.horizontalOffsetWithoutText = i9;
        updateCenterAndBounds();
    }

    public void setMaxCharacterCount(int i9) {
        if (this.savedState.maxCharacterCount != i9) {
            this.savedState.maxCharacterCount = i9;
            updateMaxBadgeNumber();
            this.textDrawableHelper.setTextWidthDirty(true);
            updateCenterAndBounds();
            invalidateSelf();
        }
    }

    public void setNumber(int i9) {
        int max = Math.max(0, i9);
        if (this.savedState.number != max) {
            this.savedState.number = max;
            this.textDrawableHelper.setTextWidthDirty(true);
            updateCenterAndBounds();
            invalidateSelf();
        }
    }

    public void setVerticalOffset(int i9) {
        setVerticalOffsetWithoutText(i9);
        setVerticalOffsetWithText(i9);
    }

    public void setVerticalOffsetWithText(@Px int i9) {
        this.savedState.verticalOffsetWithText = i9;
        updateCenterAndBounds();
    }

    public void setVerticalOffsetWithoutText(@Px int i9) {
        this.savedState.verticalOffsetWithoutText = i9;
        updateCenterAndBounds();
    }

    public void setVisible(boolean z10) {
        setVisible(z10, false);
        this.savedState.isVisible = z10;
        if (!BadgeUtils.USE_COMPAT_PARENT || getCustomBadgeParent() == null || z10) {
            return;
        }
        ((ViewGroup) getCustomBadgeParent().getParent()).invalidate();
    }

    @Deprecated
    public void updateBadgeCoordinates(@NonNull View view, @Nullable ViewGroup viewGroup) {
        if (viewGroup instanceof FrameLayout) {
            updateBadgeCoordinates(view, (FrameLayout) viewGroup);
            return;
        }
        throw new IllegalArgumentException("customBadgeParent must be a FrameLayout");
    }

    public void updateBadgeCoordinates(@NonNull View view) {
        updateBadgeCoordinates(view, (FrameLayout) null);
    }

    public void updateBadgeCoordinates(@NonNull View view, @Nullable FrameLayout frameLayout) {
        this.anchorViewRef = new WeakReference<>(view);
        boolean z10 = BadgeUtils.USE_COMPAT_PARENT;
        if (z10 && frameLayout == null) {
            tryWrapAnchorInCompatParent(view);
        } else {
            this.customBadgeParentRef = new WeakReference<>(frameLayout);
        }
        if (!z10) {
            updateAnchorParentToNotClip(view);
        }
        updateCenterAndBounds();
        invalidateSelf();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.badge.BadgeDrawable.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }
        };
        @Dimension(unit = 1)
        private int additionalHorizontalOffset;
        @Dimension(unit = 1)
        private int additionalVerticalOffset;
        private int alpha;
        @ColorInt
        private int backgroundColor;
        private int badgeGravity;
        @ColorInt
        private int badgeTextColor;
        @StringRes
        private int contentDescriptionExceedsMaxBadgeNumberRes;
        @Nullable
        private CharSequence contentDescriptionNumberless;
        @PluralsRes
        private int contentDescriptionQuantityStrings;
        @Dimension(unit = 1)
        private int horizontalOffsetWithText;
        @Dimension(unit = 1)
        private int horizontalOffsetWithoutText;
        private boolean isVisible;
        private int maxCharacterCount;
        private int number;
        @Dimension(unit = 1)
        private int verticalOffsetWithText;
        @Dimension(unit = 1)
        private int verticalOffsetWithoutText;

        public SavedState(@NonNull Context context) {
            this.alpha = 255;
            this.number = -1;
            this.badgeTextColor = new TextAppearance(context, R.style.TextAppearance_MaterialComponents_Badge).getTextColor().getDefaultColor();
            this.contentDescriptionNumberless = context.getString(R.string.mtrl_badge_numberless_content_description);
            this.contentDescriptionQuantityStrings = R.plurals.mtrl_badge_content_description;
            this.contentDescriptionExceedsMaxBadgeNumberRes = R.string.mtrl_exceed_max_badge_number_content_description;
            this.isVisible = true;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i9) {
            parcel.writeInt(this.backgroundColor);
            parcel.writeInt(this.badgeTextColor);
            parcel.writeInt(this.alpha);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            parcel.writeString(this.contentDescriptionNumberless.toString());
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeInt(this.badgeGravity);
            parcel.writeInt(this.horizontalOffsetWithoutText);
            parcel.writeInt(this.verticalOffsetWithoutText);
            parcel.writeInt(this.horizontalOffsetWithText);
            parcel.writeInt(this.verticalOffsetWithText);
            parcel.writeInt(this.additionalHorizontalOffset);
            parcel.writeInt(this.additionalVerticalOffset);
            parcel.writeInt(this.isVisible ? 1 : 0);
        }

        protected SavedState(@NonNull Parcel parcel) {
            this.alpha = 255;
            this.number = -1;
            this.backgroundColor = parcel.readInt();
            this.badgeTextColor = parcel.readInt();
            this.alpha = parcel.readInt();
            this.number = parcel.readInt();
            this.maxCharacterCount = parcel.readInt();
            this.contentDescriptionNumberless = parcel.readString();
            this.contentDescriptionQuantityStrings = parcel.readInt();
            this.badgeGravity = parcel.readInt();
            this.horizontalOffsetWithoutText = parcel.readInt();
            this.verticalOffsetWithoutText = parcel.readInt();
            this.horizontalOffsetWithText = parcel.readInt();
            this.verticalOffsetWithText = parcel.readInt();
            this.additionalHorizontalOffset = parcel.readInt();
            this.additionalVerticalOffset = parcel.readInt();
            this.isVisible = parcel.readInt() != 0;
        }
    }
}
