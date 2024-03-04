package com.guochao.faceshow.views;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes4.dex */
public class t implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private View f27073a;

    /* renamed from: b  reason: collision with root package name */
    private float f27074b;

    /* renamed from: c  reason: collision with root package name */
    private a f27075c;

    /* loaded from: classes4.dex */
    public interface a {
        void a(float f10);

        void b();
    }

    public t(View view) {
        this.f27073a = view;
        view.setOnTouchListener(this);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float rawX = motionEvent.getRawX() - this.f27074b;
                    this.f27074b = motionEvent.getRawX();
                    a aVar = this.f27075c;
                    if (aVar != null) {
                        aVar.a(rawX);
                    }
                } else if (action != 3) {
                    this.f27074b = 0.0f;
                }
            }
            a aVar2 = this.f27075c;
            if (aVar2 != null) {
                aVar2.b();
            }
            this.f27074b = 0.0f;
        } else {
            this.f27074b = motionEvent.getRawX();
        }
        return true;
    }

    public void setOnPositionChangedListener(a aVar) {
        this.f27075c = aVar;
    }
}
