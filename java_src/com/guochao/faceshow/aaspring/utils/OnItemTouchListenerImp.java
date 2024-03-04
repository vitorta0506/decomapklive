package com.guochao.faceshow.aaspring.utils;

import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.core.view.GestureDetectorCompat;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class OnItemTouchListenerImp implements RecyclerView.OnItemTouchListener {
    private GestureDetectorCompat gestureDetectorCompat;

    public OnItemTouchListenerImp(GestureDetectorCompat gestureDetectorCompat) {
        this.gestureDetectorCompat = gestureDetectorCompat;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        this.gestureDetectorCompat.onTouchEvent(motionEvent);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        this.gestureDetectorCompat.onTouchEvent(motionEvent);
    }
}
