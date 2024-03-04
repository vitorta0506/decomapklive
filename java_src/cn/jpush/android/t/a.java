package cn.jpush.android.t;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.api.NotificationMessage;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.service.JPushMessageReceiver;
import com.tencent.liteav.TXLiteAVCode;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends cn.jpush.android.u.d implements cn.jpush.android.u.b {

    /* renamed from: d  reason: collision with root package name */
    private static HashMap<Integer, Integer> f3269d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private static HashMap<Integer, Integer> f3270e = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private cn.jpush.android.u.a f3271a;

    /* renamed from: b  reason: collision with root package name */
    private List<cn.jpush.android.d.d> f3272b;

    /* renamed from: f  reason: collision with root package name */
    private int f3274f = 0;

    /* renamed from: g  reason: collision with root package name */
    private HashMap<Integer, cn.jpush.android.u.c> f3275g = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private int f3273c = 3;

    /* renamed from: cn.jpush.android.t.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0048a extends cn.jpush.android.af.e {

        /* renamed from: a  reason: collision with root package name */
        Context f3276a;

        /* renamed from: b  reason: collision with root package name */
        int f3277b;

        /* renamed from: c  reason: collision with root package name */
        cn.jpush.android.x.e f3278c;

        /* renamed from: d  reason: collision with root package name */
        Object[] f3279d;

        C0048a(Context context, int i9, cn.jpush.android.x.e eVar, Object... objArr) {
            this.f3276a = context;
            this.f3277b = i9;
            this.f3278c = eVar;
            this.f3279d = objArr;
        }

        private boolean a(Context context, int i9, cn.jpush.android.x.e eVar, Object... objArr) {
            a aVar;
            cn.jpush.android.d.d u10;
            boolean z10 = false;
            if (context == null || eVar == null) {
                Logger.ww("AdInAppHelper", "unexpected error, context is " + context + ", message is " + eVar);
                String n9 = eVar != null ? eVar.n() : "";
                if (!TextUtils.isEmpty(n9)) {
                    d.a(JPushConstants.mApplicationContext, "nullParam", n9);
                }
                return false;
            }
            Integer num = null;
            try {
                String n10 = eVar.n();
                switch (i9) {
                    case 1000:
                    case 1018:
                    case 1020:
                        d.a(context, "onDisplayEvent", n10);
                        if (i9 == 1000) {
                            aVar = a.this;
                            u10 = eVar.u();
                            aVar.a(context, u10, 0);
                            break;
                        }
                        break;
                    case 1001:
                    case 1002:
                    case 1015:
                        Integer valueOf = Integer.valueOf(a.this.b(i9));
                        Logger.d("AdInAppHelper", "eventType: " + i9 + ", reportCode: " + valueOf);
                        if (valueOf.intValue() > 0) {
                            cn.jpush.android.helper.c.a(n10, valueOf.intValue(), context);
                        } else {
                            a.this.a(context, eVar);
                        }
                        aVar = a.this;
                        u10 = eVar.u();
                        aVar.a(context, u10, 0);
                        break;
                    case 1003:
                    case 1011:
                    case 1016:
                    case 1022:
                        break;
                    case 1004:
                    case 1006:
                    case 1007:
                    case 1008:
                    case 1009:
                    case 1010:
                    case 1017:
                    case 1021:
                    default:
                        Integer valueOf2 = Integer.valueOf(a.this.b(i9));
                        Logger.d("AdInAppHelper", "eventType: " + i9 + ", reportCode: " + valueOf2);
                        if (valueOf2.intValue() > 0) {
                            cn.jpush.android.helper.c.a(n10, valueOf2.intValue(), context);
                            break;
                        }
                        break;
                    case 1005:
                        if (objArr != null && objArr.length > 0 && (objArr[0] instanceof Integer)) {
                            cn.jpush.android.helper.c.a(eVar.n(), Integer.valueOf(((Integer) objArr[0]).intValue() == 2 ? 1303 : 1236).intValue(), context);
                        }
                        aVar = a.this;
                        u10 = eVar.u();
                        aVar.a(context, u10, 0);
                        break;
                    case 1012:
                        return false;
                    case 1013:
                        if (objArr != null && objArr.length > 0 && (objArr[0] instanceof Integer)) {
                            num = (Integer) a.f3270e.get(Integer.valueOf(((Integer) objArr[0]).intValue()));
                        }
                        a.this.a(context, eVar, num);
                        break;
                    case 1014:
                        JSONObject jSONObject = new JSONObject();
                        if (objArr != null && objArr.length > 1 && (objArr[0] instanceof Boolean) && (objArr[1] instanceof JSONObject)) {
                            z10 = ((Boolean) objArr[0]).booleanValue();
                            jSONObject = (JSONObject) objArr[1];
                        }
                        a.this.a(context, eVar, z10, jSONObject.toString());
                        break;
                    case 1019:
                        if (objArr != null && objArr.length > 1 && (objArr[0] instanceof Integer) && (objArr[1] instanceof String)) {
                            cn.jpush.android.helper.c.a(eVar.n(), ((Integer) objArr[0]).intValue() == 0 ? 1249 : 1219, context);
                            String str = (String) objArr[1];
                            int a10 = eVar.a(context, str);
                            if (a10 == 0) {
                                d.a(context, eVar);
                                break;
                            } else {
                                Logger.w("AdInAppHelper", "click action jump failed, not found action key. actionKey: " + str);
                                cn.jpush.android.helper.c.a(eVar.n(), a10, context);
                                break;
                            }
                        }
                        break;
                }
                a.this.a(context, eVar, i9, objArr);
            } catch (Throwable th2) {
                Logger.w("AdInAppHelper", "onDisplayEvent error, " + th2.getMessage());
            }
            return true;
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            a(this.f3276a, this.f3277b, this.f3278c, this.f3279d);
        }
    }

    static {
        f3269d.put(1015, 0);
        f3269d.put(1001, 1292);
        f3269d.put(1002, 1284);
        f3269d.put(1006, 1262);
        f3269d.put(1008, 1254);
        f3269d.put(1009, 1200);
        f3269d.put(1010, Integer.valueOf((int) TXLiteAVCode.WARNING_MICROPHONE_DEVICE_EMPTY));
        f3269d.put(1007, 1229);
        f3269d.put(1004, 1271);
        f3269d.put(1017, 1235);
        f3269d.put(1021, 1249);
        f3269d.put(Integer.valueOf((int) UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER), 1319);
        f3269d.put(1024, 1320);
        f3269d.put(1025, 1321);
        f3269d.put(Integer.valueOf((int) UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_SUBTITLE), 1322);
        f3269d.put(Integer.valueOf((int) UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_ANIMATEDPASTER), 1322);
        f3269d.put(Integer.valueOf((int) UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_WATERMARK), 1324);
        f3269d.put(Integer.valueOf((int) UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_PICTURE_JOIN), 1329);
        f3270e.put(100, 1253);
        f3270e.put(101, 1296);
        f3270e.put(102, 1297);
        f3270e.put(103, 1254);
        f3270e.put(104, 1326);
    }

    public a(cn.jpush.android.u.a aVar) {
        this.f3271a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jpush.android.d.d dVar, int i9) {
        int a10 = d.a(dVar.aA, dVar.aC);
        cn.jpush.android.u.c cVar = this.f3275g.get(Integer.valueOf(a10));
        if (cVar != null) {
            cVar.a(i9);
            if (i9 == 0) {
                cVar.a();
                this.f3275g.remove(Integer.valueOf(a10));
                Logger.d("AdInAppHelper", "release inapp handle object, displayStyleMaps size: " + this.f3275g.size());
            }
        }
        cn.jpush.android.u.a aVar = this.f3271a;
        if (aVar != null) {
            aVar.a(context, 200, a10, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jpush.android.x.e eVar) {
        int i9 = eVar.f3529u;
        int i10 = i9 != 1 ? i9 != 2 ? i9 != 3 ? i9 != 4 ? 0 : 1318 : 1317 : 1316 : 1315;
        if (i10 > 0) {
            cn.jpush.android.helper.c.a(eVar.n(), i10, context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jpush.android.x.e eVar, int i9, Object... objArr) {
        if (a(eVar, i9)) {
            cn.jpush.android.d.a a10 = eVar.u().a();
            if (i9 == 1017 && objArr != null && objArr.length > 0 && (objArr[0] instanceof String)) {
                cn.jpush.android.d.d dVar = new cn.jpush.android.d.d();
                dVar.f3017c = (String) objArr[0];
                dVar.f3021g = "";
                a10 = dVar.a();
            }
            cn.jpush.android.w.d.a(context, a10, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jpush.android.x.e eVar, Integer num) {
        String n9 = eVar.n();
        int i9 = eVar.u().bn;
        if (num != null) {
            cn.jpush.android.helper.c.a(n9, num.intValue(), context);
        }
        cn.jpush.android.helper.c.a(n9, 1211, context);
        a(context, eVar.u(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jpush.android.x.e eVar, boolean z10, String str) {
        cn.jpush.android.o.b.d(context);
        if (eVar.o() == 1) {
            d.a(context, eVar.u());
        }
        String n9 = eVar.n();
        if (z10) {
            cn.jpush.android.helper.c.a(n9, 1295, context);
        }
        cn.jpush.android.helper.c.a(n9, 1210, str, context);
        a(context, eVar.u(), 2);
        cn.jpush.android.w.d.a(context, eVar.u().a(), true);
    }

    private boolean a(cn.jpush.android.x.e eVar, int i9) {
        int i10;
        return i9 == 1017 || i9 == 1019 || i9 == 1021 || i9 == 1029 || i9 == 1027 || i9 == 1026 || (i9 == 1015 && ((i10 = eVar.f3529u) == 1 || i10 == 2 || i10 == 3 || i10 == 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(int i9) {
        Integer num = f3269d.get(Integer.valueOf(i9));
        if (num == null || num.intValue() <= 0) {
            return 0;
        }
        return num.intValue();
    }

    private cn.jpush.android.u.c c(int i9) {
        if (i9 == 0) {
            return null;
        }
        cn.jpush.android.u.c cVar = this.f3275g.get(Integer.valueOf(i9));
        if (cVar == null) {
            c cVar2 = new c(this);
            this.f3275g.put(Integer.valueOf(i9), cVar2);
            return cVar2;
        }
        return cVar;
    }

    private static boolean e(Context context, cn.jpush.android.d.d dVar) {
        int i9 = dVar.aA;
        if (i9 == 1 || i9 == 2 || i9 == 3) {
            return true;
        }
        Logger.ww("AdInAppHelper", "unsupported in app message type. type: " + dVar.aA);
        cn.jpush.android.helper.c.a(dVar.f3017c, 1226, context);
        return false;
    }

    public static byte g(Context context) {
        String messageReceiverClass;
        if (context == null) {
            return (byte) 0;
        }
        try {
            messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
        } catch (Throwable th2) {
            Logger.w("AdInAppHelper", "[onCheckInAppMessageState]  error. " + th2.getMessage());
        }
        if (Class.forName(messageReceiverClass).getMethod("onCheckInAppMessageState", Context.class, String.class) == null) {
            Logger.d("AdInAppHelper", "not found onCheckInAppMessageState method");
            return (byte) 0;
        }
        if (!TextUtils.isEmpty(messageReceiverClass)) {
            byte onCheckInAppMessageState = ((JPushMessageReceiver) Class.forName(messageReceiverClass).newInstance()).onCheckInAppMessageState(context, cn.jpush.android.af.a.d(context));
            Logger.d("AdInAppHelper", "check InAppMessageState:" + ((int) onCheckInAppMessageState));
            return onCheckInAppMessageState;
        }
        return (byte) 0;
    }

    @Override // cn.jpush.android.u.d
    public int a() {
        return 200;
    }

    @Override // cn.jpush.android.u.d
    public int a(int i9) {
        cn.jpush.android.u.c cVar = this.f3275g.get(Integer.valueOf(i9));
        if (cVar != null) {
            return cVar.b();
        }
        return 0;
    }

    @Override // cn.jpush.android.u.d
    public int a(Context context) {
        return this.f3273c;
    }

    @Override // cn.jpush.android.u.b
    public Boolean a(Context context, int i9, cn.jpush.android.x.e eVar, Object... objArr) {
        JCoreHelper.normalExecutor(context, "AdInAppHelper", new C0048a(context, i9, eVar, objArr));
        return Boolean.valueOf(i9 != 1012);
    }

    @Override // cn.jpush.android.u.d
    public void a(int i9, int i10) {
        cn.jpush.android.u.c cVar = this.f3275g.get(Integer.valueOf(i9));
        if (cVar != null) {
            cVar.a(i10);
            if (i10 == 0) {
                cVar.a();
                this.f3275g.remove(Integer.valueOf(i9));
                Logger.d("AdInAppHelper", "release inapp handle object, displayStyleMaps size: " + this.f3275g.size());
            }
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, int i9) {
        for (cn.jpush.android.u.c cVar : this.f3275g.values()) {
            cVar.a(context, i9);
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, cn.jpush.android.d.d dVar) {
        if (dVar != null) {
            boolean e10 = e(context, dVar);
            if (e10) {
                this.f3273c = dVar.bo;
                JCoreHelper.normalExecutor(context, JPushConstants.SDK_TYPE, new e(context, dVar, this.f3271a));
                cn.jpush.android.u.c c10 = c(d.a(dVar.aA, dVar.aC));
                if (c10 != null) {
                    c10.a(1);
                }
            }
            if (e10) {
                return;
            }
            a(context, dVar, 0);
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, cn.jpush.android.x.e eVar, int i9) {
        cn.jpush.android.u.c c10 = c(d.a(eVar.o(), eVar.u().aC));
        if (c10 != null) {
            c10.a(context, eVar, i9);
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, cn.jpush.android.x.e eVar, String str) {
        if (TextUtils.isEmpty(str) || eVar == null) {
            return;
        }
        cn.jpush.android.helper.c.a(eVar.n(), 1234, str, context);
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, String str) {
        for (cn.jpush.android.u.c cVar : this.f3275g.values()) {
            cVar.a(context, str);
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(cn.jpush.android.x.e eVar, int i9, String str) {
        cn.jpush.android.u.c c10 = c(d.a(eVar.o(), eVar.u().aC));
        if (c10 != null) {
            c10.a(eVar, i9, str);
        }
    }

    @Override // cn.jpush.android.u.d
    public boolean a(Context context, boolean z10, cn.jpush.android.d.d dVar) {
        return z10;
    }

    @Override // cn.jpush.android.u.d
    public cn.jpush.android.d.d b(Context context) {
        List<cn.jpush.android.d.d> list = this.f3272b;
        if (list == null || list.isEmpty()) {
            return null;
        }
        int size = this.f3272b.size() - 1;
        cn.jpush.android.d.d dVar = this.f3272b.get(size);
        this.f3272b.remove(size);
        Logger.d("AdInAppHelper", "get in app message, current size is " + this.f3272b.size());
        return dVar;
    }

    @Override // cn.jpush.android.u.d
    public void b(Context context, int i9) {
        cn.jpush.android.u.c cVar = this.f3275g.get(Integer.valueOf(i9));
        if (cVar != null) {
            cVar.a(context, 3);
        }
    }

    @Override // cn.jpush.android.u.d
    public void b(Context context, cn.jpush.android.d.d dVar) {
        try {
            if (dVar == null) {
                Logger.w("AdInAppHelper", "cache ad in app, message is null");
                return;
            }
            if (this.f3272b == null) {
                this.f3272b = new LinkedList();
            }
            if (this.f3272b.contains(dVar)) {
                Logger.w("AdInAppHelper", "the ad message cache already, messageId: " + dVar.f3017c);
                return;
            }
            if (this.f3272b.size() >= 5) {
                this.f3272b.remove(0);
                Logger.d("AdInAppHelper", "cache in app size large 5");
            }
            this.f3272b.add(dVar);
            this.f3273c = dVar.bo;
            Logger.d("AdInAppHelper", "in app message cache, current size is " + this.f3272b.size());
            cn.jpush.android.helper.c.a(dVar.f3017c, 1310, context);
        } catch (Throwable th2) {
            Logger.w("AdInAppHelper", "cache in app data failed, " + th2.getMessage());
        }
    }

    @Override // cn.jpush.android.u.d
    public void b(Context context, String str) {
        for (cn.jpush.android.u.c cVar : this.f3275g.values()) {
            cVar.b(context, str);
        }
    }

    @Override // cn.jpush.android.u.d
    public void c(Context context, String str) {
        for (cn.jpush.android.u.c cVar : this.f3275g.values()) {
            cVar.c(context, str);
        }
    }

    @Override // cn.jpush.android.u.d
    public boolean c(Context context) {
        List<cn.jpush.android.d.d> list = this.f3272b;
        return list != null && list.size() > 0;
    }

    @Override // cn.jpush.android.u.d
    public boolean c(Context context, cn.jpush.android.d.d dVar) {
        cn.jpush.android.u.c c10 = c(d.a(dVar.aA, dVar.aC));
        if (c10 != null) {
            c10.a(context, dVar);
            return false;
        }
        return false;
    }

    @Override // cn.jpush.android.u.d
    public void d(Context context) {
        for (cn.jpush.android.u.c cVar : this.f3275g.values()) {
            if (cVar.b() != 0) {
                cVar.a(context);
            }
        }
    }

    @Override // cn.jpush.android.u.d
    public boolean e(Context context) {
        String messageReceiverClass;
        try {
            messageReceiverClass = JPushConstants.getMessageReceiverClass(context);
        } catch (Throwable th2) {
            Logger.w("AdInAppHelper", "check user intercept in app display failed, " + th2.getMessage());
        }
        if (Class.forName(messageReceiverClass).getMethod("onInAppMessageUnShow", Context.class, NotificationMessage.class) == null) {
            Logger.dd("AdInAppHelper", "not found onInAppMessageUnShow method");
            return false;
        }
        if (!TextUtils.isEmpty(messageReceiverClass) && !((JPushMessageReceiver) Class.forName(messageReceiverClass).newInstance()).isNeedShowInAppMessage(context, new NotificationMessage(), cn.jpush.android.af.a.d(context))) {
            Logger.dd("AdInAppHelper", "user intercept in app display");
            return true;
        }
        return false;
    }

    @Override // cn.jpush.android.u.d
    public void f(Context context) {
        ArrayList<cn.jpush.android.d.a> a10 = cn.jpush.android.w.d.a(context);
        if (a10 == null || a10.size() <= 0) {
            return;
        }
        Iterator<cn.jpush.android.d.a> it = a10.iterator();
        while (it.hasNext()) {
            cn.jpush.android.d.a next = it.next();
            if (!TextUtils.isEmpty(next.f2988a)) {
                cn.jpush.android.helper.c.a(next.f2988a, 1323, context);
            }
        }
    }
}
