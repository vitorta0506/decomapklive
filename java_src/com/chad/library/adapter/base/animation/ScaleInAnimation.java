package com.chad.library.adapter.base.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/chad/library/adapter/base/animation/ScaleInAnimation;", "Lcom/chad/library/adapter/base/animation/BaseAnimation;", "mFrom", "", "(F)V", "animators", "", "Landroid/animation/Animator;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)[Landroid/animation/Animator;", "Companion", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ScaleInAnimation implements BaseAnimation {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float DEFAULT_SCALE_FROM = 0.5f;
    private final float mFrom;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/chad/library/adapter/base/animation/ScaleInAnimation$Companion;", "", "()V", "DEFAULT_SCALE_FROM", "", "com.github.CymChad.brvah"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @JvmOverloads
    public ScaleInAnimation() {
        this(0.0f, 1, null);
    }

    @JvmOverloads
    public ScaleInAnimation(float f10) {
        this.mFrom = f10;
    }

    @Override // com.chad.library.adapter.base.animation.BaseAnimation
    @NotNull
    public Animator[] animators(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator scaleX = ObjectAnimator.ofFloat(view, "scaleX", this.mFrom, 1.0f);
        scaleX.setDuration(300L);
        scaleX.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator scaleY = ObjectAnimator.ofFloat(view, "scaleY", this.mFrom, 1.0f);
        scaleY.setDuration(300L);
        scaleY.setInterpolator(new DecelerateInterpolator());
        Intrinsics.checkNotNullExpressionValue(scaleX, "scaleX");
        Intrinsics.checkNotNullExpressionValue(scaleY, "scaleY");
        return new Animator[]{scaleX, scaleY};
    }

    public /* synthetic */ ScaleInAnimation(float f10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? 0.5f : f10);
    }
}
