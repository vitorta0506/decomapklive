package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import java.util.HashMap;
import java.util.LinkedHashMap;
/* loaded from: classes3.dex */
public class FoldingViewPager extends RtlViewPager {

    /* renamed from: c  reason: collision with root package name */
    private float f23684c;

    /* renamed from: d  reason: collision with root package name */
    private HashMap<Integer, View> f23685d;

    /* renamed from: e  reason: collision with root package name */
    private View f23686e;

    /* renamed from: f  reason: collision with root package name */
    private View f23687f;

    public FoldingViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23685d = new LinkedHashMap();
    }

    private boolean g(float f10) {
        return ((double) Math.abs(f10)) < 1.0E-4d;
    }

    protected void e(View view, View view2, float f10, int i9) {
        Log.d("FoldingViewPager", "effectOffset----------------/" + f10);
        Log.d("FoldingViewPager", "positionOffsetPixels----------------/" + i9);
        if (view2 != null) {
            view2.bringToFront();
        }
        if (view != null) {
            float f11 = i9;
            this.f23684c = f11;
            view.setTranslationX(f11);
        }
    }

    public View f(int i9) {
        return this.f23685d.get(Integer.valueOf(i9));
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void onPageScrolled(int i9, float f10, int i10) {
        float f11 = g(f10) ? 0.0f : f10;
        this.f23686e = f(i9);
        View f12 = f(i9 + 1);
        this.f23687f = f12;
        e(this.f23686e, f12, f11, i10);
        super.onPageScrolled(i9, f10, i10);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
