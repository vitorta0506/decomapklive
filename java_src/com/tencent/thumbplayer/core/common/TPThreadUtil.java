package com.tencent.thumbplayer.core.common;

import android.os.Process;
import android.text.TextUtils;
/* loaded from: classes4.dex */
public class TPThreadUtil {
    private static final String TAG = "PlayerCore.TPThreadUtil";

    public static void setThreadName(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Thread.currentThread().setName(str);
    }

    public static void setThreadPriority(int i9) {
        if (i9 < -19 || i9 > 19) {
            TPNativeLog.printLog(4, "setThreadPriority error, priority range:[-19,20], priority:".concat(String.valueOf(i9)));
            return;
        }
        try {
            if (Process.getThreadPriority(0) != i9) {
                Process.setThreadPriority(i9);
            }
            TPNativeLog.printLog(2, "setThreadPriority, priority:".concat(String.valueOf(i9)));
        } catch (Exception e10) {
            TPNativeLog.printLog(4, TAG, e10.toString());
        }
    }
}
