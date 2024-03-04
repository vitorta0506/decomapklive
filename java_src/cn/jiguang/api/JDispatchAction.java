package cn.jiguang.api;

import android.content.Context;
import android.os.Bundle;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class JDispatchAction {
    public Object beforLogin(Context context, String str, int i9, String str2) {
        return null;
    }

    public Object beforRegister(Context context, String str, int i9, String str2) {
        return null;
    }

    public boolean checkAction(String str, int i9) {
        return true;
    }

    public abstract void dispatchMessage(Context context, String str, int i9, int i10, long j10, long j11, ByteBuffer byteBuffer);

    public void dispatchTimeOutMessage(Context context, String str, long j10, int i9) {
    }

    public Object getDataByCmd(Context context, int i9) {
        return null;
    }

    public abstract short getLogPriority(String str);

    public abstract short getLoginFlag(String str);

    public Bundle getPInfo(String str) {
        return null;
    }

    public abstract short getRegFlag(String str);

    public abstract short getRegPriority(String str);

    public abstract String getReportVersionKey(String str);

    public abstract String getSdkVersion(String str);

    public abstract short getUserCtrlProperty(String str);

    public void handleMessage(Context context, String str, Object obj) {
    }

    public abstract boolean isSupportedCMD(String str, int i9);

    public void onActionRun(Context context, String str, String str2, Bundle bundle) {
    }

    public void onEvent(Context context, String str, int i9, int i10, String str2) {
    }

    public Object onSendData(Context context, String str, long j10, int i9, int i10) {
        return null;
    }
}
