package com.guochao.faceshow.component.live.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/component/live/view/InterceptTouchFrameLayout;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class InterceptTouchFrameLayout extends FrameLayout {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public InterceptTouchFrameLayout(@NotNull Context context) {
        this(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ InterceptTouchFrameLayout(Context context, AttributeSet attributeSet, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        if (r0 != 3) goto L13;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r4) {
        /*
            r3 = this;
            java.lang.String r0 = "ev"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            int r0 = r3.getChildCount()
            if (r0 != 0) goto L10
            boolean r4 = super.dispatchTouchEvent(r4)
            return r4
        L10:
            int r0 = r4.getAction()
            r1 = 1
            if (r0 == 0) goto L31
            if (r0 == r1) goto L28
            r2 = 2
            if (r0 == r2) goto L20
            r2 = 3
            if (r0 == r2) goto L28
            goto L38
        L20:
            android.view.ViewParent r0 = r3.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
            goto L38
        L28:
            android.view.ViewParent r0 = r3.getParent()
            r2 = 0
            r0.requestDisallowInterceptTouchEvent(r2)
            goto L38
        L31:
            android.view.ViewParent r0 = r3.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
        L38:
            super.dispatchTouchEvent(r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.live.view.InterceptTouchFrameLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public InterceptTouchFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
