package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class LiveBroadCastScrollDownView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private boolean f23777a;

    /* renamed from: b  reason: collision with root package name */
    float f23778b;

    /* renamed from: c  reason: collision with root package name */
    float f23779c;

    /* renamed from: d  reason: collision with root package name */
    a f23780d;

    /* loaded from: classes3.dex */
    public interface a {
        void a(LiveBroadCastScrollDownView liveBroadCastScrollDownView);

        void b(LiveBroadCastScrollDownView liveBroadCastScrollDownView);
    }

    public LiveBroadCastScrollDownView(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f23778b = motionEvent.getRawX();
            this.f23779c = motionEvent.getRawY();
        } else if (action == 1 || action == 3) {
            if (this.f23777a) {
                this.f23777a = false;
                return super.dispatchTouchEvent(motionEvent);
            }
            float rawY = motionEvent.getRawY();
            float abs = Math.abs(motionEvent.getRawX() - this.f23778b);
            float abs2 = Math.abs(rawY - this.f23779c);
            if (abs <= abs2 && abs2 > ViewConfiguration.get(getContext()).getScaledTouchSlop() * 2) {
                if (rawY > this.f23779c) {
                    a aVar = this.f23780d;
                    if (aVar != null) {
                        aVar.b(this);
                    }
                } else {
                    a aVar2 = this.f23780d;
                    if (aVar2 != null) {
                        aVar2.a(this);
                    }
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public a getOnScrollListener() {
        return this.f23780d;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        this.f23777a = z10;
        super.requestDisallowInterceptTouchEvent(z10);
    }

    public void setOnScrollListener(a aVar) {
        this.f23780d = aVar;
    }

    public LiveBroadCastScrollDownView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LiveBroadCastScrollDownView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
