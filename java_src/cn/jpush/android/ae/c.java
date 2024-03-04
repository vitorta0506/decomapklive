package cn.jpush.android.ae;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import cn.jpush.android.af.e;
import cn.jpush.android.api.JThirdPlatFormInterface;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.service.PushReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, Byte> f2873b;

    /* renamed from: d  reason: collision with root package name */
    private static c f2874d;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f2875e;

    /* renamed from: a  reason: collision with root package name */
    private List<JThirdPlatFormInterface> f2876a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f2877c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        String f2886a;

        /* renamed from: b  reason: collision with root package name */
        int f2887b;

        /* renamed from: c  reason: collision with root package name */
        String f2888c;

        /* renamed from: d  reason: collision with root package name */
        byte f2889d;

        a() {
        }

        public String toString() {
            return "ThirdMessage{msgid='" + this.f2886a + "', notiId=" + this.f2887b + ", content='" + this.f2888c + "', platform=" + ((int) this.f2889d) + '}';
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f2873b = hashMap;
        f2875e = new Object();
        hashMap.put("cn.jpush.android.thirdpush.meizu.MeizuPushManager", (byte) 3);
        f2873b.put("cn.jpush.android.thirdpush.xiaomi.XMPushManager", (byte) 1);
        f2873b.put("cn.jpush.android.thirdpush.huawei.HWPushManager", (byte) 2);
        f2873b.put("cn.jpush.android.thirdpush.fcm.FCMPushManager", (byte) 8);
        f2873b.put("cn.jpush.android.thridpush.oppo.OPushManager", (byte) 4);
        f2873b.put("cn.jpush.android.thirdpush.vivo.VivoPushManager", (byte) 5);
        f2873b.put(cn.jpush.android.asus.b.class.getName(), (byte) 6);
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a a(Bundle bundle) {
        a aVar;
        if (bundle != null) {
            aVar = new a();
            aVar.f2888c = bundle.getString("data");
            aVar.f2886a = bundle.getString(JThirdPlatFormInterface.KEY_MSG_ID);
            aVar.f2887b = bundle.getInt(JThirdPlatFormInterface.KEY_NOTI_ID, 0);
            aVar.f2889d = bundle.getByte("platform", (byte) -1).byteValue();
        } else {
            aVar = null;
        }
        Logger.d("ThirdPushManager", "parse third messgae:" + aVar);
        return aVar;
    }

    public static c a() {
        if (f2874d == null) {
            synchronized (f2875e) {
                if (f2874d == null) {
                    f2874d = new c();
                }
            }
        }
        return f2874d;
    }

    private void a(Context context, JThirdPlatFormInterface jThirdPlatFormInterface) {
        if (jThirdPlatFormInterface == null || !jThirdPlatFormInterface.isNeedClearToken(context)) {
            return;
        }
        byte romType = jThirdPlatFormInterface.getRomType(context);
        Sp.set(context, Key.ThirdPush_RegUpload(romType).set(Boolean.FALSE));
        Sp.set(context, Key.ThirdPush_RegID(romType).set(null));
    }

    private void a(Context context, JThirdPlatFormInterface jThirdPlatFormInterface, String str) {
        Logger.d("ThirdPushManager", "sendBroadCastToUploadToken:" + str);
        String token = jThirdPlatFormInterface.getToken(context);
        if (!TextUtils.isEmpty(token)) {
            b(context, jThirdPlatFormInterface.getRomType(context), token);
            return;
        }
        try {
            Intent intent = new Intent(context, PushReceiver.class);
            intent.setAction(str);
            Bundle bundle = new Bundle();
            bundle.putString("sdktype", JPushConstants.SDK_TYPE);
            bundle.putByte("platform", jThirdPlatFormInterface.getRomType(context));
            intent.putExtras(bundle);
            intent.setPackage(context.getPackageName());
            context.sendBroadcast(intent);
        } catch (Throwable th2) {
            Logger.ww("ThirdPushManager", "send " + str + " failed:" + th2);
        }
    }

    private void b(Context context, byte b10, String str) {
        Logger.ii("ThirdPushManager", "[uploadInService] regid:" + str + ",romtype:" + ((int) b10));
        a(context);
        for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
            if (jThirdPlatFormInterface.getRomType(context) == b10) {
                a(context, jThirdPlatFormInterface);
                c(context, b10, str);
            }
        }
    }

    private void c(Context context, byte b10, String str) {
        Logger.d("ThirdPushManager", "sendUpdateRegIDRequest, WhichPlatform:" + ((int) b10) + ",regID:" + str);
        Sp.set(context, Key.ThirdPush_RegUpload(b10).set(Boolean.FALSE));
        Sp.set(context, Key.ThirdPush_RegID(b10).set(str));
        cn.jpush.android.ae.a.a().a(context, b10, str);
    }

    private void j(Context context) {
        Object newInstance;
        Logger.d("ThirdPushManager", "[loadThirdPush]");
        for (Map.Entry<String, Byte> entry : f2873b.entrySet()) {
            try {
                Class<?> cls = Class.forName(entry.getKey(), false, context.getClassLoader());
                if (cls != null && (newInstance = cls.newInstance()) != null && (newInstance instanceof JThirdPlatFormInterface)) {
                    ((JThirdPlatFormInterface) newInstance).init(context);
                    if (((JThirdPlatFormInterface) newInstance).isSupport(context)) {
                        this.f2876a.add((JThirdPlatFormInterface) newInstance);
                    } else {
                        Byte value = entry.getValue();
                        Sp.set(context, Key.ThirdPush_RegID(value.byteValue()).set(null));
                        Sp.set(context, Key.ThirdPush_RegUpload(value.byteValue()).set(Boolean.FALSE));
                    }
                }
            } catch (Throwable th2) {
                Byte value2 = entry.getValue();
                Sp.set(context, Key.ThirdPush_RegID(value2.byteValue()).set(null));
                Sp.set(context, Key.ThirdPush_RegUpload(value2.byteValue()).set(Boolean.FALSE));
                if ((th2 instanceof RuntimeException) && th2.getMessage().contains("Please check") && JCoreManager.getDebugMode()) {
                    if (cn.jpush.android.m.a.f3140c >= 238) {
                        JCoreHelper.futureExecutor(context, new e("ThirdPushManager#loadThirdPush") { // from class: cn.jpush.android.ae.c.1
                            @Override // cn.jpush.android.af.e
                            public void a() {
                                throw new RuntimeException(th2);
                            }
                        });
                    } else {
                        new Thread(new Runnable() { // from class: cn.jpush.android.ae.c.2
                            @Override // java.lang.Runnable
                            public void run() {
                                throw new RuntimeException(th2);
                            }
                        }).start();
                    }
                }
                Logger.w("ThirdPushManager", "loadThirdPush error:" + th2.getMessage());
            }
        }
        if (Build.VERSION.SDK_INT < 26 || this.f2876a.isEmpty()) {
            return;
        }
        cn.jpush.android.aa.a.a(context);
    }

    public byte a(Context context, String str) {
        if (cn.jpush.android.m.a.a()) {
            for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                byte romType = jThirdPlatFormInterface.getRomType(context);
                if (romType == 1) {
                    int nofiticationID = JThirdPlatFormInterface.getNofiticationID(str, romType);
                    Logger.d("ThirdPushManager", "clearThirdNotificaiton msgid:" + str + ",  romType:" + ((int) romType) + " , notificationId:" + nofiticationID);
                    jThirdPlatFormInterface.clearNotification(context, nofiticationID);
                    return romType;
                }
            }
            return (byte) -1;
        }
        return (byte) -1;
    }

    public synchronized void a(Context context) {
        if (this.f2877c) {
            return;
        }
        if (context == null) {
            return;
        }
        j(context);
        this.f2877c = true;
    }

    public void a(Context context, byte b10, String str) {
        if (cn.jpush.android.m.a.a()) {
            if (context == null) {
                context = JPushConstants.mApplicationContext;
            }
            if (context == null) {
                Logger.e("ThirdPushManager", "context was null");
                return;
            }
            Logger.ii("ThirdPushManager", "uploadRegID regid:" + str);
            a(context);
            Bundle bundle = new Bundle();
            bundle.putString(JThirdPlatFormInterface.KEY_TOKEN, str);
            bundle.putByte("platform", b10);
            JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "third_push_upload_regid", bundle);
        }
    }

    public void a(Context context, int i9, String str) {
        try {
            Logger.dd("ThirdPushManager", "[callBackTokenToUser] platform:" + i9 + ",token:" + str);
            Bundle bundle = new Bundle();
            bundle.putInt("platform", i9);
            bundle.putString(JThirdPlatFormInterface.KEY_TOKEN, str);
            cn.jpush.android.aa.c.a(context, 10000, 0, "", bundle);
        } catch (Throwable th2) {
            Logger.ww("ThirdPushManager", "callBackTokenToUser failed:" + th2.getMessage());
        }
    }

    public void a(Context context, Bundle bundle) {
        if (context == null) {
            context = JPushConstants.mApplicationContext;
        }
        if (context == null) {
            Logger.e("ThirdPushManager", "context was null");
        } else if (bundle == null) {
            Logger.ww("ThirdPushManager", "bundle is null");
        } else {
            b(context, bundle.getByte("platform", (byte) 0).byteValue(), bundle.getString(JThirdPlatFormInterface.KEY_TOKEN));
        }
    }

    public void a(final Context context, final String str, final Bundle bundle) {
        try {
            Logger.dd("ThirdPushManager", "doAction,action:" + str + ",bundle:" + bundle + ",enable:" + cn.jpush.android.m.a.a());
            if (cn.jpush.android.m.a.a()) {
                JCoreHelper.majorExecutor(context, "ThirdPushManager", new e("ThirdPushManager#doAction") { // from class: cn.jpush.android.ae.c.3
                    @Override // cn.jpush.android.af.e
                    public void a() {
                        Bundle bundle2;
                        try {
                            if (!TextUtils.isEmpty(str)) {
                                if (str.equals(JThirdPlatFormInterface.ACTION_NOTIFICATION_ARRIVED)) {
                                    a a10 = c.this.a(bundle);
                                    if (a10 != null) {
                                        b.a(context, a10.f2888c, a10.f2886a, a10.f2887b, a10.f2889d, 1);
                                    }
                                } else if (str.equals(JThirdPlatFormInterface.ACTION_NOTIFICATION_CLCKED)) {
                                    a a11 = c.this.a(bundle);
                                    if (a11 != null) {
                                        b.a(context, a11.f2888c, a11.f2886a, a11.f2887b, a11.f2889d, 0);
                                    }
                                } else if (str.equals(JThirdPlatFormInterface.ACTION_NOTIFICATION_UN_SHOW)) {
                                    a a12 = c.this.a(bundle);
                                    if (a12 != null) {
                                        b.a(context, a12.f2888c, a12.f2886a, a12.f2887b, a12.f2889d, 2);
                                    }
                                } else if (!str.equals(JThirdPlatFormInterface.ACTION_NOTIFICATION_SHOW) && str.equals(JThirdPlatFormInterface.ACTION_REGISTER_TOKEN) && (bundle2 = bundle) != null) {
                                    c.this.a(context, bundle.getByte("platform", (byte) -1).byteValue(), bundle2.getString(JThirdPlatFormInterface.KEY_TOKEN));
                                }
                            }
                        } catch (Throwable th2) {
                            Logger.ww("ThirdPushManager", "doAction failed internal:" + th2.getMessage());
                        }
                    }
                });
            }
        } catch (Throwable th2) {
            Logger.ww("ThirdPushManager", "doAction failed:" + th2.getMessage());
        }
    }

    public void b(Context context) {
        if (cn.jpush.android.m.a.a()) {
            a(context);
            if (cn.jpush.android.cache.a.d(context.getApplicationContext())) {
                Logger.d("ThirdPushManager", "push has close");
                return;
            }
            for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                try {
                    jThirdPlatFormInterface.register(context);
                } catch (Throwable th2) {
                    Logger.ww("ThirdPushManager", "Third push register failed#", th2);
                }
            }
        }
    }

    public void b(Context context, Bundle bundle) {
        if (!cn.jpush.android.m.a.a()) {
            Logger.dd("ThirdPushManager", "[refreshToken] third disabled");
            return;
        }
        a(context);
        byte byteValue = bundle.getByte("platform", (byte) -1).byteValue();
        if (byteValue <= 0) {
            Logger.w("ThirdPushManager", "refreshToken romtype is <= 0");
            return;
        }
        Logger.dd("ThirdPushManager", "[refreshToken] romType: " + ((int) byteValue));
        for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
            if (jThirdPlatFormInterface.getRomType(context) == byteValue) {
                String token = jThirdPlatFormInterface.getToken(context);
                if (TextUtils.isEmpty(token)) {
                    jThirdPlatFormInterface.register(context);
                } else {
                    a(context, byteValue, token);
                }
            }
        }
    }

    public void c(Context context) {
        if (cn.jpush.android.m.a.a()) {
            a(context);
            for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                jThirdPlatFormInterface.resumePush(context);
            }
        }
    }

    public void d(Context context) {
        if (cn.jpush.android.m.a.a()) {
            a(context);
            for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                jThirdPlatFormInterface.stopPush(context);
            }
        }
    }

    public byte e(Context context) {
        int i9;
        byte b10 = 0;
        if (cn.jpush.android.m.a.a()) {
            a(context);
            for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                byte romType = jThirdPlatFormInterface.getRomType(context);
                b10 = (byte) (b10 | romType);
                byte b11 = romType;
                String str = (String) Sp.get(context, Key.ThirdPush_RegID(b11));
                boolean booleanValue = ((Boolean) Sp.get(context, Key.ThirdPush_RegUpload(b11))).booleanValue();
                if (jThirdPlatFormInterface.getRomType(context) == 8) {
                    b10 = (byte) (b10 | 8);
                    if (booleanValue && !TextUtils.isEmpty(str)) {
                        i9 = b10 | 32;
                        b10 = (byte) i9;
                    }
                } else {
                    if (jThirdPlatFormInterface.getRomType(context) == 2) {
                        b10 = (byte) (b10 | 64);
                    }
                    if (!booleanValue || TextUtils.isEmpty(str)) {
                        i9 = b10 | ByteCompanionObject.MIN_VALUE;
                        b10 = (byte) i9;
                    }
                }
            }
            Logger.d("ThirdPushManager", "getRomType,romType:" + ((int) b10));
            return b10;
        }
        return (byte) 0;
    }

    public String f(Context context) {
        if (cn.jpush.android.m.a.a()) {
            for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                if (jThirdPlatFormInterface.getRomType(context) != 8) {
                    return (String) Sp.get(context, Key.ThirdPush_RegID(jThirdPlatFormInterface.getRomType(context)));
                }
            }
            return null;
        }
        return null;
    }

    public void g(Context context) {
        try {
            List<JThirdPlatFormInterface> list = this.f2876a;
            if (list != null && !list.isEmpty()) {
                for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                    c(context, jThirdPlatFormInterface.getRomType(context), null);
                }
                return;
            }
            Map<String, Byte> map = f2873b;
            if (map != null) {
                for (Byte b10 : map.values()) {
                    Sp.set(context, Key.ThirdPush_RegUpload(b10.byteValue()).set(Boolean.FALSE));
                    Sp.set(context, Key.ThirdPush_RegID(b10.byteValue()).set(null));
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void h(Context context) {
        if (cn.jpush.android.m.a.a()) {
            if (context == null) {
                context = JPushConstants.mApplicationContext;
            }
            if (context == null) {
                Logger.e("ThirdPushManager", "context was null");
                return;
            }
            a(context);
            Logger.ii("ThirdPushManager", "uploadRegIdAfterLogin");
            for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
                a(context, jThirdPlatFormInterface, JThirdPlatFormInterface.ACTION_PLUGIN_PALTFORM_REFRESSH_REGID);
            }
        }
    }

    public void i(Context context) {
        Logger.dd("ThirdPushManager", "reRegisterInPushReceiver");
        a(context);
        for (JThirdPlatFormInterface jThirdPlatFormInterface : this.f2876a) {
            a(context, jThirdPlatFormInterface, JThirdPlatFormInterface.ACTION_PLUGIN_PALTFORM_REFRESSH_REGID);
        }
    }
}
