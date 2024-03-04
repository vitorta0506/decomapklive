package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.duolingo.open.rtlviewpager.RtlViewPager;
/* loaded from: classes3.dex */
public class HackyViewPager extends RtlViewPager {

    /* renamed from: c  reason: collision with root package name */
    private int f23722c;

    /* renamed from: d  reason: collision with root package name */
    float f23723d;

    /* renamed from: e  reason: collision with root package name */
    float f23724e;

    /* renamed from: f  reason: collision with root package name */
    boolean f23725f;

    /* renamed from: g  reason: collision with root package name */
    a f23726g;

    /* loaded from: classes3.dex */
    public interface a {
        void onSwipeRight(HackyViewPager hackyViewPager);
    }

    public HackyViewPager(Context context) {
        super(context);
        this.f23722c = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        a aVar;
        if (getAdapter() == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f23723d = motionEvent.getRawX();
            this.f23724e = motionEvent.getRawY();
            this.f23725f = true;
        } else if (action == 1) {
            float rawX = motionEvent.getRawX();
            if ((getLayoutDirection() != 0 ? rawX > this.f23723d : rawX < this.f23723d) && Math.abs(rawX - this.f23723d) > this.f23722c * 1.5f && this.f23725f && getAdapter() != null && getCurrentItem() == getAdapter().getCount() - 1 && (aVar = this.f23726g) != null) {
                aVar.onSwipeRight(this);
            }
            this.f23725f = false;
            this.f23723d = 0.0f;
            this.f23724e = 0.0f;
        } else if (action == 2) {
            motionEvent.getRawX();
            motionEvent.getRawY();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public a getOnSwipeBackListener() {
        return this.f23726g;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            if (motionEvent.getAction() == 0) {
                this.f23723d = motionEvent.getRawX();
                this.f23724e = motionEvent.getRawY();
                this.f23725f = true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        } catch (ArrayIndexOutOfBoundsException unused) {
            Log.e("HackyViewPager", "hacky viewpager error2");
            return false;
        } catch (IllegalArgumentException unused2) {
            Log.e("HackyViewPager", "hacky viewpager error1");
            return false;
        }
    }

    public void setOnSwipeBackListener(a aVar) {
        this.f23726g = aVar;
    }

    public HackyViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23722c = ViewConfiguration.get(context).getScaledTouchSlop();
    }
}
