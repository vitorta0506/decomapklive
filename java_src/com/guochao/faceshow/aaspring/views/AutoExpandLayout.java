package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes3.dex */
public class AutoExpandLayout extends CoordinatorLayout {

    /* renamed from: a  reason: collision with root package name */
    int f23499a;

    /* renamed from: b  reason: collision with root package name */
    int f23500b;

    /* renamed from: c  reason: collision with root package name */
    boolean f23501c;

    /* renamed from: d  reason: collision with root package name */
    boolean f23502d;

    public AutoExpandLayout(@NonNull Context context) {
        super(context);
        this.f23501c = false;
        this.f23502d = true;
    }

    AppBarLayout a() {
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt instanceof AppBarLayout) {
                return (AppBarLayout) childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        AppBarLayout a10 = a();
        if (a10 == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f23500b = (int) motionEvent.getX();
            this.f23499a = (int) motionEvent.getY();
            this.f23501c = false;
        } else if (action == 1) {
            motionEvent.getX();
            if (this.f23501c) {
                return super.dispatchTouchEvent(motionEvent);
            }
            int y10 = (int) motionEvent.getY();
            if (Math.abs(y10 - this.f23499a) > 0) {
                if (y10 > this.f23499a) {
                    a10.setExpanded(true, true);
                } else {
                    a10.setExpanded(false, true);
                }
            }
        } else if (action == 2) {
            int x10 = (int) motionEvent.getX();
            if (Math.abs(((int) motionEvent.getY()) - this.f23499a) > 0) {
                this.f23502d = true;
                return super.dispatchTouchEvent(motionEvent);
            }
            this.f23502d = false;
            if (Math.abs(x10 - this.f23500b) > 0) {
                this.f23501c = true;
                return false;
            }
            this.f23501c = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f23501c) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public AutoExpandLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23501c = false;
        this.f23502d = true;
    }

    public AutoExpandLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23501c = false;
        this.f23502d = true;
    }
}
