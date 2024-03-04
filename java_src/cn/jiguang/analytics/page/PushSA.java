package cn.jiguang.analytics.page;

import android.app.Application;
import android.app.TabActivity;
import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.as.d;
import cn.jiguang.au.f;
import cn.jiguang.bg.b;
import cn.jiguang.f.g;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class PushSA {
    public static final String CACHE_PATH = "push_stat_cache.json";
    private static final String KEY_SESSION_ID = "session_id";
    public static final String REPORT_ACTIVE_LAUNCH = "active_launch";
    public static final String REPORT_ACTIVE_TERMINATE = "active_terminate";
    private static final String SESSION_END_MILLIS = "cse";
    private static final String SESSION_START_MILLIS = "css";
    private static final String TAG = "PushSA";
    private static volatile PushSA instance = null;
    public static boolean isOnPauseInvoke = false;
    public static boolean isOnResumeInvoke = false;
    private String cur_activity = null;
    private String cur_session_id = null;
    private long interval = 30;
    private long latestResumeTime = 0;
    private long latestPauseTime = 0;
    private boolean firstResume = true;
    private boolean activitySwitch = false;
    private boolean stat_enable = true;
    private long tempTimelong = 0;
    private JSONObject flow_cache = null;
    private final Object cur_session_file_lock = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends b {

        /* renamed from: a  reason: collision with root package name */
        boolean f1974a;

        /* renamed from: b  reason: collision with root package name */
        Context f1975b;

        /* renamed from: c  reason: collision with root package name */
        PushSA f1976c;

        public a(boolean z10, Context context, PushSA pushSA) {
            this.f1974a = z10;
            this.f1975b = context;
            this.f1976c = pushSA;
            this.f2494h = PushSA.TAG;
        }

        @Override // cn.jiguang.bg.b
        public void a() {
            try {
                if (this.f1974a) {
                    this.f1976c.sendLogRoutine(this.f1975b);
                } else {
                    this.f1976c.saveLogRoutine(this.f1975b);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private PushSA() {
    }

    private void clearCurrentLogFile(Context context) {
        f.a(context, CACHE_PATH, (JSONObject) null);
    }

    private JSONObject createNewSession(Context context, long j10) {
        this.cur_session_id = generateSessionID(context, j10);
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.o().a((cn.jiguang.g.a<Long>) Long.valueOf(this.latestResumeTime)), cn.jiguang.g.a.r().a((cn.jiguang.g.a<String>) this.cur_session_id));
        JSONObject jSONObject = new JSONObject();
        try {
            wrapDate(jSONObject);
            cn.jiguang.d.a.a(context, jSONObject, REPORT_ACTIVE_LAUNCH);
            jSONObject.put(KEY_SESSION_ID, this.cur_session_id);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private String generateSessionID(Context context, long j10) {
        StringBuilder sb2 = new StringBuilder();
        String e10 = cn.jiguang.d.a.e(context);
        if (!TextUtils.isEmpty(e10)) {
            sb2.append(e10);
        }
        sb2.append(j10);
        return g.d(sb2.toString());
    }

    private JSONObject getFlowCache(Context context) {
        if (this.flow_cache == null) {
            this.flow_cache = cn.jiguang.d.a.a(context, CACHE_PATH);
        }
        return this.flow_cache;
    }

    public static PushSA getInstance() {
        if (instance == null) {
            synchronized (PushSA.class) {
                instance = new PushSA();
            }
        }
        return instance;
    }

    private boolean invokeCheck(Context context, String str) {
        if (!this.stat_enable) {
            d.e(TAG, "stat function has been disabled");
            return false;
        } else if (context == null) {
            d.e(TAG, "context is null");
            return false;
        } else if (context instanceof Application) {
            d.j(TAG, "Context should be an Activity on this method : " + str);
            return false;
        } else {
            return true;
        }
    }

    private boolean isNewSession(Context context) {
        if (this.firstResume) {
            this.firstResume = false;
            d.c(TAG, "statistics start");
            long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.q())).longValue();
            d.c(TAG, "lastPause:" + longValue + ",latestResumeTime:" + this.latestResumeTime + ",interval:" + (this.interval * 1000) + ",a:" + (this.latestResumeTime - longValue));
            if (longValue > 0 && this.latestResumeTime - longValue <= this.interval * 1000) {
                return false;
            }
        } else if (this.latestResumeTime - this.latestPauseTime <= this.interval * 1000) {
            return false;
        }
        return true;
    }

    private void saveCurrentLog(Context context, JSONObject jSONObject) {
        f.a(context, CACHE_PATH, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveLogRoutine(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.cur_session_file_lock) {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.q().a((cn.jiguang.g.a<Long>) Long.valueOf(this.latestPauseTime)), cn.jiguang.g.a.p().a((cn.jiguang.g.a<Long>) Long.valueOf(this.latestPauseTime)));
            JSONObject flowCache = getFlowCache(context);
            if (flowCache == null) {
                flowCache = new JSONObject();
            }
            try {
                updateFlowInfo(flowCache, context);
            } catch (Exception unused) {
            }
            updateFlowCache(flowCache);
            saveCurrentLog(context, flowCache);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLogRoutine(Context context) {
        JSONObject flowCache;
        if (!isNewSession(context)) {
            this.cur_session_id = (String) cn.jiguang.g.b.b(context, cn.jiguang.g.a.r());
            return;
        }
        d.e(TAG, "new statistics session");
        JSONArray jSONArray = new JSONArray();
        JSONObject createNewSession = createNewSession(context, this.latestResumeTime);
        if (createNewSession != null) {
            jSONArray.put(createNewSession);
        }
        synchronized (this.cur_session_file_lock) {
            flowCache = getFlowCache(context);
            if (flowCache != null && flowCache.length() > 0) {
                try {
                    cn.jiguang.d.a.a(context, flowCache, REPORT_ACTIVE_TERMINATE);
                } catch (Exception unused) {
                }
                clearCurrentLogFile(context);
                this.flow_cache = null;
            }
        }
        if (flowCache != null && flowCache.length() > 0) {
            jSONArray.put(flowCache);
        }
        cn.jiguang.d.a.a(context, jSONArray);
    }

    private void updateFlowCache(JSONObject jSONObject) {
        this.flow_cache = jSONObject;
    }

    private void updateFlowInfo(JSONObject jSONObject, Context context) {
        long j10;
        long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.o())).longValue();
        if (longValue <= 0) {
            long j11 = this.latestPauseTime - this.tempTimelong;
            j10 = j11 > 0 ? j11 / 1000 : 10L;
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.o().a((cn.jiguang.g.a<Long>) Long.valueOf(this.tempTimelong)));
        } else {
            j10 = (this.latestPauseTime - longValue) / 1000;
        }
        jSONObject.put("duration", j10);
        jSONObject.put("itime", System.currentTimeMillis() / 1000);
        jSONObject.put(KEY_SESSION_ID, this.cur_session_id);
        wrapDate(jSONObject);
    }

    private void wrapDate(JSONObject jSONObject) {
        String a10 = cn.jiguang.f.b.a();
        String str = a10.split("_")[0];
        String str2 = a10.split("_")[1];
        jSONObject.put("date", str);
        jSONObject.put(CrashHianalyticsData.TIME, str2);
    }

    public long getInterval() {
        return this.interval;
    }

    public boolean isStatEnable() {
        return this.stat_enable;
    }

    public void onFragmentPause(Context context, String str) {
        if (!this.activitySwitch) {
            d.c(TAG, "JCoreInterface.onPause() must be called after called JCoreInterface.onResume() in this Activity or Fragment");
            return;
        }
        this.activitySwitch = false;
        String str2 = this.cur_activity;
        if (str2 == null || !str2.equals(str)) {
            d.j(TAG, "page name didn't match the last one passed by onResume");
            return;
        }
        this.latestPauseTime = System.currentTimeMillis();
        final Context applicationContext = context.getApplicationContext();
        try {
            cn.jiguang.bg.d.a("FUTURE_TASK", new b("PushSA#onFragmentPause") { // from class: cn.jiguang.analytics.page.PushSA.2
                @Override // cn.jiguang.bg.b
                public void a() {
                    try {
                        PushSA.this.saveLogRoutine(applicationContext);
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void onFragmentResume(Context context, String str) {
        if (this.activitySwitch) {
            d.c(TAG, "JCoreInterface.onResume() must be called after called JCoreInterface.onPause() in last Activity or Fragment");
            return;
        }
        this.activitySwitch = true;
        this.cur_activity = str;
        this.latestResumeTime = System.currentTimeMillis();
        final Context applicationContext = context.getApplicationContext();
        try {
            cn.jiguang.bg.d.a("FUTURE_TASK", new b("PushSA#onFragmentResume") { // from class: cn.jiguang.analytics.page.PushSA.1
                @Override // cn.jiguang.bg.b
                public void a() {
                    try {
                        PushSA.this.sendLogRoutine(applicationContext);
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void onKillProcess(Context context) {
        try {
            if (this.cur_activity == null || !this.activitySwitch) {
                return;
            }
            this.latestPauseTime = System.currentTimeMillis();
            final Context applicationContext = context.getApplicationContext();
            cn.jiguang.bg.d.a("FUTURE_TASK", new b("PushSA#onKillProcess") { // from class: cn.jiguang.analytics.page.PushSA.3
                @Override // cn.jiguang.bg.b
                public void a() {
                    try {
                        PushSA.this.saveLogRoutine(applicationContext);
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void onPause(Context context) {
        if (invokeCheck(context, "onPause")) {
            isOnPauseInvoke = true;
            try {
                TabActivity tabActivity = (TabActivity) context;
                this.activitySwitch = true;
            } catch (ClassCastException unused) {
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (this.activitySwitch) {
                this.activitySwitch = false;
                String str = this.cur_activity;
                if (str == null || !str.equals(context.getClass().getName())) {
                    d.e(TAG, "the activity pass by onPause didn't match last one passed by onResume");
                    return;
                }
                this.latestPauseTime = System.currentTimeMillis();
                this.tempTimelong = this.latestResumeTime;
                try {
                    cn.jiguang.bg.d.a("FUTURE_TASK", new a(false, context.getApplicationContext(), this));
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public void onResume(Context context) {
        if (invokeCheck(context, "onResume")) {
            isOnResumeInvoke = true;
            try {
                TabActivity tabActivity = (TabActivity) context;
                this.activitySwitch = false;
            } catch (ClassCastException | Exception unused) {
            }
            if (this.activitySwitch) {
                return;
            }
            this.activitySwitch = true;
            this.latestResumeTime = System.currentTimeMillis();
            this.cur_activity = context.getClass().getName();
            try {
                cn.jiguang.bg.d.a("FUTURE_TASK", new a(true, context.getApplicationContext(), this));
            } catch (Throwable unused2) {
            }
        }
    }

    public void setInterval(long j10) {
        this.interval = j10;
    }

    public void setStatEnable(boolean z10) {
        this.stat_enable = z10;
    }
}
