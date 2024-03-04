package com.guochao.faceshow.aaspring.utils;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
/* loaded from: classes3.dex */
public class IMEUtils {
    public static void hideIME(EditText editText) {
        ((InputMethodManager) editText.getContext().getSystemService("input_method")).toggleSoftInputFromWindow(editText.getWindowToken(), 1, 1);
    }

    public static void showIME(EditText editText) {
        editText.requestFocus();
        ((InputMethodManager) editText.getContext().getSystemService("input_method")).toggleSoftInputFromWindow(editText.getWindowToken(), 1, 1);
    }
}
