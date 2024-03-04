package com.opensource.svgaplayer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.utils.SVGARange;
import com.opensource.svgaplayer.utils.log.LogUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u00002\u00020\u0001:\u0003bcdB%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0006\u00109\u001a\u00020:J\u0016\u0010;\u001a\u00020<2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00000>H\u0002J\b\u0010?\u001a\u00020@H\u0002J\n\u0010A\u001a\u0004\u0018\u00010BH\u0002J\u0010\u0010C\u001a\u00020:2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0012\u0010D\u001a\u00020:2\b\u0010E\u001a\u0004\u0018\u00010FH\u0002J\u0012\u0010G\u001a\u00020:2\b\u0010H\u001a\u0004\u0018\u00010(H\u0002J\b\u0010I\u001a\u00020:H\u0014J\u0012\u0010J\u001a\u00020\u00122\b\u0010K\u001a\u0004\u0018\u00010LH\u0017J\u0010\u0010M\u001a\u00020:2\u0006\u0010N\u001a\u00020\nH\u0002J\u0006\u0010O\u001a\u00020:J\u001a\u0010P\u001a\u00020:2\b\u0010Q\u001a\u0004\u0018\u00010R2\u0006\u0010S\u001a\u00020\u0012H\u0002J\u000e\u0010T\u001a\u00020:2\u0006\u0010U\u001a\u000201J\u0012\u0010V\u001a\u00020:2\b\u0010W\u001a\u0004\u0018\u000104H\u0016J\u001c\u0010V\u001a\u00020:2\b\u0010W\u001a\u0004\u0018\u0001042\b\u0010X\u001a\u0004\u0018\u00010YH\u0016J\b\u0010Z\u001a\u00020:H\u0002J\u0006\u0010[\u001a\u00020:J\u0010\u0010[\u001a\u00020:2\u0006\u0010W\u001a\u000204H\u0002J\u001a\u0010[\u001a\u00020:2\b\u0010Q\u001a\u0004\u0018\u00010R2\b\b\u0002\u0010S\u001a\u00020\u0012J\u0016\u0010\\\u001a\u00020:2\u0006\u0010]\u001a\u00020\u00072\u0006\u0010^\u001a\u00020\u0012J\u0016\u0010_\u001a\u00020:2\u0006\u0010`\u001a\u00020@2\u0006\u0010^\u001a\u00020\u0012J\u0006\u0010a\u001a\u00020:J\u000e\u0010a\u001a\u00020:2\u0006\u00109\u001a\u00020\u0012R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001e\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0014R\u001a\u0010\"\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108¨\u0006e"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView;", "Landroid/widget/ImageView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "TAG", "", "callback", "Lcom/opensource/svgaplayer/SVGACallback;", "getCallback", "()Lcom/opensource/svgaplayer/SVGACallback;", "setCallback", "(Lcom/opensource/svgaplayer/SVGACallback;)V", "clearsAfterDetached", "", "getClearsAfterDetached", "()Z", "setClearsAfterDetached", "(Z)V", "clearsAfterStop", "getClearsAfterStop", "setClearsAfterStop", "fillMode", "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "getFillMode", "()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "setFillMode", "(Lcom/opensource/svgaplayer/SVGAImageView$FillMode;)V", "<set-?>", "isAnimating", "loops", "getLoops", "()I", "setLoops", "(I)V", "mAnimator", "Landroid/animation/ValueAnimator;", "mAnimatorListener", "Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;", "mAnimatorUpdateListener", "Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;", "mAntiAlias", "mAutoPlay", "mEndFrame", "mItemClickAreaListener", "Lcom/opensource/svgaplayer/SVGAClickAreaListener;", "mStartFrame", "mVideoItem", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", "getMVideoItem", "()Lcom/opensource/svgaplayer/SVGAVideoEntity;", "setMVideoItem", "(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V", "clear", "", "createParseCompletion", "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;", "ref", "Ljava/lang/ref/WeakReference;", "generateScale", "", "getSVGADrawable", "Lcom/opensource/svgaplayer/SVGADrawable;", "loadAttrs", "onAnimationEnd", "animation", "Landroid/animation/Animator;", "onAnimatorUpdate", "animator", "onDetachedFromWindow", "onTouchEvent", "event", "Landroid/view/MotionEvent;", "parserSource", ShareConstants.FEED_SOURCE_PARAM, "pauseAnimation", "play", "range", "Lcom/opensource/svgaplayer/utils/SVGARange;", "reverse", "setOnAnimKeyClickListener", "clickListener", "setVideoItem", "videoItem", "dynamicItem", "Lcom/opensource/svgaplayer/SVGADynamicEntity;", "setupDrawable", "startAnimation", "stepToFrame", TypedValues.AttributesType.S_FRAME, "andPlay", "stepToPercentage", "percentage", "stopAnimation", "AnimatorListener", "AnimatorUpdateListener", "FillMode", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class SVGAImageView extends ImageView {
    @NotNull
    private final String TAG;
    @Nullable
    private SVGACallback callback;
    private boolean clearsAfterDetached;
    private boolean clearsAfterStop;
    @NotNull
    private FillMode fillMode;
    private boolean isAnimating;
    private int loops;
    @Nullable
    private ValueAnimator mAnimator;
    @NotNull
    private final AnimatorListener mAnimatorListener;
    @NotNull
    private final AnimatorUpdateListener mAnimatorUpdateListener;
    private boolean mAntiAlias;
    private boolean mAutoPlay;
    private int mEndFrame;
    @Nullable
    private SVGAClickAreaListener mItemClickAreaListener;
    private int mStartFrame;
    @Nullable
    private SVGAVideoEntity mVideoItem;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\f\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\r\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$AnimatorListener;", "Landroid/animation/Animator$AnimatorListener;", ViewHierarchyConstants.VIEW_KEY, "Lcom/opensource/svgaplayer/SVGAImageView;", "(Lcom/opensource/svgaplayer/SVGAImageView;)V", "weakReference", "Ljava/lang/ref/WeakReference;", "onAnimationCancel", "", "animation", "Landroid/animation/Animator;", "onAnimationEnd", "onAnimationRepeat", "onAnimationStart", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class AnimatorListener implements Animator.AnimatorListener {
        @NotNull
        private final WeakReference<SVGAImageView> weakReference;

        public AnimatorListener(@NotNull SVGAImageView view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.weakReference = new WeakReference<>(view);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@Nullable Animator animator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView == null) {
                return;
            }
            sVGAImageView.isAnimating = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@Nullable Animator animator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView == null) {
                return;
            }
            sVGAImageView.onAnimationEnd(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@Nullable Animator animator) {
            SVGACallback callback;
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView == null || (callback = sVGAImageView.getCallback()) == null) {
                return;
            }
            callback.onRepeat();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@Nullable Animator animator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView == null) {
                return;
            }
            sVGAImageView.isAnimating = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$AnimatorUpdateListener;", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", ViewHierarchyConstants.VIEW_KEY, "Lcom/opensource/svgaplayer/SVGAImageView;", "(Lcom/opensource/svgaplayer/SVGAImageView;)V", "weakReference", "Ljava/lang/ref/WeakReference;", "onAnimationUpdate", "", "animation", "Landroid/animation/ValueAnimator;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class AnimatorUpdateListener implements ValueAnimator.AnimatorUpdateListener {
        @NotNull
        private final WeakReference<SVGAImageView> weakReference;

        public AnimatorUpdateListener(@NotNull SVGAImageView view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.weakReference = new WeakReference<>(view);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@Nullable ValueAnimator valueAnimator) {
            SVGAImageView sVGAImageView = this.weakReference.get();
            if (sVGAImageView == null) {
                return;
            }
            sVGAImageView.onAnimatorUpdate(valueAnimator);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "", "(Ljava/lang/String;I)V", "Backward", "Forward", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public enum FillMode {
        Backward,
        Forward;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static FillMode[] valuesCustom() {
            FillMode[] valuesCustom = values();
            return (FillMode[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SVGAImageView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SVGAImageView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ SVGAImageView(Context context, AttributeSet attributeSet, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i9);
    }

    private final SVGAParser.ParseCompletion createParseCompletion(final WeakReference<SVGAImageView> weakReference) {
        return new SVGAParser.ParseCompletion() { // from class: com.opensource.svgaplayer.SVGAImageView$createParseCompletion$1
            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onComplete(@NotNull SVGAVideoEntity videoItem) {
                Intrinsics.checkNotNullParameter(videoItem, "videoItem");
                SVGAImageView sVGAImageView = weakReference.get();
                if (sVGAImageView == null) {
                    return;
                }
                sVGAImageView.startAnimation(videoItem);
            }

            @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
            public void onError() {
            }
        };
    }

    private final double generateScale() {
        double d10 = 1.0d;
        try {
            Class<?> cls = Class.forName("android.animation.ValueAnimator");
            Method declaredMethod = cls.getDeclaredMethod("getDurationScale", new Class[0]);
            if (declaredMethod == null) {
                return 1.0d;
            }
            Object invoke = declaredMethod.invoke(cls, new Object[0]);
            if (invoke != null) {
                double floatValue = ((Float) invoke).floatValue();
                if (floatValue == 0.0d) {
                    try {
                        Method declaredMethod2 = cls.getDeclaredMethod("setDurationScale", Float.TYPE);
                        if (declaredMethod2 == null) {
                            return floatValue;
                        }
                        declaredMethod2.setAccessible(true);
                        declaredMethod2.invoke(cls, Float.valueOf(1.0f));
                        LogUtils.INSTANCE.info(this.TAG, "The animation duration scale has been reset to 1.0x, because you closed it on developer options.");
                        return 1.0d;
                    } catch (Exception e10) {
                        e = e10;
                        d10 = floatValue;
                        e.printStackTrace();
                        return d10;
                    }
                }
                return floatValue;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
        } catch (Exception e11) {
            e = e11;
        }
    }

    private final SVGADrawable getSVGADrawable() {
        Drawable drawable = getDrawable();
        if (drawable instanceof SVGADrawable) {
            return (SVGADrawable) drawable;
        }
        return null;
    }

    private final void loadAttrs(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R.styleable.SVGAImageView, 0, 0);
        this.loops = obtainStyledAttributes.getInt(R.styleable.SVGAImageView_loopCount, 0);
        this.clearsAfterStop = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_clearsAfterStop, false);
        this.clearsAfterDetached = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_clearsAfterDetached, false);
        this.mAntiAlias = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_antiAlias, true);
        this.mAutoPlay = obtainStyledAttributes.getBoolean(R.styleable.SVGAImageView_autoPlay, true);
        String string = obtainStyledAttributes.getString(R.styleable.SVGAImageView_fillMode);
        if (string != null) {
            if (Intrinsics.areEqual(string, "0")) {
                setFillMode(FillMode.Backward);
            } else if (Intrinsics.areEqual(string, "1")) {
                setFillMode(FillMode.Forward);
            }
        }
        String string2 = obtainStyledAttributes.getString(R.styleable.SVGAImageView_source);
        if (string2 != null) {
            parserSource(string2);
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAnimationEnd(Animator animator) {
        this.isAnimating = false;
        stopAnimation();
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (!this.clearsAfterStop && sVGADrawable != null) {
            FillMode fillMode = this.fillMode;
            if (fillMode == FillMode.Backward) {
                sVGADrawable.setCurrentFrame(this.mStartFrame);
            } else if (fillMode == FillMode.Forward) {
                sVGADrawable.setCurrentFrame(this.mEndFrame);
            }
        }
        if (this.clearsAfterStop) {
            Objects.requireNonNull(animator, "null cannot be cast to non-null type android.animation.ValueAnimator");
            if (((ValueAnimator) animator).getRepeatCount() <= 0) {
                clear();
            }
        }
        SVGACallback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.onFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAnimatorUpdate(ValueAnimator valueAnimator) {
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable == null) {
            return;
        }
        Object animatedValue = valueAnimator == null ? null : valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        sVGADrawable.setCurrentFrame(((Integer) animatedValue).intValue());
        double currentFrame = (sVGADrawable.getCurrentFrame() + 1) / sVGADrawable.getVideoItem().getFrames();
        SVGACallback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.onStep(sVGADrawable.getCurrentFrame(), currentFrame);
    }

    private final void parserSource(String str) {
        boolean startsWith$default;
        boolean startsWith$default2;
        WeakReference<SVGAImageView> weakReference = new WeakReference<>(this);
        SVGAParser sVGAParser = new SVGAParser(getContext());
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "http://", false, 2, null);
        if (!startsWith$default) {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str, "https://", false, 2, null);
            if (!startsWith$default2) {
                sVGAParser.decodeFromAssets(str, createParseCompletion(weakReference));
                return;
            }
        }
        sVGAParser.decodeFromURL(new URL(str), createParseCompletion(weakReference));
    }

    private final void play(SVGARange sVGARange, boolean z10) {
        LogUtils.INSTANCE.info(this.TAG, "================ start animation ================");
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable == null) {
            return;
        }
        setupDrawable();
        this.mStartFrame = Math.max(0, sVGARange == null ? 0 : sVGARange.getLocation());
        SVGAVideoEntity videoItem = sVGADrawable.getVideoItem();
        int min = Math.min(videoItem.getFrames() - 1, ((sVGARange == null ? 0 : sVGARange.getLocation()) + (sVGARange == null ? Integer.MAX_VALUE : sVGARange.getLength())) - 1);
        this.mEndFrame = min;
        ValueAnimator ofInt = ValueAnimator.ofInt(this.mStartFrame, min);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setDuration((long) ((((this.mEndFrame - this.mStartFrame) + 1) * (1000 / videoItem.getFPS())) / generateScale()));
        int i9 = this.loops;
        ofInt.setRepeatCount(i9 <= 0 ? 99999 : i9 - 1);
        ofInt.addUpdateListener(this.mAnimatorUpdateListener);
        ofInt.addListener(this.mAnimatorListener);
        if (z10) {
            ofInt.reverse();
        } else {
            ofInt.start();
        }
        this.mAnimator = ofInt;
    }

    private final void setupDrawable() {
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable == null) {
            return;
        }
        sVGADrawable.setCleared(false);
        ImageView.ScaleType scaleType = getScaleType();
        Intrinsics.checkNotNullExpressionValue(scaleType, "scaleType");
        sVGADrawable.setScaleType(scaleType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startAnimation(final SVGAVideoEntity sVGAVideoEntity) {
        post(new Runnable() { // from class: com.opensource.svgaplayer.c
            @Override // java.lang.Runnable
            public final void run() {
                SVGAImageView.m816startAnimation$lambda3(SVGAVideoEntity.this, this);
            }
        });
    }

    public static /* synthetic */ void startAnimation$default(SVGAImageView sVGAImageView, SVGARange sVGARange, boolean z10, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startAnimation");
        }
        if ((i9 & 2) != 0) {
            z10 = false;
        }
        sVGAImageView.startAnimation(sVGARange, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startAnimation$lambda-3  reason: not valid java name */
    public static final void m816startAnimation$lambda3(SVGAVideoEntity videoItem, SVGAImageView this$0) {
        Intrinsics.checkNotNullParameter(videoItem, "$videoItem");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        videoItem.setAntiAlias(this$0.mAntiAlias);
        this$0.setVideoItem(videoItem);
        SVGADrawable sVGADrawable = this$0.getSVGADrawable();
        if (sVGADrawable != null) {
            ImageView.ScaleType scaleType = this$0.getScaleType();
            Intrinsics.checkNotNullExpressionValue(scaleType, "scaleType");
            sVGADrawable.setScaleType(scaleType);
        }
        if (this$0.mAutoPlay) {
            this$0.startAnimation();
        }
    }

    public void _$_clearFindViewByIdCache() {
    }

    public final void clear() {
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.setCleared(true);
        }
        SVGADrawable sVGADrawable2 = getSVGADrawable();
        if (sVGADrawable2 != null) {
            sVGADrawable2.clear();
        }
        setImageDrawable(null);
    }

    @Nullable
    public SVGACallback getCallback() {
        return this.callback;
    }

    public final boolean getClearsAfterDetached() {
        return this.clearsAfterDetached;
    }

    public final boolean getClearsAfterStop() {
        return this.clearsAfterStop;
    }

    @NotNull
    public final FillMode getFillMode() {
        return this.fillMode;
    }

    public final int getLoops() {
        return this.loops;
    }

    @Nullable
    public final SVGAVideoEntity getMVideoItem() {
        return this.mVideoItem;
    }

    public final boolean isAnimating() {
        return this.isAnimating;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation(true);
        if (this.clearsAfterDetached) {
            clear();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        SVGAClickAreaListener sVGAClickAreaListener;
        Integer valueOf = motionEvent == null ? null : Integer.valueOf(motionEvent.getAction());
        if (valueOf == null || valueOf.intValue() != 0) {
            return super.onTouchEvent(motionEvent);
        }
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable == null) {
            return super.onTouchEvent(motionEvent);
        }
        for (Map.Entry<String, int[]> entry : sVGADrawable.getDynamicItem().getMClickMap$com_opensource_svgaplayer().entrySet()) {
            String key = entry.getKey();
            int[] value = entry.getValue();
            if (motionEvent.getX() >= value[0] && motionEvent.getX() <= value[2] && motionEvent.getY() >= value[1] && motionEvent.getY() <= value[3] && (sVGAClickAreaListener = this.mItemClickAreaListener) != null) {
                sVGAClickAreaListener.onClick(key);
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void pauseAnimation() {
        stopAnimation(false);
        SVGACallback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.onPause();
    }

    public void setCallback(@Nullable SVGACallback sVGACallback) {
        this.callback = sVGACallback;
    }

    public final void setClearsAfterDetached(boolean z10) {
        this.clearsAfterDetached = z10;
    }

    public final void setClearsAfterStop(boolean z10) {
        this.clearsAfterStop = z10;
    }

    public final void setFillMode(@NotNull FillMode fillMode) {
        Intrinsics.checkNotNullParameter(fillMode, "<set-?>");
        this.fillMode = fillMode;
    }

    public final void setLoops(int i9) {
        this.loops = i9;
    }

    public final void setMVideoItem(@Nullable SVGAVideoEntity sVGAVideoEntity) {
        this.mVideoItem = sVGAVideoEntity;
    }

    public final void setOnAnimKeyClickListener(@NotNull SVGAClickAreaListener clickListener) {
        Intrinsics.checkNotNullParameter(clickListener, "clickListener");
        this.mItemClickAreaListener = clickListener;
    }

    public void setVideoItem(@Nullable SVGAVideoEntity sVGAVideoEntity) {
        setVideoItem(sVGAVideoEntity, new SVGADynamicEntity());
    }

    public final void stepToFrame(int i9, boolean z10) {
        pauseAnimation();
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable == null) {
            return;
        }
        sVGADrawable.setCurrentFrame(i9);
        if (z10) {
            startAnimation();
            ValueAnimator valueAnimator = this.mAnimator;
            if (valueAnimator == null) {
                return;
            }
            valueAnimator.setCurrentPlayTime(Math.max(0.0f, Math.min(1.0f, i9 / sVGADrawable.getVideoItem().getFrames())) * ((float) valueAnimator.getDuration()));
        }
    }

    public final void stepToPercentage(double d10, boolean z10) {
        Drawable drawable = getDrawable();
        SVGADrawable sVGADrawable = drawable instanceof SVGADrawable ? (SVGADrawable) drawable : null;
        if (sVGADrawable == null) {
            return;
        }
        int frames = (int) (sVGADrawable.getVideoItem().getFrames() * d10);
        if (frames >= sVGADrawable.getVideoItem().getFrames() && frames > 0) {
            frames = sVGADrawable.getVideoItem().getFrames() - 1;
        }
        stepToFrame(frames, z10);
    }

    public final void stopAnimation() {
        stopAnimation(this.clearsAfterStop);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SVGAImageView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        Intrinsics.checkNotNullParameter(context, "context");
        this.TAG = "SVGAImageView";
        this.fillMode = FillMode.Forward;
        this.mAntiAlias = true;
        this.mAutoPlay = true;
        this.mAnimatorListener = new AnimatorListener(this);
        this.mAnimatorUpdateListener = new AnimatorUpdateListener(this);
        if (attributeSet == null) {
            return;
        }
        loadAttrs(attributeSet);
    }

    public void setVideoItem(@Nullable SVGAVideoEntity sVGAVideoEntity, @Nullable SVGADynamicEntity sVGADynamicEntity) {
        if (sVGAVideoEntity == null) {
            setImageDrawable(null);
        } else {
            if (sVGADynamicEntity == null) {
                sVGADynamicEntity = new SVGADynamicEntity();
            }
            SVGADrawable sVGADrawable = new SVGADrawable(sVGAVideoEntity, sVGADynamicEntity);
            sVGADrawable.setCleared(this.clearsAfterStop);
            setImageDrawable(sVGADrawable);
        }
        this.mVideoItem = sVGAVideoEntity;
    }

    public final void startAnimation() {
        startAnimation(null, false);
    }

    public final void stopAnimation(boolean z10) {
        ValueAnimator valueAnimator = this.mAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.mAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.mAnimator;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllUpdateListeners();
        }
        SVGADrawable sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.stop();
        }
        SVGADrawable sVGADrawable2 = getSVGADrawable();
        if (sVGADrawable2 == null) {
            return;
        }
        sVGADrawable2.setCleared(z10);
    }

    public final void startAnimation(@Nullable SVGARange sVGARange, boolean z10) {
        stopAnimation(false);
        play(sVGARange, z10);
    }
}
