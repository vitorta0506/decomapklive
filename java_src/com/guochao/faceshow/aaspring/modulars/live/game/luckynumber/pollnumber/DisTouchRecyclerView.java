package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class DisTouchRecyclerView extends RecyclerView {
    public DisTouchRecyclerView(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        getParent().requestDisallowInterceptTouchEvent(false);
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public DisTouchRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DisTouchRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
