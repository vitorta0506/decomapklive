package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.android.material.resources.TextAppearance;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class CollapsingTextHelper {
    private static final boolean DEBUG_DRAW = false;
    private static final String ELLIPSIS_NORMAL = "…";
    private static final float FADE_MODE_THRESHOLD_FRACTION_RELATIVE = 0.5f;
    private static final String TAG = "CollapsingTextHelper";
    private boolean boundsChanged;
    @NonNull
    private final Rect collapsedBounds;
    private float collapsedDrawX;
    private float collapsedDrawY;
    private CancelableFontCallback collapsedFontCallback;
    private float collapsedLetterSpacing;
    private ColorStateList collapsedShadowColor;
    private float collapsedShadowDx;
    private float collapsedShadowDy;
    private float collapsedShadowRadius;
    private float collapsedTextBlend;
    private ColorStateList collapsedTextColor;
    private float collapsedTextWidth;
    private Typeface collapsedTypeface;
    @NonNull
    private final RectF currentBounds;
    private float currentDrawX;
    private float currentDrawY;
    private int currentOffsetY;
    private float currentTextSize;
    private Typeface currentTypeface;
    private boolean drawTitle;
    @NonNull
    private final Rect expandedBounds;
    private float expandedDrawX;
    private float expandedDrawY;
    private float expandedFirstLineDrawX;
    private CancelableFontCallback expandedFontCallback;
    private float expandedFraction;
    private float expandedLetterSpacing;
    private int expandedLineCount;
    private ColorStateList expandedShadowColor;
    private float expandedShadowDx;
    private float expandedShadowDy;
    private float expandedShadowRadius;
    private float expandedTextBlend;
    private ColorStateList expandedTextColor;
    @Nullable
    private Bitmap expandedTitleTexture;
    private Typeface expandedTypeface;
    private boolean fadeModeEnabled;
    private float fadeModeStartFraction;
    private float fadeModeThresholdFraction;
    private boolean isRtl;
    private TimeInterpolator positionInterpolator;
    private float scale;
    private int[] state;
    @Nullable
    private CharSequence text;
    private StaticLayout textLayout;
    @NonNull
    private final TextPaint textPaint;
    private TimeInterpolator textSizeInterpolator;
    @Nullable
    private CharSequence textToDraw;
    private CharSequence textToDrawCollapsed;
    private Paint texturePaint;
    @NonNull
    private final TextPaint tmpPaint;
    private boolean useTexture;
    private final View view;
    private static final boolean USE_SCALING_TEXTURE = false;
    @NonNull
    private static final Paint DEBUG_DRAW_PAINT = null;
    private int expandedTextGravity = 16;
    private int collapsedTextGravity = 16;
    private float expandedTextSize = 15.0f;
    private float collapsedTextSize = 15.0f;
    private boolean isRtlTextDirectionHeuristicsEnabled = true;
    private int maxLines = 1;
    private float lineSpacingAdd = 0.0f;
    private float lineSpacingMultiplier = 1.0f;
    private int hyphenationFrequency = StaticLayoutBuilderCompat.DEFAULT_HYPHENATION_FREQUENCY;

    public CollapsingTextHelper(View view) {
        this.view = view;
        TextPaint textPaint = new TextPaint(129);
        this.textPaint = textPaint;
        this.tmpPaint = new TextPaint(textPaint);
        this.collapsedBounds = new Rect();
        this.expandedBounds = new Rect();
        this.currentBounds = new RectF();
        this.fadeModeThresholdFraction = calculateFadeModeThresholdFraction();
    }

    private static int blendColors(int i9, int i10, float f10) {
        float f11 = 1.0f - f10;
        return Color.argb((int) ((Color.alpha(i9) * f11) + (Color.alpha(i10) * f10)), (int) ((Color.red(i9) * f11) + (Color.red(i10) * f10)), (int) ((Color.green(i9) * f11) + (Color.green(i10) * f10)), (int) ((Color.blue(i9) * f11) + (Color.blue(i10) * f10)));
    }

    private void calculateBaseOffsets(boolean z10) {
        StaticLayout staticLayout;
        StaticLayout staticLayout2;
        float f10 = this.currentTextSize;
        calculateUsingTextSize(this.collapsedTextSize, z10);
        CharSequence charSequence = this.textToDraw;
        if (charSequence != null && (staticLayout2 = this.textLayout) != null) {
            this.textToDrawCollapsed = TextUtils.ellipsize(charSequence, this.textPaint, staticLayout2.getWidth(), TextUtils.TruncateAt.END);
        }
        float f11 = 0.0f;
        if (this.textToDrawCollapsed != null) {
            TextPaint textPaint = new TextPaint(this.textPaint);
            textPaint.setLetterSpacing(this.collapsedLetterSpacing);
            CharSequence charSequence2 = this.textToDrawCollapsed;
            this.collapsedTextWidth = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.collapsedTextWidth = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.collapsedTextGravity, this.isRtl ? 1 : 0);
        int i9 = absoluteGravity & 112;
        if (i9 == 48) {
            this.collapsedDrawY = this.collapsedBounds.top;
        } else if (i9 != 80) {
            this.collapsedDrawY = this.collapsedBounds.centerY() - ((this.textPaint.descent() - this.textPaint.ascent()) / 2.0f);
        } else {
            this.collapsedDrawY = this.collapsedBounds.bottom + this.textPaint.ascent();
        }
        int i10 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i10 == 1) {
            this.collapsedDrawX = this.collapsedBounds.centerX() - (this.collapsedTextWidth / 2.0f);
        } else if (i10 != 5) {
            this.collapsedDrawX = this.collapsedBounds.left;
        } else {
            this.collapsedDrawX = this.collapsedBounds.right - this.collapsedTextWidth;
        }
        calculateUsingTextSize(this.expandedTextSize, z10);
        float height = this.textLayout != null ? staticLayout.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.textLayout;
        this.expandedLineCount = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        CharSequence charSequence3 = this.textToDraw;
        float measureText = charSequence3 != null ? this.textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout4 = this.textLayout;
        if (staticLayout4 != null && this.maxLines > 1) {
            measureText = staticLayout4.getWidth();
        }
        StaticLayout staticLayout5 = this.textLayout;
        if (staticLayout5 != null) {
            f11 = this.maxLines > 1 ? staticLayout5.getLineStart(0) : staticLayout5.getLineLeft(0);
        }
        this.expandedFirstLineDrawX = f11;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.expandedTextGravity, this.isRtl ? 1 : 0);
        int i11 = absoluteGravity2 & 112;
        if (i11 == 48) {
            this.expandedDrawY = this.expandedBounds.top;
        } else if (i11 != 80) {
            this.expandedDrawY = this.expandedBounds.centerY() - (height / 2.0f);
        } else {
            this.expandedDrawY = (this.expandedBounds.bottom - height) + this.textPaint.descent();
        }
        int i12 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i12 == 1) {
            this.expandedDrawX = this.expandedBounds.centerX() - (measureText / 2.0f);
        } else if (i12 != 5) {
            this.expandedDrawX = this.expandedBounds.left;
        } else {
            this.expandedDrawX = this.expandedBounds.right - measureText;
        }
        clearTexture();
        setInterpolatedTextSize(f10);
    }

    private void calculateCurrentOffsets() {
        calculateOffsets(this.expandedFraction);
    }

    private float calculateFadeModeTextAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        float f11 = this.fadeModeThresholdFraction;
        if (f10 <= f11) {
            return AnimationUtils.lerp(1.0f, 0.0f, this.fadeModeStartFraction, f11, f10);
        }
        return AnimationUtils.lerp(0.0f, 1.0f, f11, 1.0f, f10);
    }

    private float calculateFadeModeThresholdFraction() {
        float f10 = this.fadeModeStartFraction;
        return f10 + ((1.0f - f10) * 0.5f);
    }

    private boolean calculateIsRtl(@NonNull CharSequence charSequence) {
        boolean isDefaultIsRtl = isDefaultIsRtl();
        return this.isRtlTextDirectionHeuristicsEnabled ? isTextDirectionHeuristicsIsRtl(charSequence, isDefaultIsRtl) : isDefaultIsRtl;
    }

    private void calculateOffsets(float f10) {
        float f11;
        interpolateBounds(f10);
        if (this.fadeModeEnabled) {
            if (f10 < this.fadeModeThresholdFraction) {
                this.currentDrawX = this.expandedDrawX;
                this.currentDrawY = this.expandedDrawY;
                setInterpolatedTextSize(this.expandedTextSize);
                f11 = 0.0f;
            } else {
                this.currentDrawX = this.collapsedDrawX;
                this.currentDrawY = this.collapsedDrawY - Math.max(0, this.currentOffsetY);
                setInterpolatedTextSize(this.collapsedTextSize);
                f11 = 1.0f;
            }
        } else {
            this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, f10, this.positionInterpolator);
            this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, f10, this.positionInterpolator);
            setInterpolatedTextSize(lerp(this.expandedTextSize, this.collapsedTextSize, f10, this.textSizeInterpolator));
            f11 = f10;
        }
        TimeInterpolator timeInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
        setCollapsedTextBlend(1.0f - lerp(0.0f, 1.0f, 1.0f - f10, timeInterpolator));
        setExpandedTextBlend(lerp(1.0f, 0.0f, f10, timeInterpolator));
        if (this.collapsedTextColor != this.expandedTextColor) {
            this.textPaint.setColor(blendColors(getCurrentExpandedTextColor(), getCurrentCollapsedTextColor(), f11));
        } else {
            this.textPaint.setColor(getCurrentCollapsedTextColor());
        }
        float f12 = this.collapsedLetterSpacing;
        float f13 = this.expandedLetterSpacing;
        if (f12 != f13) {
            this.textPaint.setLetterSpacing(lerp(f13, f12, f10, timeInterpolator));
        } else {
            this.textPaint.setLetterSpacing(f12);
        }
        this.textPaint.setShadowLayer(lerp(this.expandedShadowRadius, this.collapsedShadowRadius, f10, null), lerp(this.expandedShadowDx, this.collapsedShadowDx, f10, null), lerp(this.expandedShadowDy, this.collapsedShadowDy, f10, null), blendColors(getCurrentColor(this.expandedShadowColor), getCurrentColor(this.collapsedShadowColor), f10));
        if (this.fadeModeEnabled) {
            int alpha = this.textPaint.getAlpha();
            this.textPaint.setAlpha((int) (calculateFadeModeTextAlpha(f10) * alpha));
        }
        ViewCompat.postInvalidateOnAnimation(this.view);
    }

    private void calculateUsingTextSize(float f10) {
        calculateUsingTextSize(f10, false);
    }

    private void clearTexture() {
        Bitmap bitmap = this.expandedTitleTexture;
        if (bitmap != null) {
            bitmap.recycle();
            this.expandedTitleTexture = null;
        }
    }

    private StaticLayout createStaticLayout(int i9, float f10, boolean z10) {
        StaticLayout staticLayout;
        try {
            staticLayout = StaticLayoutBuilderCompat.obtain(this.text, this.textPaint, (int) f10).setEllipsize(TextUtils.TruncateAt.END).setIsRtl(z10).setAlignment(Layout.Alignment.ALIGN_NORMAL).setIncludePad(false).setMaxLines(i9).setLineSpacing(this.lineSpacingAdd, this.lineSpacingMultiplier).setHyphenationFrequency(this.hyphenationFrequency).build();
        } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e10) {
            Log.e(TAG, e10.getCause().getMessage(), e10);
            staticLayout = null;
        }
        return (StaticLayout) Preconditions.checkNotNull(staticLayout);
    }

    private void drawMultilineTransition(@NonNull Canvas canvas, float f10, float f11) {
        int alpha = this.textPaint.getAlpha();
        canvas.translate(f10, f11);
        float f12 = alpha;
        this.textPaint.setAlpha((int) (this.expandedTextBlend * f12));
        this.textLayout.draw(canvas);
        this.textPaint.setAlpha((int) (this.collapsedTextBlend * f12));
        int lineBaseline = this.textLayout.getLineBaseline(0);
        CharSequence charSequence = this.textToDrawCollapsed;
        float f13 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f13, this.textPaint);
        if (this.fadeModeEnabled) {
            return;
        }
        String trim = this.textToDrawCollapsed.toString().trim();
        if (trim.endsWith(ELLIPSIS_NORMAL)) {
            trim = trim.substring(0, trim.length() - 1);
        }
        String str = trim;
        this.textPaint.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.textLayout.getLineEnd(0), str.length()), 0.0f, f13, (Paint) this.textPaint);
    }

    private void ensureExpandedTexture() {
        if (this.expandedTitleTexture != null || this.expandedBounds.isEmpty() || TextUtils.isEmpty(this.textToDraw)) {
            return;
        }
        calculateOffsets(0.0f);
        int width = this.textLayout.getWidth();
        int height = this.textLayout.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.expandedTitleTexture = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.textLayout.draw(new Canvas(this.expandedTitleTexture));
        if (this.texturePaint == null) {
            this.texturePaint = new Paint(3);
        }
    }

    private float getCollapsedTextLeftBound(int i9, int i10) {
        if (i10 == 17 || (i10 & 7) == 1) {
            return (i9 / 2.0f) - (this.collapsedTextWidth / 2.0f);
        }
        return ((i10 & GravityCompat.END) == 8388613 || (i10 & 5) == 5) ? this.isRtl ? this.collapsedBounds.left : this.collapsedBounds.right - this.collapsedTextWidth : this.isRtl ? this.collapsedBounds.right - this.collapsedTextWidth : this.collapsedBounds.left;
    }

    private float getCollapsedTextRightBound(@NonNull RectF rectF, int i9, int i10) {
        if (i10 == 17 || (i10 & 7) == 1) {
            return (i9 / 2.0f) + (this.collapsedTextWidth / 2.0f);
        }
        return ((i10 & GravityCompat.END) == 8388613 || (i10 & 5) == 5) ? this.isRtl ? rectF.left + this.collapsedTextWidth : this.collapsedBounds.right : this.isRtl ? this.collapsedBounds.right : rectF.left + this.collapsedTextWidth;
    }

    @ColorInt
    private int getCurrentColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.state;
        if (iArr != null) {
            return colorStateList.getColorForState(iArr, 0);
        }
        return colorStateList.getDefaultColor();
    }

    @ColorInt
    private int getCurrentExpandedTextColor() {
        return getCurrentColor(this.expandedTextColor);
    }

    private void getTextPaintCollapsed(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.collapsedTextSize);
        textPaint.setTypeface(this.collapsedTypeface);
        textPaint.setLetterSpacing(this.collapsedLetterSpacing);
    }

    private void getTextPaintExpanded(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.expandedTextSize);
        textPaint.setTypeface(this.expandedTypeface);
        textPaint.setLetterSpacing(this.expandedLetterSpacing);
    }

    private void interpolateBounds(float f10) {
        if (this.fadeModeEnabled) {
            this.currentBounds.set(f10 < this.fadeModeThresholdFraction ? this.expandedBounds : this.collapsedBounds);
            return;
        }
        this.currentBounds.left = lerp(this.expandedBounds.left, this.collapsedBounds.left, f10, this.positionInterpolator);
        this.currentBounds.top = lerp(this.expandedDrawY, this.collapsedDrawY, f10, this.positionInterpolator);
        this.currentBounds.right = lerp(this.expandedBounds.right, this.collapsedBounds.right, f10, this.positionInterpolator);
        this.currentBounds.bottom = lerp(this.expandedBounds.bottom, this.collapsedBounds.bottom, f10, this.positionInterpolator);
    }

    private static boolean isClose(float f10, float f11) {
        return Math.abs(f10 - f11) < 0.001f;
    }

    private boolean isDefaultIsRtl() {
        return ViewCompat.getLayoutDirection(this.view) == 1;
    }

    private boolean isTextDirectionHeuristicsIsRtl(@NonNull CharSequence charSequence, boolean z10) {
        return (z10 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    private static float lerp(float f10, float f11, float f12, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f12 = timeInterpolator.getInterpolation(f12);
        }
        return AnimationUtils.lerp(f10, f11, f12);
    }

    private static boolean rectEquals(@NonNull Rect rect, int i9, int i10, int i11, int i12) {
        return rect.left == i9 && rect.top == i10 && rect.right == i11 && rect.bottom == i12;
    }

    private void setCollapsedTextBlend(float f10) {
        this.collapsedTextBlend = f10;
        ViewCompat.postInvalidateOnAnimation(this.view);
    }

    private boolean setCollapsedTypefaceInternal(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.collapsedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        if (this.collapsedTypeface != typeface) {
            this.collapsedTypeface = typeface;
            return true;
        }
        return false;
    }

    private void setExpandedTextBlend(float f10) {
        this.expandedTextBlend = f10;
        ViewCompat.postInvalidateOnAnimation(this.view);
    }

    private boolean setExpandedTypefaceInternal(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.expandedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        if (this.expandedTypeface != typeface) {
            this.expandedTypeface = typeface;
            return true;
        }
        return false;
    }

    private void setInterpolatedTextSize(float f10) {
        calculateUsingTextSize(f10);
        boolean z10 = USE_SCALING_TEXTURE && this.scale != 1.0f;
        this.useTexture = z10;
        if (z10) {
            ensureExpandedTexture();
        }
        ViewCompat.postInvalidateOnAnimation(this.view);
    }

    private boolean shouldDrawMultiline() {
        return this.maxLines > 1 && (!this.isRtl || this.fadeModeEnabled) && !this.useTexture;
    }

    public void draw(@NonNull Canvas canvas) {
        int save = canvas.save();
        if (this.textToDraw == null || !this.drawTitle) {
            return;
        }
        boolean z10 = true;
        float lineStart = (this.currentDrawX + (this.maxLines > 1 ? this.textLayout.getLineStart(0) : this.textLayout.getLineLeft(0))) - (this.expandedFirstLineDrawX * 2.0f);
        this.textPaint.setTextSize(this.currentTextSize);
        float f10 = this.currentDrawX;
        float f11 = this.currentDrawY;
        z10 = (!this.useTexture || this.expandedTitleTexture == null) ? false : false;
        float f12 = this.scale;
        if (f12 != 1.0f && !this.fadeModeEnabled) {
            canvas.scale(f12, f12, f10, f11);
        }
        if (z10) {
            canvas.drawBitmap(this.expandedTitleTexture, f10, f11, this.texturePaint);
            canvas.restoreToCount(save);
            return;
        }
        if (shouldDrawMultiline() && (!this.fadeModeEnabled || this.expandedFraction > this.fadeModeThresholdFraction)) {
            drawMultilineTransition(canvas, lineStart, f11);
        } else {
            canvas.translate(f10, f11);
            this.textLayout.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    public void getCollapsedTextActualBounds(@NonNull RectF rectF, int i9, int i10) {
        this.isRtl = calculateIsRtl(this.text);
        rectF.left = getCollapsedTextLeftBound(i9, i10);
        rectF.top = this.collapsedBounds.top;
        rectF.right = getCollapsedTextRightBound(rectF, i9, i10);
        rectF.bottom = this.collapsedBounds.top + getCollapsedTextHeight();
    }

    public ColorStateList getCollapsedTextColor() {
        return this.collapsedTextColor;
    }

    public int getCollapsedTextGravity() {
        return this.collapsedTextGravity;
    }

    public float getCollapsedTextHeight() {
        getTextPaintCollapsed(this.tmpPaint);
        return -this.tmpPaint.ascent();
    }

    public float getCollapsedTextSize() {
        return this.collapsedTextSize;
    }

    public Typeface getCollapsedTypeface() {
        Typeface typeface = this.collapsedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    @ColorInt
    public int getCurrentCollapsedTextColor() {
        return getCurrentColor(this.collapsedTextColor);
    }

    public int getExpandedLineCount() {
        return this.expandedLineCount;
    }

    public ColorStateList getExpandedTextColor() {
        return this.expandedTextColor;
    }

    public float getExpandedTextFullHeight() {
        getTextPaintExpanded(this.tmpPaint);
        return (-this.tmpPaint.ascent()) + this.tmpPaint.descent();
    }

    public int getExpandedTextGravity() {
        return this.expandedTextGravity;
    }

    public float getExpandedTextHeight() {
        getTextPaintExpanded(this.tmpPaint);
        return -this.tmpPaint.ascent();
    }

    public float getExpandedTextSize() {
        return this.expandedTextSize;
    }

    public Typeface getExpandedTypeface() {
        Typeface typeface = this.expandedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public float getExpansionFraction() {
        return this.expandedFraction;
    }

    public float getFadeModeThresholdFraction() {
        return this.fadeModeThresholdFraction;
    }

    @RequiresApi(23)
    public int getHyphenationFrequency() {
        return this.hyphenationFrequency;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.textLayout;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    @RequiresApi(23)
    public float getLineSpacingAdd() {
        return this.textLayout.getSpacingAdd();
    }

    @RequiresApi(23)
    public float getLineSpacingMultiplier() {
        return this.textLayout.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.maxLines;
    }

    @Nullable
    public TimeInterpolator getPositionInterpolator() {
        return this.positionInterpolator;
    }

    @Nullable
    public CharSequence getText() {
        return this.text;
    }

    public boolean isRtlTextDirectionHeuristicsEnabled() {
        return this.isRtlTextDirectionHeuristicsEnabled;
    }

    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.collapsedTextColor;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.expandedTextColor) != null && colorStateList.isStateful());
    }

    void onBoundsChanged() {
        this.drawTitle = this.collapsedBounds.width() > 0 && this.collapsedBounds.height() > 0 && this.expandedBounds.width() > 0 && this.expandedBounds.height() > 0;
    }

    public void recalculate() {
        recalculate(false);
    }

    public void setCollapsedBounds(int i9, int i10, int i11, int i12) {
        if (rectEquals(this.collapsedBounds, i9, i10, i11, i12)) {
            return;
        }
        this.collapsedBounds.set(i9, i10, i11, i12);
        this.boundsChanged = true;
        onBoundsChanged();
    }

    public void setCollapsedTextAppearance(int i9) {
        TextAppearance textAppearance = new TextAppearance(this.view.getContext(), i9);
        if (textAppearance.getTextColor() != null) {
            this.collapsedTextColor = textAppearance.getTextColor();
        }
        if (textAppearance.getTextSize() != 0.0f) {
            this.collapsedTextSize = textAppearance.getTextSize();
        }
        ColorStateList colorStateList = textAppearance.shadowColor;
        if (colorStateList != null) {
            this.collapsedShadowColor = colorStateList;
        }
        this.collapsedShadowDx = textAppearance.shadowDx;
        this.collapsedShadowDy = textAppearance.shadowDy;
        this.collapsedShadowRadius = textAppearance.shadowRadius;
        this.collapsedLetterSpacing = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.collapsedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        this.collapsedFontCallback = new CancelableFontCallback(new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.1
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            public void apply(Typeface typeface) {
                CollapsingTextHelper.this.setCollapsedTypeface(typeface);
            }
        }, textAppearance.getFallbackFont());
        textAppearance.getFontAsync(this.view.getContext(), this.collapsedFontCallback);
        recalculate();
    }

    public void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.collapsedTextColor != colorStateList) {
            this.collapsedTextColor = colorStateList;
            recalculate();
        }
    }

    public void setCollapsedTextGravity(int i9) {
        if (this.collapsedTextGravity != i9) {
            this.collapsedTextGravity = i9;
            recalculate();
        }
    }

    public void setCollapsedTextSize(float f10) {
        if (this.collapsedTextSize != f10) {
            this.collapsedTextSize = f10;
            recalculate();
        }
    }

    public void setCollapsedTypeface(Typeface typeface) {
        if (setCollapsedTypefaceInternal(typeface)) {
            recalculate();
        }
    }

    public void setCurrentOffsetY(int i9) {
        this.currentOffsetY = i9;
    }

    public void setExpandedBounds(int i9, int i10, int i11, int i12) {
        if (rectEquals(this.expandedBounds, i9, i10, i11, i12)) {
            return;
        }
        this.expandedBounds.set(i9, i10, i11, i12);
        this.boundsChanged = true;
        onBoundsChanged();
    }

    public void setExpandedTextAppearance(int i9) {
        TextAppearance textAppearance = new TextAppearance(this.view.getContext(), i9);
        if (textAppearance.getTextColor() != null) {
            this.expandedTextColor = textAppearance.getTextColor();
        }
        if (textAppearance.getTextSize() != 0.0f) {
            this.expandedTextSize = textAppearance.getTextSize();
        }
        ColorStateList colorStateList = textAppearance.shadowColor;
        if (colorStateList != null) {
            this.expandedShadowColor = colorStateList;
        }
        this.expandedShadowDx = textAppearance.shadowDx;
        this.expandedShadowDy = textAppearance.shadowDy;
        this.expandedShadowRadius = textAppearance.shadowRadius;
        this.expandedLetterSpacing = textAppearance.letterSpacing;
        CancelableFontCallback cancelableFontCallback = this.expandedFontCallback;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.cancel();
        }
        this.expandedFontCallback = new CancelableFontCallback(new CancelableFontCallback.ApplyFont() { // from class: com.google.android.material.internal.CollapsingTextHelper.2
            @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
            public void apply(Typeface typeface) {
                CollapsingTextHelper.this.setExpandedTypeface(typeface);
            }
        }, textAppearance.getFallbackFont());
        textAppearance.getFontAsync(this.view.getContext(), this.expandedFontCallback);
        recalculate();
    }

    public void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.expandedTextColor != colorStateList) {
            this.expandedTextColor = colorStateList;
            recalculate();
        }
    }

    public void setExpandedTextGravity(int i9) {
        if (this.expandedTextGravity != i9) {
            this.expandedTextGravity = i9;
            recalculate();
        }
    }

    public void setExpandedTextSize(float f10) {
        if (this.expandedTextSize != f10) {
            this.expandedTextSize = f10;
            recalculate();
        }
    }

    public void setExpandedTypeface(Typeface typeface) {
        if (setExpandedTypefaceInternal(typeface)) {
            recalculate();
        }
    }

    public void setExpansionFraction(float f10) {
        float clamp = MathUtils.clamp(f10, 0.0f, 1.0f);
        if (clamp != this.expandedFraction) {
            this.expandedFraction = clamp;
            calculateCurrentOffsets();
        }
    }

    public void setFadeModeEnabled(boolean z10) {
        this.fadeModeEnabled = z10;
    }

    public void setFadeModeStartFraction(float f10) {
        this.fadeModeStartFraction = f10;
        this.fadeModeThresholdFraction = calculateFadeModeThresholdFraction();
    }

    @RequiresApi(23)
    public void setHyphenationFrequency(int i9) {
        this.hyphenationFrequency = i9;
    }

    @RequiresApi(23)
    public void setLineSpacingAdd(float f10) {
        this.lineSpacingAdd = f10;
    }

    @RequiresApi(23)
    public void setLineSpacingMultiplier(@FloatRange(from = 0.0d) float f10) {
        this.lineSpacingMultiplier = f10;
    }

    public void setMaxLines(int i9) {
        if (i9 != this.maxLines) {
            this.maxLines = i9;
            clearTexture();
            recalculate();
        }
    }

    public void setPositionInterpolator(TimeInterpolator timeInterpolator) {
        this.positionInterpolator = timeInterpolator;
        recalculate();
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z10) {
        this.isRtlTextDirectionHeuristicsEnabled = z10;
    }

    public final boolean setState(int[] iArr) {
        this.state = iArr;
        if (isStateful()) {
            recalculate();
            return true;
        }
        return false;
    }

    public void setText(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.text, charSequence)) {
            this.text = charSequence;
            this.textToDraw = null;
            clearTexture();
            recalculate();
        }
    }

    public void setTextSizeInterpolator(TimeInterpolator timeInterpolator) {
        this.textSizeInterpolator = timeInterpolator;
        recalculate();
    }

    public void setTypefaces(Typeface typeface) {
        boolean collapsedTypefaceInternal = setCollapsedTypefaceInternal(typeface);
        boolean expandedTypefaceInternal = setExpandedTypefaceInternal(typeface);
        if (collapsedTypefaceInternal || expandedTypefaceInternal) {
            recalculate();
        }
    }

    private void calculateUsingTextSize(float f10, boolean z10) {
        boolean z11;
        float f11;
        boolean z12;
        if (this.text == null) {
            return;
        }
        float width = this.collapsedBounds.width();
        float width2 = this.expandedBounds.width();
        if (isClose(f10, this.collapsedTextSize)) {
            f11 = this.collapsedTextSize;
            this.scale = 1.0f;
            Typeface typeface = this.currentTypeface;
            Typeface typeface2 = this.collapsedTypeface;
            if (typeface != typeface2) {
                this.currentTypeface = typeface2;
                z12 = true;
            } else {
                z12 = false;
            }
        } else {
            float f12 = this.expandedTextSize;
            Typeface typeface3 = this.currentTypeface;
            Typeface typeface4 = this.expandedTypeface;
            if (typeface3 != typeface4) {
                this.currentTypeface = typeface4;
                z11 = true;
            } else {
                z11 = false;
            }
            if (isClose(f10, f12)) {
                this.scale = 1.0f;
            } else {
                this.scale = f10 / this.expandedTextSize;
            }
            float f13 = this.collapsedTextSize / this.expandedTextSize;
            width = (!z10 && width2 * f13 > width) ? Math.min(width / f13, width2) : width2;
            f11 = f12;
            z12 = z11;
        }
        if (width > 0.0f) {
            z12 = this.currentTextSize != f11 || this.boundsChanged || z12;
            this.currentTextSize = f11;
            this.boundsChanged = false;
        }
        if (this.textToDraw == null || z12) {
            this.textPaint.setTextSize(this.currentTextSize);
            this.textPaint.setTypeface(this.currentTypeface);
            this.textPaint.setLinearText(this.scale != 1.0f);
            this.isRtl = calculateIsRtl(this.text);
            StaticLayout createStaticLayout = createStaticLayout(shouldDrawMultiline() ? this.maxLines : 1, width, this.isRtl);
            this.textLayout = createStaticLayout;
            this.textToDraw = createStaticLayout.getText();
        }
    }

    public void recalculate(boolean z10) {
        if ((this.view.getHeight() <= 0 || this.view.getWidth() <= 0) && !z10) {
            return;
        }
        calculateBaseOffsets(z10);
        calculateCurrentOffsets();
    }

    public void setCollapsedBounds(@NonNull Rect rect) {
        setCollapsedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setExpandedBounds(@NonNull Rect rect) {
        setExpandedBounds(rect.left, rect.top, rect.right, rect.bottom);
    }
}
