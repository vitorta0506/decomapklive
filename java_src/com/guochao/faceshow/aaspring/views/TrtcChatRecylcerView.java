package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class TrtcChatRecylcerView extends RecyclerView {

    /* renamed from: a  reason: collision with root package name */
    float f24085a;

    /* renamed from: b  reason: collision with root package name */
    float f24086b;

    public TrtcChatRecylcerView(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 2 && Math.abs(motionEvent.getRawY() - this.f24085a) > Math.abs(motionEvent.getRawX() - this.f24086b)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else {
            this.f24085a = motionEvent.getRawY();
            this.f24086b = motionEvent.getRawX();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        return 0.0f;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        return super.getTopFadingEdgeStrength() * 0.8f;
    }

    public TrtcChatRecylcerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TrtcChatRecylcerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
