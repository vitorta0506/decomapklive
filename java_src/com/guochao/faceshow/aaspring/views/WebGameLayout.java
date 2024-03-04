package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class WebGameLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    LiveScrollToClearScreenView f24141a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f24142b;

    public WebGameLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f24141a != null) {
            return;
        }
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            LiveScrollToClearScreenView liveScrollToClearScreenView = (LiveScrollToClearScreenView) ((View) parent).findViewById(R.id.scroll_layout);
            if (liveScrollToClearScreenView != null) {
                this.f24141a = liveScrollToClearScreenView;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        LiveScrollToClearScreenView liveScrollToClearScreenView;
        if (this.f24142b && (liveScrollToClearScreenView = this.f24141a) != null) {
            liveScrollToClearScreenView.b(motionEvent, false);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1 || action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public WebGameLayout(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WebGameLayout(Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, 0);
    }

    public WebGameLayout(Context context, AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        this.f24142b = true;
    }
}
