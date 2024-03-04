package com.guochao.faceshow.aaspring.views;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import com.guochao.faceshow.aaspring.utils.LogUtils;
/* loaded from: classes3.dex */
public class FullScreenScrollToExitViewV2 extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    float f23688a;

    /* renamed from: b  reason: collision with root package name */
    float f23689b;

    /* renamed from: c  reason: collision with root package name */
    float f23690c;

    /* renamed from: d  reason: collision with root package name */
    float f23691d;

    /* renamed from: e  reason: collision with root package name */
    b f23692e;

    /* renamed from: f  reason: collision with root package name */
    a f23693f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f23694g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f23695h;

    /* renamed from: i  reason: collision with root package name */
    boolean f23696i;

    /* renamed from: j  reason: collision with root package name */
    float f23697j;

    /* renamed from: k  reason: collision with root package name */
    int f23698k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f23699l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f23700m;

    /* loaded from: classes3.dex */
    public interface a {
        void onDragFinish(boolean z10);
    }

    /* loaded from: classes3.dex */
    public interface b {
        void onCancel();

        void onDragPercent(int i9);
    }

    public FullScreenScrollToExitViewV2(@NonNull Context context) {
        super(context);
        this.f23694g = true;
        this.f23696i = false;
        this.f23699l = false;
        this.f23700m = false;
    }

    public boolean a() {
        return this.f23695h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f23694g) {
            this.f23695h = false;
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f23688a <= 0.0f) {
                        this.f23695h = false;
                        return super.dispatchTouchEvent(motionEvent);
                    } else if (motionEvent.getActionIndex() != this.f23698k) {
                        return super.dispatchTouchEvent(motionEvent);
                    } else {
                        if (motionEvent.getPointerCount() > 1) {
                            this.f23688a = 0.0f;
                            this.f23689b = 0.0f;
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(ObjectAnimator.ofFloat(this, "translationY", 0.0f), ObjectAnimator.ofFloat(this, "translationX", 0.0f), ObjectAnimator.ofFloat(this, "scaleX", 1.0f), ObjectAnimator.ofFloat(this, "scaleY", 1.0f));
                            animatorSet.start();
                            b bVar = this.f23692e;
                            if (bVar != null) {
                                bVar.onDragPercent(0);
                                this.f23692e.onCancel();
                            }
                            this.f23688a = 0.0f;
                            this.f23689b = 0.0f;
                            this.f23700m = false;
                            this.f23699l = false;
                            this.f23695h = false;
                            return super.dispatchTouchEvent(motionEvent);
                        } else if (!this.f23699l) {
                            return super.dispatchTouchEvent(motionEvent);
                        } else {
                            float rawX = motionEvent.getRawX() - this.f23690c;
                            LogUtils.i("FullScreenScrollToExitView", "dispatchTouchEvent: move x" + rawX);
                            float rawY = motionEvent.getRawY();
                            float f10 = rawY - this.f23688a;
                            LogUtils.i("FullScreenScrollToExitView", "dispatchTouchEvent: move y" + f10);
                            ViewConfiguration.get(getContext()).getScaledTouchSlop();
                            if (!this.f23700m) {
                                if (Math.abs(rawX) > Math.abs(f10)) {
                                    this.f23699l = false;
                                    this.f23700m = true;
                                    return super.dispatchTouchEvent(motionEvent);
                                } else if (Math.abs(f10) > 0.0f) {
                                    this.f23699l = true;
                                    this.f23700m = true;
                                }
                            }
                            float f11 = rawY >= this.f23688a ? f10 : 0.0f;
                            float abs = (float) ((Math.abs(f11) * 1.0d) / getHeight());
                            if (abs < 1.0f) {
                                b bVar2 = this.f23692e;
                                if (bVar2 != null) {
                                    bVar2.onDragPercent((int) (255.0f * abs));
                                }
                                float f12 = 1.0f - abs;
                                setScaleX(f12);
                                setScaleY(f12);
                                setPivotX(getWidth() / 2);
                                setPivotY(getHeight() / 2);
                                setTranslationY(f11);
                                setTranslationX(rawX);
                            }
                            this.f23689b = rawY;
                            this.f23691d = rawX;
                            this.f23697j = f11;
                            return super.dispatchTouchEvent(motionEvent);
                        }
                    }
                } else if (actionMasked != 3) {
                    return super.dispatchTouchEvent(motionEvent);
                }
            }
            if (this.f23699l) {
                if (Math.abs(this.f23689b - this.f23688a) > getHeight() / 5) {
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "pivotX", 0.0f);
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "pivotY", 0.0f);
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    animatorSet2.playTogether(ofFloat, ofFloat2);
                    animatorSet2.start();
                    a aVar = this.f23693f;
                    if (aVar != null) {
                        aVar.onDragFinish(false);
                    } else {
                        ActivityCompat.finishAfterTransition((Activity) getContext());
                    }
                } else {
                    AnimatorSet animatorSet3 = new AnimatorSet();
                    animatorSet3.playTogether(ObjectAnimator.ofFloat(this, "translationY", 0.0f), ObjectAnimator.ofFloat(this, "translationX", 0.0f), ObjectAnimator.ofFloat(this, "scaleX", 1.0f), ObjectAnimator.ofFloat(this, "scaleY", 1.0f), ObjectAnimator.ofFloat(this, "pivotX", 0.0f), ObjectAnimator.ofFloat(this, "pivotY", 0.0f));
                    animatorSet3.start();
                    b bVar3 = this.f23692e;
                    if (bVar3 != null) {
                        bVar3.onDragPercent(0);
                        this.f23692e.onCancel();
                    }
                }
                this.f23696i = false;
            }
            this.f23688a = 0.0f;
            this.f23689b = 0.0f;
            this.f23700m = false;
            this.f23699l = false;
            this.f23695h = false;
            return super.dispatchTouchEvent(motionEvent);
        }
        this.f23688a = motionEvent.getRawY();
        float rawX2 = motionEvent.getRawX();
        this.f23690c = rawX2;
        this.f23691d = rawX2;
        this.f23689b = this.f23688a;
        if (motionEvent.getPointerCount() > 1) {
            super.dispatchTouchEvent(motionEvent);
        }
        this.f23699l = true;
        this.f23700m = false;
        this.f23698k = motionEvent.getActionIndex();
        super.dispatchTouchEvent(motionEvent);
        this.f23695h = true;
        return true;
    }

    public a getOnDragFinishListener() {
        return this.f23693f;
    }

    public b getOnDragListener() {
        return this.f23692e;
    }

    public void setDragToFinishing(boolean z10) {
        this.f23695h = z10;
    }

    public void setGestureEnabled(boolean z10) {
        this.f23694g = z10;
    }

    public void setOnDragFinishListener(a aVar) {
        this.f23693f = aVar;
    }

    public void setOnDragListener(b bVar) {
        this.f23692e = bVar;
    }

    public FullScreenScrollToExitViewV2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23694g = true;
        this.f23696i = false;
        this.f23699l = false;
        this.f23700m = false;
    }

    public FullScreenScrollToExitViewV2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23694g = true;
        this.f23696i = false;
        this.f23699l = false;
        this.f23700m = false;
    }
}
