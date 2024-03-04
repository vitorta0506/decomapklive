package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.duolingo.open.rtlviewpager.RtlViewPager;
/* loaded from: classes3.dex */
public class SwipeBackViewPager extends RtlViewPager {

    /* renamed from: c  reason: collision with root package name */
    int f24030c;

    /* renamed from: d  reason: collision with root package name */
    float f24031d;

    /* renamed from: e  reason: collision with root package name */
    float f24032e;

    /* renamed from: f  reason: collision with root package name */
    boolean f24033f;

    /* renamed from: g  reason: collision with root package name */
    a f24034g;

    /* loaded from: classes3.dex */
    public interface a {
        void a(SwipeBackViewPager swipeBackViewPager);
    }

    public SwipeBackViewPager(Context context) {
        super(context);
        this.f24030c = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a aVar;
        int action = motionEvent.getAction();
        boolean z10 = true;
        if (action == 0) {
            this.f24031d = motionEvent.getRawX();
            this.f24032e = motionEvent.getRawY();
            this.f24033f = true;
        } else if (action == 1) {
            float rawX = motionEvent.getRawX();
            if (getLayoutDirection() != 1 ? rawX <= this.f24031d : rawX >= this.f24031d) {
                z10 = false;
            }
            if (z10 && Math.abs(rawX - this.f24031d) > this.f24030c * 1.5f && this.f24033f && getAdapter() != null && getCurrentItem() == 0 && (aVar = this.f24034g) != null) {
                aVar.a(this);
            }
            this.f24033f = false;
            this.f24031d = 0.0f;
            this.f24032e = 0.0f;
        } else if (action == 2) {
            motionEvent.getRawX();
            if (Math.abs(motionEvent.getRawY() - this.f24032e) > this.f24030c * 2.0f) {
                this.f24033f = false;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public a getOnSwipeBackListener() {
        return this.f24034g;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f24031d = motionEvent.getRawX();
            this.f24032e = motionEvent.getRawY();
            this.f24033f = true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setOnSwipeBackListener(a aVar) {
        this.f24034g = aVar;
    }

    public SwipeBackViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24030c = ViewConfiguration.get(context).getScaledTouchSlop();
    }
}
