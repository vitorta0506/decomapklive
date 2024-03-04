package cn.jpush.android.helper;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.api.JDispatchAction;
import cn.jpush.android.local.ActionHelper;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.local.JPushResponse;
import cn.jpush.android.v.a;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class b extends JDispatchAction {
    @Override // cn.jiguang.api.JDispatchAction
    public Object beforLogin(Context context, String str, int i9, String str2) {
        return ActionHelper.getInstance().beforLogin(context, str, i9, str2);
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void dispatchMessage(Context context, String str, int i9, int i10, long j10, long j11, ByteBuffer byteBuffer) {
        Logger.d("JPushDispacthAction", "dispatchMessage command:" + i9 + ",ver:" + i10 + ",rid:" + j10 + ",requestid:" + j11);
        ActionHelper.getInstance().doAction(context, "msg", new JPushResponse(i9, j10, j11, byteBuffer));
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void dispatchTimeOutMessage(Context context, String str, long j10, int i9) {
        Bundle bundle = new Bundle();
        bundle.putLong("rid", j10);
        bundle.putInt("cmd", i9);
        ActionHelper.getInstance().doAction(context, "msg_time_out", bundle);
    }

    @Override // cn.jiguang.api.JDispatchAction
    public Object getDataByCmd(Context context, int i9) {
        if (i9 != 30000) {
            if (30001 == i9) {
                return "sdk_ver_local";
            }
            if (30002 == i9) {
                return JPushConstants.SDK_VERSION_NAME;
            }
            return null;
        }
        String b10 = a.C0049a.b();
        Logger.d("JPushDispacthAction", "core get push animator config file version: " + b10);
        return b10;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getLogPriority(String str) {
        return (short) 1;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getLoginFlag(String str) {
        return (short) 1;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public Bundle getPInfo(String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("pid", 2);
        bundle.putString("code", JPushConstants.SDK_VERSION_CODE + "");
        return bundle;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getRegFlag(String str) {
        return (short) 1;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getRegPriority(String str) {
        return (short) 0;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public String getReportVersionKey(String str) {
        return HiAnalyticsConstant.BI_KEY_SDK_VER;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public String getSdkVersion(String str) {
        return ActionHelper.getInstance().getSdkVersion(str);
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getUserCtrlProperty(String str) {
        return (short) 1;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void handleMessage(Context context, String str, Object obj) {
        ActionHelper.getInstance().doAction(context, "handle_msg", obj);
    }

    @Override // cn.jiguang.api.JDispatchAction
    public boolean isSupportedCMD(String str, int i9) {
        return ActionHelper.getInstance().isSupportedCMD(str, i9);
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void onActionRun(Context context, String str, String str2, Bundle bundle) {
        ActionHelper.getInstance().doAction(context, str2, bundle);
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void onEvent(Context context, String str, int i9, int i10, String str2) {
        Bundle bundle = new Bundle();
        bundle.putInt("type", i9);
        bundle.putInt("code", i10);
        bundle.putString("msg", str2);
        ActionHelper.getInstance().doAction(context, "jcore_on_event", bundle);
    }
}
