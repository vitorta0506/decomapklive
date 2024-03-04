package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\r\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u00013B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010$\u001a\u00020\"H\u0002J\u0012\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0014J\u0018\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0014J\u0006\u0010,\u001a\u00020&J\b\u0010-\u001a\u00020&H\u0002J\u0012\u0010.\u001a\u00020&2\b\u0010/\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u00100\u001a\u00020&2\b\u00101\u001a\u0004\u0018\u000102H\u0016J\u0006\u0010!\u001a\u00020&R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/guochao/faceshow/views/HourRankTextView;", "Landroid/widget/TextSwitcher;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "currentText", "", "currentWidth", "", "endRunnable", "Ljava/lang/Runnable;", "h", "Landroid/os/Handler;", "max", "getMax", "()I", "setMax", "(I)V", "oldFactory", "Landroid/widget/ViewSwitcher$ViewFactory;", "getOldFactory", "()Landroid/widget/ViewSwitcher$ViewFactory;", "setOldFactory", "(Landroid/widget/ViewSwitcher$ViewFactory;)V", "onScrollListener", "Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;", "getOnScrollListener", "()Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;", "setOnScrollListener", "(Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;)V", "realWidth", "stop", "", "waitingForNext", "canScroll", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "reStartScroll", "scroll", "setFactory", "factory", "setText", ViewHierarchyConstants.TEXT_KEY, "", "ScrollListener", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class HourRankTextView extends TextSwitcher {
    @Nullable
    private String currentText;
    private int currentWidth;
    @NotNull
    private Runnable endRunnable;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Handler f26645h;
    private int max;
    @Nullable
    private ViewSwitcher.ViewFactory oldFactory;
    @Nullable
    private ScrollListener onScrollListener;
    private int realWidth;
    private boolean stop;
    private boolean waitingForNext;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;", "", "onScrollToEnd", "", "textView", "Lcom/guochao/faceshow/views/HourRankTextView;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface ScrollListener {
        void onScrollToEnd(@NotNull HourRankTextView hourRankTextView);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HourRankTextView(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ HourRankTextView(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    private final boolean canScroll() {
        if (q7.a.e().j()) {
            if (getScrollX() > getWidth() - this.realWidth) {
                return true;
            }
        } else if (getScrollX() < this.realWidth - getWidth()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: endRunnable$lambda-0  reason: not valid java name */
    public static final void m800endRunnable$lambda0(HourRankTextView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ScrollListener scrollListener = this$0.onScrollListener;
        if (scrollListener != null) {
            scrollListener.onScrollToEnd(this$0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: reStartScroll$lambda-1  reason: not valid java name */
    public static final void m801reStartScroll$lambda1(HourRankTextView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.isAttachedToWindow()) {
            this$0.stop = false;
            this$0.waitingForNext = false;
            if (this$0.canScroll()) {
                this$0.scroll();
                return;
            }
            this$0.f26645h.removeCallbacks(this$0.endRunnable);
            this$0.f26645h.postDelayed(this$0.endRunnable, 2000L);
        }
    }

    private final void scroll() {
        if (q7.a.e().j()) {
            scrollBy(-1, 0);
        } else {
            scrollBy(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setText$lambda-2  reason: not valid java name */
    public static final void m802setText$lambda2(HourRankTextView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.reStartScroll();
    }

    public final int getMax() {
        return this.max;
    }

    @Nullable
    public final ViewSwitcher.ViewFactory getOldFactory() {
        return this.oldFactory;
    }

    @Nullable
    public final ScrollListener getOnScrollListener() {
        return this.onScrollListener;
    }

    @Override // android.view.View
    protected void onDraw(@Nullable Canvas canvas) {
        super.onDraw(canvas);
        if (this.stop || this.waitingForNext) {
            return;
        }
        if (q7.a.e().j()) {
            if (getScrollX() <= getWidth() - this.realWidth) {
                this.stop = true;
                this.f26645h.removeCallbacks(this.endRunnable);
                this.f26645h.postDelayed(this.endRunnable, 2000L);
                return;
            }
            scroll();
        } else if (getScrollX() >= this.realWidth - getWidth()) {
            this.stop = true;
            this.f26645h.removeCallbacks(this.endRunnable);
            this.f26645h.postDelayed(this.endRunnable, 2000L);
        } else {
            scroll();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int coerceAtMost;
        super.onMeasure(i9, i10);
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(this.currentWidth, this.max);
        setMeasuredDimension(coerceAtMost, getMeasuredHeight());
        getChildCount();
    }

    public final void reStartScroll() {
        if (isAttachedToWindow()) {
            this.stop = true;
            if (q7.a.e().j()) {
                scrollTo(getWidth() - getRight(), 0);
            } else {
                scrollTo(0, 0);
            }
            this.f26645h.postDelayed(new Runnable() { // from class: com.guochao.faceshow.views.j
                @Override // java.lang.Runnable
                public final void run() {
                    HourRankTextView.m801reStartScroll$lambda1(HourRankTextView.this);
                }
            }, 2000L);
        }
    }

    @Override // android.widget.ViewSwitcher
    public void setFactory(@Nullable ViewSwitcher.ViewFactory viewFactory) {
        super.setFactory(viewFactory);
        this.oldFactory = viewFactory;
    }

    public final void setMax(int i9) {
        this.max = i9;
    }

    public final void setOldFactory(@Nullable ViewSwitcher.ViewFactory viewFactory) {
        this.oldFactory = viewFactory;
    }

    public final void setOnScrollListener(@Nullable ScrollListener scrollListener) {
        this.onScrollListener = scrollListener;
    }

    @Override // android.widget.TextSwitcher
    public void setText(@Nullable CharSequence charSequence) {
        super.setText(charSequence);
        this.stop = true;
        this.f26645h.removeCallbacksAndMessages(null);
        this.currentText = charSequence != null ? charSequence.toString() : null;
        int calTextWidth = TextViewUtils.calTextWidth((TextView) getCurrentView(), this.currentText);
        this.realWidth = calTextWidth;
        int i9 = this.currentWidth;
        if (i9 == 0) {
            this.currentWidth = calTextWidth;
        } else {
            this.currentWidth = Math.min(i9, calTextWidth);
        }
        requestLayout();
        this.f26645h.post(new Runnable() { // from class: com.guochao.faceshow.views.k
            @Override // java.lang.Runnable
            public final void run() {
                HourRankTextView.m802setText$lambda2(HourRankTextView.this);
            }
        });
    }

    public final void stop() {
        this.stop = true;
        this.f26645h.removeCallbacksAndMessages(null);
        scrollTo(0, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public HourRankTextView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.max = DensityUtil.dp2px(80.0f);
        this.f26645h = new Handler(Looper.getMainLooper());
        setWillNotDraw(false);
        this.endRunnable = new Runnable() { // from class: com.guochao.faceshow.views.i
            @Override // java.lang.Runnable
            public final void run() {
                HourRankTextView.m800endRunnable$lambda0(HourRankTextView.this);
            }
        };
    }
}
