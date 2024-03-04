package cn.jiguang.bf;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.api.JAction;
import cn.jiguang.api.JActionExtra;
import cn.jiguang.api.JCoreInterface;
import cn.jiguang.api.JDispatchAction;
import cn.jiguang.api.SdkType;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class g extends JDispatchAction {
    private JAction a(String str) {
        return a.a().a(str);
    }

    private JActionExtra b(String str) {
        return a.a().b(str);
    }

    @Override // cn.jiguang.api.JDispatchAction
    public Object beforLogin(Context context, String str, int i9, String str2) {
        JActionExtra b10 = b(str);
        if (b10 != null) {
            return b10.beforLogin(context, i9, str2);
        }
        return null;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public Object beforRegister(Context context, String str, int i9, String str2) {
        JActionExtra b10 = b(str);
        if (b10 != null) {
            return b10.beforRegister(context, i9, str2);
        }
        return null;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public boolean checkAction(String str, int i9) {
        JActionExtra b10 = b(str);
        if (b10 != null) {
            return b10.checkAction(i9);
        }
        return true;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void dispatchMessage(Context context, String str, int i9, int i10, long j10, long j11, ByteBuffer byteBuffer) {
        JAction a10 = a(str);
        if (a10 != null) {
            d.b("SupportDispatchAction", "dispatchMessage ,command:" + i9 + ",ver:" + i10 + ",rid:" + j10 + ",reuqestId:" + j11);
            a10.dispatchMessage(context, 0L, i9, str.equals(SdkType.JMESSAGE.name()) ? new c(false, byteBuffer.limit() + 20, i10, i9, j10, JCoreInterface.getSid(), JCoreInterface.getUid()) : new c(false, i10, i9, j11), byteBuffer);
        }
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void dispatchTimeOutMessage(Context context, String str, long j10, int i9) {
        JAction a10 = a(str);
        if (a10 != null) {
            a10.dispatchTimeOutMessage(context, 0L, j10, i9);
        }
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getLogPriority(String str) {
        if (str.equals(SdkType.JPUSH.name())) {
            return (short) 1;
        }
        if (str.equals(SdkType.JANALYTICS.name())) {
            return (short) 2;
        }
        if (str.equals(SdkType.JSHARE.name())) {
            return (short) 4;
        }
        if (str.equals(SdkType.JSSP.name())) {
            return (short) 5;
        }
        if (str.equals(SdkType.JVERIFICATION.name())) {
            return (short) 3;
        }
        if (str.equals(SdkType.JMLINK.name())) {
            return (short) 6;
        }
        return str.equals(SdkType.JUNION.name()) ? (short) 7 : (short) 0;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getLoginFlag(String str) {
        if (str.equals(SdkType.JPUSH.name())) {
            return (short) 1;
        }
        if (str.equals(SdkType.JANALYTICS.name())) {
            return (short) 4;
        }
        if (str.equals(SdkType.JSHARE.name())) {
            return (short) 8;
        }
        if (str.equals(SdkType.JSSP.name())) {
            return (short) 128;
        }
        if (str.equals(SdkType.JMESSAGE.name())) {
            return (short) 32;
        }
        if (str.equals(SdkType.JVERIFICATION.name())) {
            return (short) 256;
        }
        if (str.equals(SdkType.JMLINK.name())) {
            return (short) 512;
        }
        return str.equals(SdkType.JUNION.name()) ? (short) 1024 : (short) 0;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getRegFlag(String str) {
        if (str.equals(SdkType.JPUSH.name())) {
            return (short) 1;
        }
        if (str.equals(SdkType.JANALYTICS.name())) {
            return (short) 4;
        }
        if (str.equals(SdkType.JSHARE.name())) {
            return (short) 8;
        }
        if (str.equals(SdkType.JSSP.name())) {
            return (short) 128;
        }
        if (str.equals(SdkType.JMESSAGE.name())) {
            return (short) 32;
        }
        if (str.equals(SdkType.JVERIFICATION.name())) {
            return (short) 256;
        }
        if (str.equals(SdkType.JMLINK.name())) {
            return (short) 512;
        }
        return str.equals(SdkType.JUNION.name()) ? (short) 1024 : (short) 0;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getRegPriority(String str) {
        if (str.equals(SdkType.JPUSH.name())) {
            return (short) 0;
        }
        if (str.equals(SdkType.JANALYTICS.name())) {
            return (short) 1;
        }
        if (str.equals(SdkType.JSHARE.name())) {
            return (short) 2;
        }
        if (str.equals(SdkType.JSSP.name())) {
            return (short) 4;
        }
        if (str.equals(SdkType.JVERIFICATION.name())) {
            return (short) 5;
        }
        if (str.equals(SdkType.JMLINK.name())) {
            return (short) 6;
        }
        return str.equals(SdkType.JUNION.name()) ? (short) 7 : (short) 3;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public String getReportVersionKey(String str) {
        if (str.equals(SdkType.JPUSH.name())) {
            return HiAnalyticsConstant.BI_KEY_SDK_VER;
        }
        if (str.equals(SdkType.JANALYTICS.name())) {
            return "statistics_sdk_ver";
        }
        if (str.equals(SdkType.JSHARE.name())) {
            return "share_sdk_ver";
        }
        if (str.equals(SdkType.JSSP.name())) {
            return "ssp_sdk_ver";
        }
        if (str.equals(SdkType.JMESSAGE.name())) {
            return "im_sdk_ver";
        }
        if (str.equals(SdkType.JVERIFICATION.name())) {
            return "verification_sdk_ver";
        }
        if (str.equals(SdkType.JMLINK.name())) {
            return "mlink_sdk_ver";
        }
        if (str.equals(SdkType.JUNION.name())) {
            return "junion_sdk_ver";
        }
        return null;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public String getSdkVersion(String str) {
        JAction a10 = a(str);
        return a10 != null ? a10.getSdkVersion() : "";
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getUserCtrlProperty(String str) {
        if (str.equals(SdkType.JPUSH.name())) {
            return (short) 1;
        }
        if (str.equals(SdkType.JMESSAGE.name())) {
            return (short) 2;
        }
        if (str.equals(SdkType.JANALYTICS.name())) {
            return (short) 4;
        }
        if (str.equals(SdkType.JSHARE.name())) {
            return (short) 5;
        }
        if (str.equals(SdkType.JSSP.name())) {
            return (short) 9;
        }
        if (str.equals(SdkType.JVERIFICATION.name())) {
            return (short) 10;
        }
        if (str.equals(SdkType.JMLINK.name())) {
            return (short) 11;
        }
        return str.equals(SdkType.JUNION.name()) ? (short) 12 : (short) 6;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void handleMessage(Context context, String str, Object obj) {
        d.b("SupportDispatchAction", "handleMessage,sdkType:" + str);
        JAction a10 = a(str);
        if (a10 != null) {
            a10.handleMessage(context, 0L, obj);
        }
    }

    @Override // cn.jiguang.api.JDispatchAction
    public boolean isSupportedCMD(String str, int i9) {
        JAction a10 = a(str);
        if (a10 != null) {
            return a10.isSupportedCMD(i9);
        }
        return false;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void onActionRun(Context context, String str, String str2, Bundle bundle) {
        JAction a10 = a(str);
        if (a10 != null) {
            a10.onActionRun(context, 0L, bundle, null);
        }
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void onEvent(Context context, String str, int i9, int i10, String str2) {
        JAction a10 = a(str);
        if (a10 != null) {
            a10.onEvent(context, 0L, i9);
        }
    }

    @Override // cn.jiguang.api.JDispatchAction
    public Object onSendData(Context context, String str, long j10, int i9, int i10) {
        JActionExtra b10 = b(str);
        if (b10 != null) {
            return b10.onSendData(context, 0L, j10, i9, i10);
        }
        return null;
    }
}
