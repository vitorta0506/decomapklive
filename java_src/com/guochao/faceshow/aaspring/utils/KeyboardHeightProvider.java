package com.guochao.faceshow.aaspring.utils;

import android.app.Activity;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.guochao.faceshow.utils.ScreenTools;
import java.lang.reflect.Method;
/* loaded from: classes3.dex */
public class KeyboardHeightProvider extends PopupWindow {
    private static final String TAG = "sample_KeyboardHeightProvider";
    private Activity activity;
    private int keyboardLandscapeHeight;
    private int keyboardPortraitHeight;
    private KeyboardHeightObserver observer;
    private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private View parentView;
    private View popupView;

    public KeyboardHeightProvider(Activity activity, View view) {
        super(activity);
        this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (KeyboardHeightProvider.this.popupView != null) {
                    KeyboardHeightProvider.this.handleOnGlobalLayout();
                }
            }
        };
        this.activity = activity;
        this.popupView = new LinearLayout(activity);
        this.popupView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        setContentView(this.popupView);
        setSoftInputMode(21);
        setInputMethodMode(1);
        this.parentView = view;
        setFocusable(false);
        setWidth(0);
        setHeight(-1);
        setTouchInterceptor(new View.OnTouchListener() { // from class: com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return false;
            }
        });
    }

    private int getScreenOrientation() {
        return this.activity.getResources().getConfiguration().orientation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnGlobalLayout() {
        int i9 = this.activity.getResources().getConfiguration().keyboard;
        int i10 = (i9 == 1 || i9 == 0) ? 0 : 1;
        int screenRealHeight = ScreenTools.getScreenRealHeight((Activity) getContentView().getContext());
        Rect rect = new Rect();
        this.popupView.getWindowVisibleDisplayFrame(rect);
        int screenOrientation = getScreenOrientation();
        int i11 = screenRealHeight - rect.bottom;
        if (i11 == 0) {
            notifyKeyboardHeightChanged(0, screenOrientation, i10);
        } else if (screenOrientation == 1) {
            this.keyboardPortraitHeight = i11;
            notifyKeyboardHeightChanged(i11, screenOrientation, i10);
        } else {
            this.keyboardLandscapeHeight = i11;
            notifyKeyboardHeightChanged(i11, screenOrientation, i10);
        }
    }

    private void notifyKeyboardHeightChanged(int i9, int i10, int i11) {
        KeyboardHeightObserver keyboardHeightObserver = this.observer;
        if (keyboardHeightObserver != null) {
            keyboardHeightObserver.onKeyboardHeightChanged(i9, i10, i11);
        }
    }

    private void setPopupWindowTouchModal(PopupWindow popupWindow, boolean z10) {
        if (popupWindow == null) {
            return;
        }
        try {
            Method declaredMethod = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(popupWindow, Boolean.valueOf(z10));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void close() {
        this.popupView.getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        this.observer = null;
        dismiss();
    }

    public void setKeyboardHeightObserver(KeyboardHeightObserver keyboardHeightObserver) {
        this.observer = keyboardHeightObserver;
    }

    public void start() {
        Activity activity;
        this.popupView.getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
        setBackgroundDrawable(new ColorDrawable(0));
        if (isShowing() || this.parentView.getWindowToken() == null || (activity = this.activity) == null || activity.isFinishing() || this.activity.isDestroyed()) {
            return;
        }
        try {
            showAtLocation(this.parentView, 0, 0, 0);
        } catch (Exception unused) {
        }
    }
}
