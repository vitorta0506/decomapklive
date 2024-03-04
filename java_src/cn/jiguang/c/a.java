package cn.jiguang.c;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.api.JDispatchAction;
import cn.jiguang.as.d;
import cn.jiguang.az.e;
import cn.jiguang.az.h;
import cn.jiguang.az.k;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.nio.ByteBuffer;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends JDispatchAction {
    private static JSONObject a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        try {
            ByteBuffer wrap = ByteBuffer.wrap(byteBuffer.array());
            wrap.getLong();
            byte[] bArr = new byte[wrap.getShort()];
            wrap.get(bArr);
            String str = new String(bArr, "UTF-8");
            d.c("JCoreDispatchAction", "parseBundle2Json content: " + str);
            return new JSONObject(str);
        } catch (Exception e10) {
            d.g("JCoreDispatchAction", "parseBundle2Json exception:" + e10.getMessage());
            return null;
        }
    }

    private void a(Context context, long j10, int i9, ByteBuffer byteBuffer) {
        if (i9 == 19) {
            h.a().a(context, "tcp_a18", null);
        } else if (i9 == 30 || i9 == 32) {
            cn.jiguang.e.a.b().a(context, 0, i9);
        } else if (i9 == 25) {
            a(context, byteBuffer);
        } else if (i9 == 26 && byteBuffer != null) {
            short s10 = byteBuffer.getShort();
            if (s10 == 0) {
                k.a().a(context, j10);
            } else {
                k.a().a(context, j10, s10);
            }
        }
    }

    private void a(Context context, ByteBuffer byteBuffer) {
        JSONObject a10 = a(byteBuffer);
        if (a10 == null) {
            return;
        }
        try {
            int optInt = a10.optInt("cmd");
            JSONObject optJSONObject = a10.optJSONObject("content");
            String jSONObject = optJSONObject != null ? optJSONObject.toString() : "";
            d.c("JCoreDispatchAction", "deal command, cmd: " + optInt + ", content: " + jSONObject);
            if (optInt == 75) {
                h.a().a(optJSONObject);
            } else if (optInt == 80) {
                cn.jiguang.ar.b.a(context, optJSONObject);
            }
            Bundle bundle = new Bundle();
            bundle.putByteArray("RESPONSE_BODY", byteBuffer.array());
            e.a(context, "cmd", bundle);
        } catch (Throwable th2) {
            d.g("JCoreDispatchAction", "deal command failed, " + th2.getMessage());
        }
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void dispatchMessage(Context context, String str, int i9, int i10, long j10, long j11, ByteBuffer byteBuffer) {
        try {
            a(context, j11, i9, byteBuffer);
        } catch (Throwable th2) {
            d.g("JCoreDispatchAction", "dispatchMessage failed:" + th2.getMessage());
        }
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getLogPriority(String str) {
        return (short) 0;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getLoginFlag(String str) {
        return (short) 0;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getRegFlag(String str) {
        return (short) 0;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getRegPriority(String str) {
        return (short) 3;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public String getReportVersionKey(String str) {
        return "core_sdk_ver";
    }

    @Override // cn.jiguang.api.JDispatchAction
    public String getSdkVersion(String str) {
        return cn.jiguang.a.a.f1808b;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public short getUserCtrlProperty(String str) {
        return (short) 6;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void handleMessage(Context context, String str, Object obj) {
    }

    @Override // cn.jiguang.api.JDispatchAction
    public boolean isSupportedCMD(String str, int i9) {
        return i9 == 0 || i9 == 1 || i9 == 19 || i9 == 25 || i9 == 26 || i9 == 30 || i9 == 32;
    }

    @Override // cn.jiguang.api.JDispatchAction
    public void onActionRun(Context context, String str, String str2, Bundle bundle) {
        if (bundle != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                if (str2.equals("asm")) {
                    cn.jiguang.e.a.b().a(context, bundle);
                } else if (str2.equals("asmr")) {
                    cn.jiguang.e.a.b().b(context, bundle);
                } else if (str2.equals("lbsenable")) {
                    e.a(context, str2, bundle);
                    cn.jiguang.g.b.a(context, cn.jiguang.g.a.z().a((cn.jiguang.g.a<Boolean>) Boolean.valueOf(bundle.getBoolean("enable"))));
                } else if (!str2.equals("lbsforenry")) {
                    if (!str2.equals(PushConstants.MZ_PUSH_MESSAGE_METHOD_ACTION_NOTIFICATION_STATE) && !str2.equals("old_cmd") && !str2.equals("user_present") && !str2.equals("set_wake_enable")) {
                        return;
                    }
                    e.a(context, str2, bundle);
                } else {
                    long j10 = bundle.getLong("forenry");
                    d.c("JCoreDispatchAction", "setLbsPermissionDialogShieldDelay=" + j10);
                    if (((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.x())).longValue() <= 0) {
                        cn.jiguang.g.b.a(context, cn.jiguang.g.a.x().a((cn.jiguang.g.a<Long>) Long.valueOf(System.currentTimeMillis())));
                    }
                    cn.jiguang.g.a[] aVarArr = new cn.jiguang.g.a[1];
                    aVarArr[0] = cn.jiguang.g.a.y().a((cn.jiguang.g.a<Long>) (j10 > 0 ? Long.valueOf(j10) : null));
                    cn.jiguang.g.b.a(context, aVarArr);
                }
            } catch (Throwable th2) {
                d.g("JCoreDispatchAction", "onActionRun failed:" + th2.getMessage());
            }
        }
    }
}
