package com.guochao.faceshow.aaspring.utils;

import android.view.View;
/* loaded from: classes3.dex */
public class DisableDoubleClickUtils {
    private static long mClickTime;
    private static long mCurViewId;

    public static boolean canClick(int i9) {
        long j10 = i9;
        if (mCurViewId != j10) {
            mCurViewId = j10;
            mClickTime = System.currentTimeMillis();
            return true;
        } else if (mClickTime == 0 || System.currentTimeMillis() - mClickTime > 2000) {
            mClickTime = System.currentTimeMillis();
            return true;
        } else {
            return false;
        }
    }

    public static boolean canClick(int i9, long j10) {
        long j11 = i9;
        if (mCurViewId != j11) {
            mCurViewId = j11;
            mClickTime = System.currentTimeMillis();
            return true;
        } else if (mClickTime == 0 || System.currentTimeMillis() - mClickTime > j10) {
            mClickTime = System.currentTimeMillis();
            return true;
        } else {
            return false;
        }
    }

    public static boolean canClick(View view) {
        long hashCode = view == null ? 0 : view.hashCode();
        if (mCurViewId != hashCode) {
            mCurViewId = hashCode;
            mClickTime = System.currentTimeMillis();
            return true;
        } else if (mClickTime == 0 || System.currentTimeMillis() - mClickTime > 2000) {
            mClickTime = System.currentTimeMillis();
            return true;
        } else {
            return false;
        }
    }

    public static boolean canClick(View view, long j10) {
        long hashCode = view == null ? 0 : view.hashCode();
        if (mCurViewId != hashCode) {
            mCurViewId = hashCode;
            mClickTime = System.currentTimeMillis();
            return true;
        } else if (mClickTime == 0 || System.currentTimeMillis() - mClickTime > j10) {
            mClickTime = System.currentTimeMillis();
            return true;
        } else {
            return false;
        }
    }
}
