package com.guochao.faceshow.utils;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
/* loaded from: classes4.dex */
public class SoftKeyBoardUtils {
    public static void closeSoftKeyBoard(Context context, EditText editText) {
        if (context == null || editText == null) {
            return;
        }
        editText.requestFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    public static void closeSoftKeyBoardNow(Context context, View view) {
        view.setFocusableInTouchMode(true);
        view.requestFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void closeSoftKeyBoardV2(Context context, View view) {
        InputMethodManager inputMethodManager;
        if (view == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static void openSoftKeyBoard(final EditText editText) {
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.utils.SoftKeyBoardUtils.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
                if (inputMethodManager == null) {
                    return;
                }
                inputMethodManager.showSoftInput(editText, 0);
            }
        }, 500L);
    }

    public static void openSoftKeyBoardNow(EditText editText) {
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.showSoftInput(editText, 0);
    }
}
