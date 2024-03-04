package com.guochao.faceshow.aaspring.modulars.chat.utils;

import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearSmoothScroller;
/* loaded from: classes3.dex */
public class ChatRecyclerViewScroller extends LinearSmoothScroller {

    /* renamed from: a  reason: collision with root package name */
    public float f17253a;

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return this.f17253a / displayMetrics.densityDpi;
    }
}
