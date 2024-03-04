package com.huawei.hms.utils;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.huawei.hianalytics.process.HiAnalyticsConfig;
import com.huawei.hianalytics.process.HiAnalyticsInstance;
import com.huawei.hianalytics.process.HiAnalyticsManager;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.GrsClient;
import com.huawei.hms.framework.network.grs.IQueryUrlCallBack;
import com.huawei.hms.hatool.HmsHiAnalyticsUtils;
import com.huawei.hms.stats.c;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.log.HMSLog;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class HMSBIInitializer {

    /* renamed from: d  reason: collision with root package name */
    public static final Object f27854d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static HMSBIInitializer f27855e;

    /* renamed from: f  reason: collision with root package name */
    public static HiAnalyticsInstance f27856f;

    /* renamed from: a  reason: collision with root package name */
    public final Context f27857a;

    /* renamed from: b  reason: collision with root package name */
    public AtomicBoolean f27858b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    public boolean f27859c = c.a();

    /* loaded from: classes4.dex */
    public class a implements IQueryUrlCallBack {
        public a() {
        }

        @Override // com.huawei.hms.framework.network.grs.IQueryUrlCallBack
        public void onCallBackFail(int i9) {
            HMSLog.e("HMSBIInitializer", "get grs failed, the errorcode is " + i9);
            HMSBIInitializer.this.f27858b.set(false);
        }

        @Override // com.huawei.hms.framework.network.grs.IQueryUrlCallBack
        public void onCallBackSuccess(String str) {
            if (!TextUtils.isEmpty(str)) {
                if (!HMSBIInitializer.this.f27859c) {
                    HmsHiAnalyticsUtils.init(HMSBIInitializer.this.f27857a, false, false, false, str, "com.huawei.hwid");
                } else {
                    HiAnalyticsConfig build = new HiAnalyticsConfig.Builder().setEnableImei(false).setEnableUDID(false).setEnableSN(false).setCollectURL(str).build();
                    HiAnalyticsInstance unused = HMSBIInitializer.f27856f = new HiAnalyticsInstance.Builder(HMSBIInitializer.this.f27857a).setOperConf(build).setMaintConf(new HiAnalyticsConfig.Builder().setEnableImei(false).setEnableUDID(false).setEnableSN(false).setCollectURL(str).build()).create(HiAnalyticsConstant.HA_SERVICE_TAG);
                    HMSBIInitializer.f27856f.setAppid("com.huawei.hwid");
                }
                HMSLog.i("HMSBIInitializer", "BI URL acquired successfully");
            }
            HMSBIInitializer.this.f27858b.set(false);
        }
    }

    /* loaded from: classes4.dex */
    public class b extends AsyncTask<String, Integer, Void> {
        public b() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            HMSBIInitializer.this.a(strArr[0]);
            return null;
        }

        public /* synthetic */ b(HMSBIInitializer hMSBIInitializer, a aVar) {
            this();
        }
    }

    public HMSBIInitializer(Context context) {
        this.f27857a = context;
    }

    public static HMSBIInitializer getInstance(Context context) {
        synchronized (f27854d) {
            if (f27855e == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    f27855e = new HMSBIInitializer(applicationContext);
                } else {
                    f27855e = new HMSBIInitializer(context);
                }
            }
        }
        return f27855e;
    }

    public HiAnalyticsInstance getAnalyticsInstance() {
        return f27856f;
    }

    public void initBI() {
        boolean initFlag;
        if (!this.f27859c) {
            initFlag = HmsHiAnalyticsUtils.getInitFlag();
        } else {
            initFlag = HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
        }
        HMSLog.i("HMSBIInitializer", "Builder->biInitFlag :" + initFlag);
        if (initFlag || com.huawei.hms.stats.a.c(this.f27857a) || !this.f27858b.compareAndSet(false, true)) {
            return;
        }
        String issueCountryCode = GrsApp.getInstance().getIssueCountryCode(this.f27857a);
        if (!TextUtils.isEmpty(issueCountryCode)) {
            issueCountryCode = issueCountryCode.toUpperCase(Locale.ENGLISH);
        }
        if (!GrsBaseInfo.CountryCodeSource.UNKNOWN.equalsIgnoreCase(issueCountryCode) && !TextUtils.isEmpty(issueCountryCode)) {
            new b(this, null).execute(issueCountryCode);
            return;
        }
        HMSLog.e("HMSBIInitializer", "Failed to get device issue country");
        this.f27858b.set(false);
    }

    public boolean isInit() {
        if (!this.f27859c) {
            return HmsHiAnalyticsUtils.getInitFlag();
        }
        return HiAnalyticsManager.getInitFlag(HiAnalyticsConstant.HA_SERVICE_TAG);
    }

    public final void a(String str) {
        HMSLog.i("HMSBIInitializer", "Start to query GRS");
        GrsBaseInfo grsBaseInfo = new GrsBaseInfo();
        grsBaseInfo.setIssueCountry(str);
        new GrsClient(this.f27857a, grsBaseInfo).ayncGetGrsUrl("com.huawei.cloud.opensdkhianalytics", "ROOTV2", new a());
    }
}
