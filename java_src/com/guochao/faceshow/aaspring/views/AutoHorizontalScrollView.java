package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.views.AutoHorizontalScrollView;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u001dB\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0010\u001a\u00020\u0011H\u0014J\u0012\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0019\u001a\u00020\bH\u0002J\u0006\u0010\u001a\u001a\u00020\u0011J\u0006\u0010\u001b\u001a\u00020\bJ\b\u0010\u001c\u001a\u00020\u0011H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;", "Landroid/widget/HorizontalScrollView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "autoScrolling", "", "scrollEndListener", "Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;", "getScrollEndListener", "()Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;", "setScrollEndListener", "(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;)V", "shouldScroll", "onDetachedFromWindow", "", "onDraw", "canvas", "Landroid/graphics/Canvas;", "onInterceptTouchEvent", "ev", "Landroid/view/MotionEvent;", "onTouchEvent", "scrollInternal", "scrollToEnd", "startAutoScroll", "stopScroll", "ScrollEndListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AutoHorizontalScrollView extends HorizontalScrollView {
    private boolean autoScrolling;
    @Nullable
    private ScrollEndListener scrollEndListener;
    private boolean shouldScroll;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;", "", "onScrollEnd", "", ViewHierarchyConstants.VIEW_KEY, "Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface ScrollEndListener {
        void onScrollEnd(@NotNull AutoHorizontalScrollView autoHorizontalScrollView);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AutoHorizontalScrollView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ AutoHorizontalScrollView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onDraw$lambda-1$lambda-0  reason: not valid java name */
    public static final void m597onDraw$lambda1$lambda0(ScrollEndListener this_apply, AutoHorizontalScrollView this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.onScrollEnd(this$0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onDraw$lambda-3$lambda-2  reason: not valid java name */
    public static final void m598onDraw$lambda3$lambda2(ScrollEndListener this_apply, AutoHorizontalScrollView this$0) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_apply.onScrollEnd(this$0);
    }

    private final boolean scrollInternal() {
        if (getLayoutDirection() == 1) {
            if (canScrollHorizontally(-3)) {
                smoothScrollBy(-1, 0);
                return true;
            }
        } else if (canScrollHorizontally(3)) {
            smoothScrollBy(1, 0);
            return true;
        }
        return false;
    }

    private final void stopScroll() {
        this.shouldScroll = false;
    }

    @Nullable
    public final ScrollEndListener getScrollEndListener() {
        return this.scrollEndListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopScroll();
    }

    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        super.onDraw(canvas);
        if (this.autoScrolling && this.shouldScroll) {
            if (getLayoutDirection() == 1) {
                if (canScrollHorizontally(-1)) {
                    smoothScrollBy(-1, 0);
                    return;
                }
                this.autoScrolling = false;
                final ScrollEndListener scrollEndListener = this.scrollEndListener;
                if (scrollEndListener != null) {
                    postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.views.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            AutoHorizontalScrollView.m597onDraw$lambda1$lambda0(AutoHorizontalScrollView.ScrollEndListener.this, this);
                        }
                    }, 5000L);
                }
            } else if (canScrollHorizontally(3)) {
                smoothScrollBy(1, 0);
            } else {
                this.autoScrolling = false;
                final ScrollEndListener scrollEndListener2 = this.scrollEndListener;
                if (scrollEndListener2 != null) {
                    postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.views.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            AutoHorizontalScrollView.m598onDraw$lambda3$lambda2(AutoHorizontalScrollView.ScrollEndListener.this, this);
                        }
                    }, 5000L);
                }
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(@Nullable MotionEvent motionEvent) {
        return false;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        return false;
    }

    public final void scrollToEnd() {
        fullScroll(getLayoutDirection() == 1 ? 66 : 17);
    }

    public final void setScrollEndListener(@Nullable ScrollEndListener scrollEndListener) {
        this.scrollEndListener = scrollEndListener;
    }

    public final boolean startAutoScroll() {
        this.autoScrolling = true;
        this.shouldScroll = true;
        scrollToEnd();
        if (isAttachedToWindow()) {
            return scrollInternal();
        }
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AutoHorizontalScrollView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
