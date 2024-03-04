package cn.jiguang.az;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.api.JDispatchAction;
import cn.jiguang.internal.JConstants;
import cn.jpush.android.api.JPushInterface;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f2295b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f2296c = new Object();

    /* renamed from: a  reason: collision with root package name */
    public static ConcurrentHashMap<String, JDispatchAction> f2294a = new ConcurrentHashMap<>();

    private b() {
        Object a10 = cn.jiguang.d.a.a();
        if (a10 instanceof HashMap) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("actiom map size:");
            HashMap<String, String> hashMap = (HashMap) a10;
            sb2.append(hashMap.size());
            cn.jiguang.as.d.c("DispatchActionManager", sb2.toString());
            a(hashMap);
            a(JConstants.SDK_TYPE, cn.jiguang.c.a.class.getCanonicalName());
        }
    }

    private static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        String[] split = str.split("\\.");
        return (Integer.parseInt(split[0]) << 16) + (Integer.parseInt(split[1]) << 8) + Integer.parseInt(split[2]);
    }

    public static b a() {
        if (f2295b == null) {
            synchronized (f2296c) {
                if (f2295b == null) {
                    f2295b = new b();
                }
            }
        }
        return f2295b;
    }

    private void b(Context context, int i9, int i10, String str) {
        Intent intent = null;
        try {
            if (i9 == 0 && i10 == 0) {
                intent = new Intent(JPushInterface.ACTION_REGISTRATION_ID);
                intent.putExtra(JPushInterface.EXTRA_REGISTRATION_ID, str);
            } else if (i9 == -1 || i9 == 1) {
                intent = new Intent(JPushInterface.ACTION_CONNECTION_CHANGE);
                if (i9 == -1) {
                    intent.putExtra(JPushInterface.EXTRA_CONNECTION_CHANGE, false);
                } else {
                    intent.putExtra(JPushInterface.EXTRA_CONNECTION_CHANGE, true);
                }
            }
            if (intent != null) {
                String packageName = context.getPackageName();
                intent.addCategory(packageName);
                intent.setPackage(packageName);
                cn.jiguang.f.a.a(context, intent);
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("DispatchActionManager", "sendToOldPushUser failed:" + th2.getMessage());
        }
    }

    public byte a(Context context) {
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null) {
                Object beforLogin = value.beforLogin(context, entry.getKey(), 24, "platformtype");
                if (beforLogin instanceof Byte) {
                    return ((Byte) beforLogin).byteValue();
                }
            }
        }
        return (byte) 0;
    }

    public Object a(Context context, String str, int i9) {
        String str2;
        if (JConstants.SDK_VERSION_INT <= 284) {
            return null;
        }
        JDispatchAction jDispatchAction = f2294a.get(str);
        if (jDispatchAction != null) {
            Object dataByCmd = jDispatchAction.getDataByCmd(context, i9);
            if (dataByCmd != null) {
                return dataByCmd;
            }
            str2 = str + " sdk action data:" + dataByCmd + ", actionType: " + i9;
        } else {
            str2 = str + " sdk action is null";
        }
        cn.jiguang.as.d.a("DispatchActionManager", str2);
        return null;
    }

    public void a(Context context, int i9, int i10, String str) {
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null) {
                value.onEvent(context, entry.getKey(), i9, i10, str);
            }
        }
        b(context, i9, i10, str);
    }

    public void a(Context context, cn.jiguang.bb.c cVar, ByteBuffer byteBuffer) {
        if (cVar == null) {
            cn.jiguang.as.d.g("DispatchActionManager", "Action - dispatchMessage unexcepted - head was null");
            return;
        }
        d a10 = j.a().a(cVar.f2408e);
        if (a10 == null) {
            for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
                JDispatchAction value = entry.getValue();
                if (value != null && value.isSupportedCMD(entry.getKey(), cVar.f2406c)) {
                    value.dispatchMessage(context, entry.getKey(), cVar.f2406c, cVar.f2405b, cVar.f2408e, -1L, byteBuffer);
                }
            }
            return;
        }
        cn.jiguang.as.d.c("DispatchActionManager", "dispacth msg with reuqest :" + a10);
        JDispatchAction jDispatchAction = f2294a.get(a10.f2299c);
        if (jDispatchAction != null) {
            jDispatchAction.dispatchMessage(context, a10.f2299c, cVar.f2406c, cVar.f2405b, cVar.f2408e, a10.f2298b, byteBuffer);
        }
        Bundle bundle = new Bundle();
        bundle.putLong("rid", cVar.f2408e);
        h.a().a(context, "tcp_a7", bundle);
    }

    public void a(Context context, String str, long j10, int i9) {
        if (!TextUtils.isEmpty(str) && str.equals(JConstants.SDK_TYPE)) {
            if (i9 == 26) {
                k.a().b(context, j10);
                return;
            } else if (i9 == 30 || i9 == 32) {
                cn.jiguang.e.a.b().a(context, i9);
                return;
            } else {
                return;
            }
        }
        JDispatchAction jDispatchAction = f2294a.get(str);
        if (jDispatchAction != null) {
            jDispatchAction.dispatchTimeOutMessage(context, str, j10, i9);
            return;
        }
        cn.jiguang.as.d.g("DispatchActionManager", "not found dispatch action by sdktype:" + str);
    }

    public void a(Context context, String str, Bundle bundle) {
        if (bundle == null) {
            cn.jiguang.as.d.h("DispatchActionManager", "run action bundle is null");
        } else if (TextUtils.isEmpty(str)) {
            cn.jiguang.as.d.h("DispatchActionManager", "run action sdktype is empty");
        } else {
            if (JConstants.SDK_TYPE.contains(str)) {
                str = JConstants.SDK_TYPE;
            }
            JDispatchAction jDispatchAction = f2294a.get(str);
            if (jDispatchAction != null) {
                jDispatchAction.onActionRun(context, str, bundle.getString("internal_action"), bundle);
                return;
            }
            cn.jiguang.as.d.h("DispatchActionManager", "dispacth action is null by sdktype:" + str);
        }
    }

    public void a(String str, String str2) {
        cn.jiguang.as.d.c("DispatchActionManager", "addAction type:" + str + ",action:" + str2);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (f2294a.containsKey(str)) {
            cn.jiguang.as.d.c("DispatchActionManager", "has same type action");
            return;
        }
        try {
            Object newInstance = Class.forName(str2).newInstance();
            if (newInstance instanceof JDispatchAction) {
                f2294a.put(str, (JDispatchAction) newInstance);
                cn.jiguang.as.d.c("DispatchActionManager", "action init:" + newInstance.getClass().getName());
            } else {
                cn.jiguang.as.d.g("DispatchActionManager", "this action is not a JDispatchAction,please check and extends JDispatchAction");
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.h("DispatchActionManager", "#unexcepted - instance " + str2 + " class failed:" + th2);
        }
    }

    public void a(HashMap<String, String> hashMap) {
        if (hashMap == null || hashMap.isEmpty()) {
            cn.jiguang.as.d.g("DispatchActionManager", "init map is empty");
            return;
        }
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            a(entry.getKey(), entry.getValue());
        }
    }

    public boolean a(int i9) {
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null) {
                try {
                    cn.jiguang.as.d.d("DispatchActionManager", "isAllowAction actionType:" + i9 + ",sdktype:" + entry.getKey() + ",action:" + value.checkAction(entry.getKey(), i9));
                    if (!value.checkAction(entry.getKey(), i9)) {
                        return false;
                    }
                } catch (Throwable th2) {
                    cn.jiguang.as.d.g("DispatchActionManager", "isAllowAction error:" + th2.getMessage());
                }
            }
        }
        return true;
    }

    public String b(int i9) {
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null && value.getRegPriority(entry.getKey()) == i9) {
                return value.getSdkVersion(entry.getKey());
            }
        }
        return "";
    }

    public String b(Context context) {
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null) {
                Object beforLogin = value.beforLogin(context, entry.getKey(), 24, "platformregid");
                if (beforLogin instanceof String) {
                    return (String) beforLogin;
                }
            }
        }
        return "";
    }

    public String b(String str, String str2) {
        String str3;
        JDispatchAction jDispatchAction = f2294a.get(str);
        if (jDispatchAction != null) {
            String sdkVersion = jDispatchAction.getSdkVersion(str);
            if (!TextUtils.isEmpty(sdkVersion)) {
                return sdkVersion;
            }
            str3 = str + " sdk action sdkversion:" + sdkVersion;
        } else {
            str3 = str + " sdk action is null";
        }
        cn.jiguang.as.d.a("DispatchActionManager", str3);
        return str2;
    }

    public short b() {
        short regFlag;
        short s10 = 0;
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null && (regFlag = value.getRegFlag(entry.getKey())) != 0) {
                s10 = (short) (s10 | regFlag);
            }
        }
        return s10;
    }

    public short c() {
        short loginFlag;
        short s10 = 0;
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            JDispatchAction value = entry.getValue();
            if (value != null && (loginFlag = value.getLoginFlag(entry.getKey())) != 0) {
                s10 = (short) (s10 | loginFlag);
            }
        }
        return s10;
    }

    public Map<Integer, Bundle> d() {
        int i9;
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            Bundle pInfo = entry.getValue().getPInfo(entry.getKey());
            if (pInfo != null && (i9 = pInfo.getInt("pid", 0)) > 0) {
                hashMap.put(Integer.valueOf(i9), pInfo);
            }
        }
        return hashMap;
    }

    public String e() {
        StringBuilder sb2;
        JDispatchAction value;
        short s10 = 3;
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            short regPriority = entry.getValue().getRegPriority(entry.getKey());
            if (s10 < regPriority) {
                s10 = regPriority;
            }
        }
        cn.jiguang.as.d.c("DispatchActionManager", "max reg priority:" + ((int) s10));
        String str = "";
        for (int i9 = 0; i9 <= s10; i9++) {
            if (i9 == 3) {
                sb2 = new StringBuilder();
                sb2.append(str);
                str = cn.jiguang.a.a.f1808b;
            } else {
                Iterator<Map.Entry<String, JDispatchAction>> it = f2294a.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, JDispatchAction> next = it.next();
                    if (next.getValue().getRegPriority(next.getKey()) == i9) {
                        str = str + value.getSdkVersion(next.getKey());
                        break;
                    }
                }
                sb2 = new StringBuilder();
            }
            sb2.append(str);
            sb2.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            str = sb2.toString();
        }
        return str.substring(0, str.length() - 1);
    }

    public String f() {
        JDispatchAction value;
        String str = a(cn.jiguang.a.a.f1808b) + HiAnalyticsConstant.REPORT_VAL_SEPARATOR;
        short s10 = 0;
        for (Map.Entry<String, JDispatchAction> entry : f2294a.entrySet()) {
            short logPriority = entry.getValue().getLogPriority(entry.getKey());
            if (s10 < logPriority) {
                s10 = logPriority;
            }
        }
        cn.jiguang.as.d.c("DispatchActionManager", "max login priority:" + ((int) s10));
        for (int i9 = 1; i9 <= s10; i9++) {
            Iterator<Map.Entry<String, JDispatchAction>> it = f2294a.entrySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    Map.Entry<String, JDispatchAction> next = it.next();
                    if (next.getValue().getLogPriority(next.getKey()) == i9) {
                        str = str + a(value.getSdkVersion(next.getKey()));
                        break;
                    }
                }
            }
            str = str + HiAnalyticsConstant.REPORT_VAL_SEPARATOR;
        }
        return str.substring(0, str.length() - 1);
    }
}
