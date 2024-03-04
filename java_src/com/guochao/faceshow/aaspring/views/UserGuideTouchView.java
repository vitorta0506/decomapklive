package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes3.dex */
public class UserGuideTouchView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    int f24093a;

    /* renamed from: b  reason: collision with root package name */
    boolean f24094b;

    /* renamed from: c  reason: collision with root package name */
    float f24095c;

    /* renamed from: d  reason: collision with root package name */
    float f24096d;

    /* renamed from: e  reason: collision with root package name */
    LiveScrollToClearScreenView f24097e;

    /* renamed from: f  reason: collision with root package name */
    View.OnClickListener f24098f;

    public UserGuideTouchView(@NonNull Context context) {
        this(context, null);
    }

    private void a() {
        this.f24093a = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private void b() {
        LiveScrollToClearScreenView liveScrollToClearScreenView = this.f24097e;
        if (liveScrollToClearScreenView != null) {
            liveScrollToClearScreenView.h();
        }
    }

    private void c() {
        LiveScrollToClearScreenView liveScrollToClearScreenView = this.f24097e;
        if (liveScrollToClearScreenView != null) {
            liveScrollToClearScreenView.i();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f24094b) {
            super.dispatchTouchEvent(motionEvent);
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public LiveScrollToClearScreenView getLiveScrollToClearScreenView() {
        return this.f24097e;
    }

    LiveScrollToClearScreenView getParentView() {
        View view = this;
        while (view.getParent() != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof LiveScrollToClearScreenView) {
                return (LiveScrollToClearScreenView) parent;
            }
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f24094b) {
            return super.onTouchEvent(motionEvent);
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f24095c = motionEvent.getX();
            this.f24096d = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float abs = Math.abs(rawX - this.f24095c);
                if (abs > Math.abs(rawY - this.f24096d) && abs >= this.f24093a) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
            }
        } else if (Math.abs(this.f24095c - rawX) < this.f24093a && Math.abs(this.f24096d - rawY) < this.f24093a) {
            LogUtils.i("UserGuideTouchView", "onTouchEvent: 点击事件");
            View.OnClickListener onClickListener = this.f24098f;
            if (onClickListener != null) {
                onClickListener.onClick(this);
            }
            return true;
        } else {
            LogUtils.i("UserGuideTouchView", "onTouchEvent: up ");
            int abs2 = (int) Math.abs(this.f24095c - motionEvent.getX());
            int abs3 = (int) Math.abs(this.f24096d - motionEvent.getY());
            float x10 = motionEvent.getX();
            motionEvent.getY();
            if (abs2 > this.f24093a && abs2 > abs3 * 2) {
                float f10 = x10 - this.f24095c;
                if (f10 > ScreenTools.dip2px(70.0f)) {
                    if (getLayoutDirection() == 1) {
                        c();
                        return true;
                    }
                    c();
                    return true;
                } else if (f10 < (-ScreenTools.dip2px(70.0f))) {
                    if (getLayoutDirection() == 1) {
                        b();
                        return true;
                    }
                    b();
                    return true;
                }
            }
        }
        return true;
    }

    public void setLiveScrollToClearScreenView(LiveScrollToClearScreenView liveScrollToClearScreenView) {
        this.f24097e = liveScrollToClearScreenView;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f24098f = onClickListener;
    }

    public void setTouchEnabled(boolean z10) {
        this.f24094b = z10;
    }

    public UserGuideTouchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserGuideTouchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, i9, 0);
    }

    public UserGuideTouchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        this.f24093a = 0;
        this.f24094b = true;
        a();
    }
}
