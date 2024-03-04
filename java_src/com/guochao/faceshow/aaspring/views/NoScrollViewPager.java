package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.duolingo.open.rtlviewpager.RtlViewPager;
/* loaded from: classes3.dex */
public class NoScrollViewPager extends RtlViewPager {

    /* renamed from: c  reason: collision with root package name */
    private boolean f23910c;

    /* renamed from: d  reason: collision with root package name */
    int f23911d;

    /* renamed from: e  reason: collision with root package name */
    int f23912e;

    public NoScrollViewPager(@NonNull Context context) {
        super(context);
        this.f23910c = true;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        try {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f23911d = (int) motionEvent.getX();
                this.f23912e = (int) motionEvent.getY();
                this.f23910c = true;
                getParent().requestDisallowInterceptTouchEvent(false);
            } else if (action == 2) {
                int x10 = (int) motionEvent.getX();
                int y10 = (int) motionEvent.getY();
                if (Math.abs(x10 - this.f23911d) > 0) {
                    if (getCurrentItem() == getAdapter().getCount() - 1 && x10 < this.f23911d) {
                        return super.onInterceptTouchEvent(motionEvent);
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    return super.onInterceptTouchEvent(motionEvent);
                }
                getParent().requestDisallowInterceptTouchEvent(false);
                if (Math.abs(y10 - this.f23912e) > 0) {
                    this.f23910c = false;
                    return false;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (this.f23910c) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public void setScrollable(boolean z10) {
        this.f23910c = z10;
    }

    public NoScrollViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23910c = true;
    }
}
