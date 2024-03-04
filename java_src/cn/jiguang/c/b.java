package cn.jiguang.c;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.as.d;
import cn.jiguang.au.f;
import cn.jiguang.az.e;
import cn.jiguang.az.h;
import cn.jiguang.ba.c;
import cn.jiguang.f.g;
import cn.jiguang.internal.ActionManager;
import cn.jiguang.internal.JConstants;
import cn.jiguang.internal.JCoreHelperAction;
import com.facebook.internal.ServerProtocol;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class b extends JCoreHelperAction {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f2511b = {"JDevice", "JWakeCmd", "JWake", "JCommon", "JArp", "JLocation"};

    /* renamed from: c  reason: collision with root package name */
    private boolean f2513c = false;

    /* renamed from: a  reason: collision with root package name */
    public boolean f2512a = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends cn.jiguang.bg.b {

        /* renamed from: b  reason: collision with root package name */
        private Context f2515b;

        /* renamed from: c  reason: collision with root package name */
        private Intent f2516c;

        /* renamed from: d  reason: collision with root package name */
        private String f2517d;

        public a(Context context, Intent intent, String str) {
            this.f2515b = context;
            this.f2517d = str;
            this.f2516c = intent;
            this.f2494h = "JCoreHelper#PushReceiverAction";
        }

        @Override // cn.jiguang.bg.b
        public void a() {
            try {
                ActionManager.getInstance().handleMessage(this.f2515b, this.f2517d, this.f2516c);
                b.this.a(this.f2515b, this.f2516c);
            } catch (Throwable th2) {
                d.i("JCoreHelper", "[PushReceiverAction failed:]" + th2.getMessage());
            }
        }
    }

    private static Bundle a(Context context, int i9, Bundle bundle) {
        try {
            Bundle bundle2 = new Bundle();
            if (i9 == 4096) {
                if (bundle != null) {
                    a(context, cn.jiguang.ar.a.a(bundle, "arg1"));
                }
                return bundle2;
            } else if (i9 == 4098) {
                JCoreManager.init(context);
                return bundle2;
            } else {
                switch (i9) {
                    case 36864:
                        a(bundle);
                        return null;
                    case 36865:
                        if (JCoreManager.isInternal()) {
                            JConstants.testAndroidQ();
                        }
                        return null;
                    default:
                        return null;
                }
            }
        } catch (Throwable th2) {
            d.i("JCoreHelper", "si e:" + th2);
            return null;
        }
    }

    public static Object a(Context context) {
        return e.a(context, "deviceinfo", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, Intent intent) {
        Method declaredMethod;
        Boolean bool;
        boolean z10;
        d.c("JCoreHelper", "[handleReceiverIntent]:" + intent.getAction());
        e.a(context, "get_receiver", intent);
        String action = intent.getAction();
        if (action == null) {
            d.g("JCoreHelper", "onReceive empty action");
        } else if (action.equals("android.intent.action.USER_PRESENT")) {
            d.e("JCoreHelper", "onReceiveandroid.intent.action.USER_PRESENT");
            cn.jiguang.a.a.a(context, true, 0L);
            a(context, JConstants.SDK_TYPE, "user_present", (Bundle) null);
        } else if (action.equals("android.intent.action.SCREEN_ON")) {
            cn.jiguang.a.a.a(context, false, 0L);
        } else if (action.equalsIgnoreCase("android.net.conn.CONNECTIVITY_CHANGE")) {
            NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
            if (networkInfo == null) {
                d.g("JCoreHelper", "Not found networkInfo");
                return;
            }
            d.c("JCoreHelper", "Connection state changed to - " + networkInfo.toString());
            if (2 == networkInfo.getType() || 3 == networkInfo.getType()) {
                d.c("JCoreHelper", "MMS or SUPL network state change, to do nothing!");
                return;
            }
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            Bundle extras = intent.getExtras();
            if (extras == null) {
                extras = new Bundle();
            }
            if (booleanExtra) {
                d.c("JCoreHelper", "No any network is connected");
                extras.putBoolean("connected", false);
            } else {
                try {
                    if (NetworkInfo.State.CONNECTED == networkInfo.getState()) {
                        d.c("JCoreHelper", "Network is connected.");
                        extras.putBoolean("connected", true);
                    } else if (NetworkInfo.State.DISCONNECTED == networkInfo.getState()) {
                        d.c("JCoreHelper", "Network is disconnected.");
                        extras.putBoolean("connected", false);
                    } else {
                        d.c("JCoreHelper", "other network state - " + networkInfo.getState() + ". Do nothing.");
                    }
                } catch (Throwable unused) {
                    extras.putBoolean("connected", cn.jiguang.f.a.d(context));
                }
            }
            cn.jiguang.a.a.a(context, "tcp_a15", extras);
        } else if (!action.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED") && !action.equals("android.os.action.POWER_SAVE_MODE_CHANGED")) {
            if (action.equals("noti_open_proxy") && intent.getBooleanExtra("debug_notification", false)) {
                String stringExtra = intent.getStringExtra("toastText");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                Toast makeText = Toast.makeText(context, stringExtra, 0);
                try {
                    View view = makeText.getView();
                    if (view instanceof LinearLayout) {
                        View childAt = ((LinearLayout) view).getChildAt(0);
                        if (childAt instanceof TextView) {
                            TextView textView = (TextView) childAt;
                            if (!g.a(stringExtra)) {
                                textView.setText(stringExtra);
                            }
                            textView.setTextSize(13.0f);
                        }
                    }
                } catch (Exception unused2) {
                }
                makeText.show();
            }
        } else {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager != null) {
                try {
                    Class<?> cls = Class.forName("android.os.PowerManager");
                    if (action.equals("android.os.action.DEVICE_IDLE_MODE_CHANGED")) {
                        Method declaredMethod2 = cls.getDeclaredMethod("isDeviceIdleMode", new Class[0]);
                        if (declaredMethod2 != null) {
                            bool = (Boolean) declaredMethod2.invoke(powerManager, new Object[0]);
                            z10 = bool.booleanValue();
                        }
                        z10 = true;
                    } else {
                        if (action.equals("android.os.action.POWER_SAVE_MODE_CHANGED") && (declaredMethod = cls.getDeclaredMethod("isPowerSaveMode", new Class[0])) != null) {
                            bool = (Boolean) declaredMethod.invoke(powerManager, new Object[0]);
                            z10 = bool.booleanValue();
                        }
                        z10 = true;
                    }
                    if (z10) {
                        return;
                    }
                    d.c("JCoreHelper", "doze or powersave mode exit.");
                    cn.jiguang.a.a.a(context, true, 0L);
                } catch (Throwable th2) {
                    d.i("JCoreHelper", "handle DEVICE_IDLE_MODE_CHANGED or POWER_SAVE_MODE_CHANGED fail:" + th2);
                }
            }
        }
    }

    private static void a(Context context, Bundle bundle) {
        if (bundle != null && !bundle.isEmpty()) {
            try {
                d.c("JCoreHelper", "setSDKConfigs");
                int i9 = 86400;
                try {
                    int i10 = bundle.getInt("heartbeat_interval", JConstants.DEFAULT_HEARTBEAT_INTERVAL);
                    if (i10 < 30) {
                        i10 = 30;
                    } else if (i10 > 86400) {
                        i10 = 86400;
                    }
                    JConstants.DEFAULT_HEARTBEAT_INTERVAL = i10;
                    d.c("JCoreHelper", "set heartbeat interval=" + i10);
                } catch (Throwable unused) {
                }
                try {
                    int i11 = bundle.getInt("alarm_delay", JConstants.DEFAULT_ALARM_DELAY);
                    if (i11 <= 86400) {
                        i9 = i11;
                    }
                    int i12 = JConstants.DEFAULT_HEARTBEAT_INTERVAL;
                    if (i9 < i12 + 5) {
                        i9 = i12 + 5;
                    }
                    JConstants.DEFAULT_ALARM_DELAY = i9;
                    d.c("JCoreHelper", "set alarm delay=" + i9);
                } catch (Throwable unused2) {
                }
                byte b10 = (byte) bundle.getInt("tcp_algorithm", -1);
                if (b10 >= 0) {
                    JConstants.tcpAlgorithm = b10;
                    d.c("JCoreHelper", "set tcp algorithm=" + ((int) b10));
                }
                if (bundle.containsKey("tcp_report")) {
                    f.f2119b = bundle.getBoolean("tcp_report");
                }
                if (bundle.containsKey("plugin_report_switch")) {
                    context.getSharedPreferences("cn.jiguang.prefs", 0).edit().putBoolean("plugin_report_switch", bundle.getBoolean("plugin_report_switch")).apply();
                }
                if (bundle.containsKey("plugin_multi_switch")) {
                    context.getSharedPreferences("cn.jiguang.prefs", 0).edit().putBoolean("plugin_multi_switch", bundle.getBoolean("plugin_multi_switch")).apply();
                }
                int i13 = bundle.getInt("ipv_config", -1);
                c.a(i13);
                if (i13 != 2 && i13 != 3) {
                    if (i13 == 0 || i13 == 1) {
                        f.f2121d = true;
                        return;
                    }
                    return;
                }
                f.f2121d = false;
            } catch (Throwable unused3) {
            }
        }
    }

    public static void a(Context context, String str) {
        cn.jiguang.ar.a.a(context, str);
    }

    public static void a(Context context, String str, int i9, int i10, int i11) {
        Bundle bundle = new Bundle();
        bundle.putString("name", str);
        bundle.putInt("custom", i9);
        bundle.putInt("dynamic", i10);
        bundle.putInt("sdk_v", i11);
        e.a(context, "set_sdktype_info", bundle);
    }

    public static void a(Context context, String str, Bundle bundle) {
        cn.jiguang.a.a.a(context, str, bundle);
    }

    private static void a(Context context, String str, Bundle bundle, String str2) {
        if (bundle != null) {
            bundle.putString(HianalyticsBaseData.SDK_TYPE, str);
            cn.jiguang.a.a.a(context, str2, bundle);
        }
    }

    public static void a(Context context, String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        d.d("JCoreHelper", "runActionWithService action:" + str2);
        bundle.putString(HianalyticsBaseData.SDK_TYPE, str);
        bundle.putString("internal_action", str2);
        cn.jiguang.a.a.a(context, "a3", bundle);
    }

    public static void a(Bundle bundle) {
    }

    private static void a(String str, String str2, boolean z10, int i9, String str3, Throwable th2) {
        cn.jiguang.as.b.a(str, str2, z10, i9, str3, th2);
    }

    private static void b(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(HianalyticsBaseData.SDK_TYPE, str);
        cn.jiguang.a.a.a(context, "tcp_a8", bundle);
    }

    public static Pair<String, Integer> c(Context context) {
        return cn.jiguang.ar.a.d(context);
    }

    private static void c(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(HianalyticsBaseData.SDK_TYPE, str);
        cn.jiguang.a.a.a(context, "tcp_a9", bundle);
    }

    private static void c(Context context, String str, Bundle bundle) {
        if (bundle != null) {
            try {
                boolean z10 = bundle.getBoolean("sdk_banned");
                d.c("JCoreHelper", "[handleSdkBannedStatusChanged] sdk banned: " + z10);
                if (z10) {
                    b(context, str);
                    cn.jiguang.bd.b.a().b(8000);
                } else {
                    c(context, str);
                }
            } catch (Throwable th2) {
                d.g("JCoreHelper", "network change handler error, " + th2.getMessage());
            }
        }
    }

    private static void d(Context context, String str, Bundle bundle) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (bundle != null) {
            try {
                d.c("JCoreHelper", "[handleConnectionChanged] connected: " + bundle.getBoolean("connected"));
            } catch (Throwable th2) {
                d.g("JCoreHelper", "network change handler error, " + th2.getMessage());
                return;
            }
        }
        Intent intent = new Intent();
        intent.setAction("android.net.conn.CONNECTIVITY_CHANGE");
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            intent.putExtra("networkInfo", activeNetworkInfo);
            d.c("JCoreHelper", "networkInfo, available: " + activeNetworkInfo.isAvailable() + ", type: " + activeNetworkInfo.getType());
        }
        ActionManager.getInstance().handleMessage(context, str, intent);
        cn.jiguang.a.a.a(context, "tcp_a15", bundle);
    }

    public void a(Context context, boolean z10, int i9) {
        d.c("JCoreHelper", "changeForegroudStat:" + z10 + ", userActiveType:" + i9);
        this.f2512a = z10;
        Bundle bundle = new Bundle();
        bundle.putBoolean("foreground", this.f2512a);
        bundle.putInt("user_type", i9);
        cn.jiguang.a.a.a(context, "a4", bundle);
        if (!this.f2512a) {
            this.f2513c = true;
            cn.jiguang.b.a.e(context);
        } else if (this.f2513c) {
            cn.jiguang.b.a.a(context, 3);
        }
    }

    public void b(Context context, String str, Bundle bundle) {
        cn.jiguang.a.a.b(context, str, bundle);
    }

    public boolean b(Context context) {
        try {
            Bundle a10 = cn.jiguang.ar.e.a().a(context, "INTERNAL_API", "isTcpLoggedIn", null, cn.jiguang.ar.d.a(context));
            return (a10 == null || !a10.containsKey(ServerProtocol.DIALOG_PARAM_STATE)) ? h.a().d() : a10.getBoolean(ServerProtocol.DIALOG_PARAM_STATE);
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // cn.jiguang.internal.JCoreHelperAction
    public Bundle directHandle(Context context, String str, String str2, Bundle bundle) {
        return cn.jiguang.ar.e.a().b(context, str, str2, bundle);
    }

    @Override // cn.jiguang.internal.JCoreHelperAction
    public Object onCommonMethod(Context context, String str, Object obj) {
        return e.a(context, str, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:472:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x013a A[Catch: all -> 0x07e5, TryCatch #0 {all -> 0x07e5, blocks: (B:3:0x000f, B:7:0x0019, B:10:0x001d, B:15:0x003b, B:17:0x003e, B:19:0x0044, B:21:0x0055, B:23:0x0058, B:24:0x005a, B:26:0x0061, B:28:0x0066, B:30:0x006b, B:33:0x0072, B:35:0x0076, B:37:0x007c, B:39:0x0082, B:40:0x0096, B:42:0x0099, B:43:0x009e, B:45:0x00a5, B:47:0x00a9, B:49:0x00af, B:51:0x00b5, B:54:0x00c8, B:56:0x00cb, B:58:0x00d1, B:60:0x00dc, B:62:0x00df, B:64:0x00e5, B:65:0x00e9, B:67:0x00f0, B:69:0x00f3, B:71:0x00f9, B:73:0x0106, B:75:0x0109, B:77:0x010f, B:78:0x0113, B:80:0x011a, B:82:0x011d, B:84:0x0123, B:86:0x013a, B:88:0x0144, B:90:0x0148, B:92:0x014e, B:94:0x0155, B:96:0x015c, B:97:0x0180, B:98:0x0189, B:99:0x0192, B:101:0x019a, B:104:0x01a5, B:106:0x01a8, B:108:0x01ae, B:110:0x01b4, B:120:0x0204, B:121:0x0212, B:122:0x0217, B:123:0x021b, B:112:0x01d7, B:114:0x01dd, B:118:0x01fe, B:124:0x0220, B:127:0x0229, B:129:0x022d, B:132:0x0248, B:134:0x024b, B:137:0x025d, B:139:0x0261, B:142:0x0299, B:144:0x029c, B:146:0x02a2, B:148:0x02ac, B:150:0x02b0, B:152:0x02b6, B:153:0x02ba, B:156:0x02c5, B:157:0x02ca, B:160:0x02d5, B:162:0x02d8, B:164:0x02de, B:165:0x0312, B:167:0x031c, B:169:0x0320, B:170:0x0329, B:172:0x0331, B:174:0x0335, B:175:0x033e, B:177:0x0346, B:178:0x034f, B:181:0x0357, B:183:0x035a, B:185:0x0360, B:186:0x0371, B:189:0x037b, B:191:0x037e, B:193:0x0384, B:194:0x0395, B:197:0x039f, B:199:0x03a2, B:201:0x03a8, B:202:0x03b5, B:205:0x03bf, B:207:0x03c2, B:209:0x03c8, B:210:0x03d5, B:212:0x03dc, B:214:0x03e0, B:215:0x0411, B:217:0x041e, B:219:0x0425, B:221:0x0429, B:223:0x042f, B:225:0x0450, B:227:0x0453, B:228:0x0458, B:230:0x0461, B:232:0x046a, B:235:0x0471, B:237:0x0475, B:239:0x047b, B:241:0x0481, B:242:0x04ae, B:245:0x04b5, B:247:0x04b8, B:249:0x04be, B:252:0x04c9, B:254:0x04cd, B:256:0x04d3, B:258:0x04d9, B:261:0x04ec, B:263:0x04f0, B:265:0x04f6, B:267:0x04fc, B:269:0x0514, B:271:0x0518, B:272:0x051d, B:274:0x0526, B:276:0x0529, B:278:0x052f, B:280:0x053e, B:282:0x0541, B:284:0x0547, B:287:0x0553, B:289:0x0557, B:291:0x055d, B:293:0x0564, B:295:0x056b, B:296:0x05a6, B:299:0x05ad, B:301:0x05b0, B:303:0x05b6, B:305:0x05c6, B:307:0x05c9, B:309:0x05cf, B:312:0x05de, B:316:0x05e6, B:318:0x05ee, B:320:0x0602, B:322:0x0605, B:324:0x060b, B:325:0x061f, B:327:0x0626, B:329:0x062a, B:331:0x0630, B:333:0x0634, B:335:0x063a, B:338:0x064a, B:340:0x064d, B:342:0x0653, B:343:0x0666, B:346:0x066f, B:348:0x0672, B:350:0x0678, B:351:0x0692, B:352:0x0698, B:353:0x06ac, B:355:0x06b5, B:358:0x06c0, B:360:0x06c3, B:362:0x06c9, B:364:0x06da, B:368:0x06e8, B:370:0x06ec, B:372:0x06ef, B:374:0x06f5, B:376:0x06fe, B:380:0x072a, B:382:0x072e, B:384:0x0734, B:386:0x0743, B:388:0x0746, B:391:0x074f, B:393:0x0752, B:395:0x0758, B:397:0x075e, B:400:0x076b, B:403:0x0777, B:405:0x077a, B:407:0x0780, B:409:0x0786, B:417:0x07a0, B:412:0x0791, B:418:0x07a6, B:419:0x07b2, B:420:0x07b8, B:422:0x07bd, B:424:0x07c2, B:426:0x07c7, B:428:0x07cc, B:430:0x07d1, B:431:0x07d7, B:432:0x07dd, B:433:0x07e1), top: B:439:0x000f }] */
    @Override // cn.jiguang.internal.JCoreHelperAction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object onEvent(android.content.Context r20, java.lang.String r21, int r22, java.lang.String r23, android.os.Bundle r24, java.lang.Object... r25) {
        /*
            Method dump skipped, instructions count: 2228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.c.b.onEvent(android.content.Context, java.lang.String, int, java.lang.String, android.os.Bundle, java.lang.Object[]):java.lang.Object");
    }
}
