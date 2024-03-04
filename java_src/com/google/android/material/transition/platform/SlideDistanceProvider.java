package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@RequiresApi(21)
/* loaded from: classes2.dex */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {
    private static final int DEFAULT_DISTANCE = -1;
    @Px
    private int slideDistance = -1;
    private int slideEdge;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface GravityFlag {
    }

    public SlideDistanceProvider(int i9) {
        this.slideEdge = i9;
    }

    private static Animator createTranslationAppearAnimator(View view, View view2, int i9, @Px int i10) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i9 != 3) {
            if (i9 != 5) {
                if (i9 != 48) {
                    if (i9 != 80) {
                        if (i9 == 8388611) {
                            return createTranslationXAnimator(view2, isRtl(view) ? i10 + translationX : translationX - i10, translationX, translationX);
                        } else if (i9 == 8388613) {
                            return createTranslationXAnimator(view2, isRtl(view) ? translationX - i10 : i10 + translationX, translationX, translationX);
                        } else {
                            throw new IllegalArgumentException("Invalid slide direction: " + i9);
                        }
                    }
                    return createTranslationYAnimator(view2, i10 + translationY, translationY, translationY);
                }
                return createTranslationYAnimator(view2, translationY - i10, translationY, translationY);
            }
            return createTranslationXAnimator(view2, translationX - i10, translationX, translationX);
        }
        return createTranslationXAnimator(view2, i10 + translationX, translationX, translationX);
    }

    private static Animator createTranslationDisappearAnimator(View view, View view2, int i9, @Px int i10) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (i9 != 3) {
            if (i9 != 5) {
                if (i9 != 48) {
                    if (i9 != 80) {
                        if (i9 == 8388611) {
                            return createTranslationXAnimator(view2, translationX, isRtl(view) ? translationX - i10 : i10 + translationX, translationX);
                        } else if (i9 == 8388613) {
                            return createTranslationXAnimator(view2, translationX, isRtl(view) ? i10 + translationX : translationX - i10, translationX);
                        } else {
                            throw new IllegalArgumentException("Invalid slide direction: " + i9);
                        }
                    }
                    return createTranslationYAnimator(view2, translationY, translationY - i10, translationY);
                }
                return createTranslationYAnimator(view2, translationY, i10 + translationY, translationY);
            }
            return createTranslationXAnimator(view2, translationX, i10 + translationX, translationX);
        }
        return createTranslationXAnimator(view2, translationX, translationX - i10, translationX);
    }

    private static Animator createTranslationXAnimator(final View view, float f10, float f11, final float f12) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f10, f11));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationX(f12);
            }
        });
        return ofPropertyValuesHolder;
    }

    private static Animator createTranslationYAnimator(final View view, float f10, float f11, final float f12) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f10, f11));
        ofPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationY(f12);
            }
        });
        return ofPropertyValuesHolder;
    }

    private int getSlideDistanceOrDefault(Context context) {
        int i9 = this.slideDistance;
        return i9 != -1 ? i9 : context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    private static boolean isRtl(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return createTranslationAppearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return createTranslationDisappearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Px
    public int getSlideDistance() {
        return this.slideDistance;
    }

    public int getSlideEdge() {
        return this.slideEdge;
    }

    public void setSlideDistance(@Px int i9) {
        if (i9 >= 0) {
            this.slideDistance = i9;
            return;
        }
        throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
    }

    public void setSlideEdge(int i9) {
        this.slideEdge = i9;
    }
}
