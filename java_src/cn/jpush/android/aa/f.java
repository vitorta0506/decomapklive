package cn.jpush.android.aa;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import cn.jpush.android.aa.c;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.service.SchedulerReceiver;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f2821a;

    /* renamed from: b  reason: collision with root package name */
    private LinkedList<a> f2822b;

    /* renamed from: c  reason: collision with root package name */
    private LinkedList<a> f2823c;

    /* renamed from: d  reason: collision with root package name */
    private final Comparator<a> f2824d = new Comparator<a>() { // from class: cn.jpush.android.aa.f.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(a aVar, a aVar2) {
            if (aVar.f2826a < aVar2.f2826a) {
                return -1;
            }
            return aVar.f2826a == aVar2.f2826a ? 0 : 1;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f2826a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2827b;

        /* renamed from: c  reason: collision with root package name */
        private cn.jpush.android.d.d f2828c;

        /* renamed from: d  reason: collision with root package name */
        private int f2829d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f2830e;

        public a(long j10, int i9) {
            this.f2826a = j10;
            this.f2827b = false;
            this.f2829d = i9;
        }

        public a(long j10, cn.jpush.android.d.d dVar, boolean z10) {
            this.f2826a = j10;
            this.f2827b = true;
            this.f2828c = dVar;
            this.f2830e = z10;
        }

        public a(JSONObject jSONObject) {
            try {
                this.f2826a = jSONObject.getLong("operationTime");
                this.f2827b = jSONObject.optBoolean("showOrDismiss");
                String optString = jSONObject.optString("pushEntity");
                if (!TextUtils.isEmpty(optString)) {
                    this.f2828c = cn.jpush.android.d.d.a(optString);
                }
                this.f2829d = jSONObject.optInt(RemoteMessageConst.Notification.NOTIFY_ID);
            } catch (Throwable unused) {
            }
        }

        public JSONObject a() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("operationTime", this.f2826a);
                jSONObject.put("showOrDismiss", this.f2827b);
                if (this.f2827b) {
                    cn.jpush.android.d.d dVar = this.f2828c;
                    jSONObject.put("pushEntity", dVar != null ? dVar.c() : null);
                } else {
                    jSONObject.put(RemoteMessageConst.Notification.NOTIFY_ID, this.f2829d);
                }
                return jSONObject;
            } catch (Throwable unused) {
                return null;
            }
        }

        public String toString() {
            return "Item{operationTime=" + this.f2826a + ", showOrDismiss=" + this.f2827b + ", pushEntity=" + this.f2828c + ", notifyId=" + this.f2829d + ", isDelayByInapp=" + this.f2830e + '}';
        }
    }

    private f() {
    }

    public static f a() {
        if (f2821a == null) {
            synchronized (f.class) {
                if (f2821a == null) {
                    f2821a = new f();
                }
            }
        }
        return f2821a;
    }

    private void a(Context context, a aVar) {
        try {
            Logger.d("NotificationScheduler", "schedule item=" + aVar);
            Intent intent = new Intent(context, SchedulerReceiver.class);
            intent.setAction(SchedulerReceiver.DELAY_NOTIFY);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 1000, intent, 67108864);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (alarmManager != null) {
                alarmManager.setWindow(0, aVar.f2826a, 300L, broadcast);
                Logger.d("NotificationScheduler", "setAlarm at=" + cn.jpush.android.af.b.a("yyyy-MM-dd HH:mm:ss").format(new Date(aVar.f2826a)));
            }
        } catch (Throwable th2) {
            Logger.ww("NotificationScheduler", "can't trigger alarm cause by exception:" + th2);
        }
    }

    private static void a(Context context, LinkedList<a> linkedList, long j10, a aVar) {
        if (aVar == null) {
            return;
        }
        if (aVar.f2826a > j10) {
            linkedList.add(aVar);
        } else if (!aVar.f2827b) {
            Logger.d("NotificationScheduler", "cancelNotification:" + aVar);
            c.d(context, aVar.f2829d);
        } else if (aVar.f2828c != null && e.a(context, aVar.f2828c.f3017c, aVar.f2828c.f3021g)) {
            Logger.d("NotificationScheduler", "item: " + aVar + " already cancel");
        } else {
            long b10 = cn.jpush.android.af.b.b(aVar.f2828c.as);
            int a10 = c.a(aVar.f2828c);
            if (b10 <= 0) {
                Logger.d("NotificationScheduler", "handleNotification:" + aVar);
                c.a.a(context, aVar.f2828c);
            } else if (b10 <= j10) {
                Logger.d("NotificationScheduler", "cancelNotification:" + aVar);
                c.d(context, a10);
            } else {
                Logger.d("NotificationScheduler", "handleNotification:" + aVar);
                c.a.a(context, aVar.f2828c);
                linkedList.add(new a(b10, a10));
            }
        }
    }

    private void b() {
        LinkedList linkedList = new LinkedList();
        Iterator<a> it = this.f2822b.iterator();
        while (it.hasNext()) {
            a next = it.next();
            cn.jpush.android.d.d dVar = next.f2828c;
            if (!TextUtils.isEmpty(dVar.G) && "ssp".equals(dVar.G) && next.f2827b) {
                linkedList.add(next);
            }
        }
        if (linkedList.isEmpty()) {
            return;
        }
        Logger.d("NotificationScheduler", "clear ssp cache, del_items: " + linkedList + ", list_size: " + this.f2822b.size());
        this.f2822b.removeAll(linkedList);
    }

    public void a(Context context) {
        this.f2822b = new LinkedList<>();
        if (this.f2823c == null) {
            this.f2823c = new LinkedList<>();
        }
        String str = (String) Sp.get(context, Key.NotiSchedule());
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                    this.f2822b.add(new a(jSONArray.getJSONObject(i9)));
                }
            } catch (Throwable unused) {
            }
        }
        if (this.f2823c.size() > 0) {
            this.f2822b.addAll(this.f2823c);
            this.f2823c.clear();
            Collections.sort(this.f2822b, this.f2824d);
        }
    }

    public synchronized void a(Context context, a aVar, boolean z10) {
        a(context);
        if (z10) {
            b();
        }
        LinkedList<a> linkedList = new LinkedList<>();
        long currentTimeMillis = System.currentTimeMillis();
        boolean z11 = aVar != null;
        Iterator<a> it = this.f2822b.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (z11 && next.f2826a > aVar.f2826a) {
                a(context, linkedList, currentTimeMillis, aVar);
                z11 = false;
            }
            a(context, linkedList, currentTimeMillis, next);
        }
        if (z11) {
            a(context, linkedList, currentTimeMillis, aVar);
        }
        this.f2822b = linkedList;
        b(context);
        if (!linkedList.isEmpty()) {
            a(context, linkedList.getFirst());
        }
    }

    public void b(Context context) {
        if (this.f2822b != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<a> it = this.f2822b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.f2830e) {
                    this.f2823c.add(next);
                } else {
                    jSONArray.put(next.a());
                }
            }
            String jSONArray2 = jSONArray.toString();
            Collections.sort(this.f2822b, this.f2824d);
            Sp.set(context, Key.NotiSchedule().set(jSONArray2));
        }
    }
}
