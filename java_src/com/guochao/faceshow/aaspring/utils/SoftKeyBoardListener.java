package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class SoftKeyBoardListener {
    public boolean mDelay;
    ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;
    WeakReference<Window> mWindowWeakReference;
    private OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener;
    private View rootView;
    int rootViewVisibleHeight;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.utils.SoftKeyBoardListener$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ViewTreeObserver.OnGlobalLayoutListener {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGlobalLayout$0() {
            SoftKeyBoardListener softKeyBoardListener = SoftKeyBoardListener.this;
            softKeyBoardListener.viewHeightChange(softKeyBoardListener.mWindowWeakReference.get());
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            SoftKeyBoardListener softKeyBoardListener = SoftKeyBoardListener.this;
            if (softKeyBoardListener.rootViewVisibleHeight != 0) {
                if (softKeyBoardListener.mDelay) {
                    new Handler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            SoftKeyBoardListener.AnonymousClass1.this.lambda$onGlobalLayout$0();
                        }
                    }, 500L);
                    return;
                } else {
                    softKeyBoardListener.viewHeightChange(softKeyBoardListener.mWindowWeakReference.get());
                    return;
                }
            }
            softKeyBoardListener.viewHeightChange(softKeyBoardListener.mWindowWeakReference.get());
        }
    }

    /* loaded from: classes3.dex */
    public interface OnSoftKeyBoardChangeListener {
        void keyBoardHide(int i9);

        void keyBoardShow(int i9);
    }

    public SoftKeyBoardListener(Window window) {
        this.mDelay = true;
        this.mOnGlobalLayoutListener = new AnonymousClass1();
        this.mWindowWeakReference = new WeakReference<>(window);
        View decorView = window.getDecorView();
        this.rootView = decorView;
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
    }

    public static SoftKeyBoardListener setListener(Activity activity, OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        SoftKeyBoardListener softKeyBoardListener = new SoftKeyBoardListener(activity);
        softKeyBoardListener.setOnSoftKeyBoardChangeListener(onSoftKeyBoardChangeListener);
        return softKeyBoardListener;
    }

    private void setOnSoftKeyBoardChangeListener(OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        this.onSoftKeyBoardChangeListener = onSoftKeyBoardChangeListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void viewHeightChange(Window window) {
        if (window == null) {
            return;
        }
        Rect rect = new Rect();
        this.rootView.getWindowVisibleDisplayFrame(rect);
        int height = rect.height();
        int i9 = this.rootViewVisibleHeight;
        if (i9 == 0) {
            this.rootViewVisibleHeight = height;
        } else if (i9 == height) {
        } else {
            if (i9 - height > 200) {
                OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener = this.onSoftKeyBoardChangeListener;
                if (onSoftKeyBoardChangeListener != null) {
                    onSoftKeyBoardChangeListener.keyBoardShow(i9 - height);
                }
                this.rootViewVisibleHeight = height;
            } else if (height - i9 > 200) {
                OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener2 = this.onSoftKeyBoardChangeListener;
                if (onSoftKeyBoardChangeListener2 != null) {
                    onSoftKeyBoardChangeListener2.keyBoardHide(height - i9);
                }
                this.rootViewVisibleHeight = height;
            }
        }
    }

    public static void setListener(Window window, OnSoftKeyBoardChangeListener onSoftKeyBoardChangeListener) {
        new SoftKeyBoardListener(window).setOnSoftKeyBoardChangeListener(onSoftKeyBoardChangeListener);
    }

    public SoftKeyBoardListener(Activity activity) {
        this(activity.getWindow());
    }
}
