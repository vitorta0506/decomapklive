package com.huawei.hms.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.PackageManagerHelper;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class HMSPackageManager {

    /* renamed from: l  reason: collision with root package name */
    public static HMSPackageManager f27862l;

    /* renamed from: m  reason: collision with root package name */
    public static final Object f27863m = new Object();

    /* renamed from: n  reason: collision with root package name */
    public static final Object f27864n = new Object();

    /* renamed from: o  reason: collision with root package name */
    public static final Object f27865o = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final Context f27866a;

    /* renamed from: b  reason: collision with root package name */
    public final PackageManagerHelper f27867b;

    /* renamed from: c  reason: collision with root package name */
    public String f27868c;

    /* renamed from: d  reason: collision with root package name */
    public String f27869d;

    /* renamed from: e  reason: collision with root package name */
    public int f27870e;

    /* renamed from: f  reason: collision with root package name */
    public String f27871f;

    /* renamed from: g  reason: collision with root package name */
    public String f27872g;

    /* renamed from: h  reason: collision with root package name */
    public String f27873h;

    /* renamed from: i  reason: collision with root package name */
    public int f27874i;

    /* renamed from: j  reason: collision with root package name */
    public int f27875j;

    /* renamed from: k  reason: collision with root package name */
    public long f27876k;

    /* loaded from: classes4.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSLog.i("HMSPackageManager", "enter asyncOnceCheckMDMState");
            for (ResolveInfo resolveInfo : HMSPackageManager.this.f27866a.getPackageManager().queryIntentServices(new Intent("com.huawei.hms.core.aidlservice"), 128)) {
                if ("com.huawei.hwid".equals(resolveInfo.serviceInfo.applicationInfo.packageName)) {
                    HMSPackageManager.this.c();
                }
            }
            HMSLog.i("HMSPackageManager", "quit asyncOnceCheckMDMState");
        }
    }

    /* loaded from: classes4.dex */
    public static class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public String f27878a;

        /* renamed from: b  reason: collision with root package name */
        public String f27879b;

        /* renamed from: c  reason: collision with root package name */
        public String f27880c;

        /* renamed from: d  reason: collision with root package name */
        public String f27881d;

        /* renamed from: e  reason: collision with root package name */
        public String f27882e;

        /* renamed from: f  reason: collision with root package name */
        public Long f27883f;

        public b(String str, String str2, String str3, String str4, String str5, long j10) {
            this.f27878a = str;
            this.f27879b = str2;
            this.f27880c = str3;
            this.f27881d = str4;
            this.f27882e = str5;
            this.f27883f = Long.valueOf(j10);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(b bVar) {
            if (TextUtils.equals(this.f27882e, bVar.f27882e)) {
                return this.f27883f.compareTo(bVar.f27883f);
            }
            return this.f27882e.compareTo(bVar.f27882e);
        }
    }

    public HMSPackageManager(Context context) {
        this.f27866a = context;
        this.f27867b = new PackageManagerHelper(context);
    }

    public static HMSPackageManager getInstance(Context context) {
        synchronized (f27863m) {
            if (f27862l == null) {
                if (context.getApplicationContext() != null) {
                    f27862l = new HMSPackageManager(context.getApplicationContext());
                } else {
                    f27862l = new HMSPackageManager(context);
                }
                f27862l.j();
                f27862l.a();
            }
        }
        return f27862l;
    }

    public final int c() {
        synchronized (f27865o) {
            HMSLog.i("HMSPackageManager", "enter checkHmsIsSpoof");
            if (!(this.f27875j == 3 || this.f27876k != this.f27867b.getPackageFirstInstallTime("com.huawei.hwid"))) {
                HMSLog.i("HMSPackageManager", "quit checkHmsIsSpoof cached state: " + a(this.f27875j));
                return this.f27875j;
            }
            this.f27875j = b() ? 2 : 1;
            this.f27876k = this.f27867b.getPackageFirstInstallTime("com.huawei.hwid");
            HMSLog.i("HMSPackageManager", "quit checkHmsIsSpoof state: " + a(this.f27875j));
            return this.f27875j;
        }
    }

    public final void d() {
        synchronized (f27864n) {
            this.f27871f = null;
            this.f27872g = null;
            this.f27873h = null;
            this.f27874i = 0;
        }
    }

    public final void e() {
        synchronized (f27864n) {
            this.f27868c = null;
            this.f27869d = null;
            this.f27870e = 0;
        }
    }

    public final Pair<String, String> f() {
        List<ResolveInfo> queryIntentServices = this.f27866a.getPackageManager().queryIntentServices(new Intent("com.huawei.hms.core.aidlservice"), 128);
        if (queryIntentServices.size() == 0) {
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentServices) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            String str = serviceInfo.applicationInfo.packageName;
            Bundle bundle = serviceInfo.metaData;
            if (bundle == null) {
                HMSLog.e("HMSPackageManager", "skip package " + str + " for metadata is null");
            } else if (!bundle.containsKey("hms_app_signer")) {
                HMSLog.e("HMSPackageManager", "skip package " + str + " for no signer");
            } else if (bundle.containsKey("hms_app_cert_chain")) {
                String packageSignature = this.f27867b.getPackageSignature(str);
                if (!a(str + ContainerUtils.FIELD_DELIMITER + packageSignature, bundle.getString("hms_app_signer"), bundle.getString("hms_app_cert_chain"))) {
                    HMSLog.e("HMSPackageManager", "checkSigner failed");
                } else {
                    return new Pair<>(str, packageSignature);
                }
            } else {
                HMSLog.e("HMSPackageManager", "skip package " + str + " for no cert chain");
            }
        }
        return null;
    }

    public final Pair<String, String> g() {
        Pair<String, String> f10 = f();
        if (f10 != null) {
            HMSLog.i("HMSPackageManager", "aidlService pkgName: " + ((String) f10.first));
            this.f27873h = "com.huawei.hms.core.aidlservice";
            return f10;
        }
        ArrayList<b> h10 = h();
        if (h10 == null) {
            HMSLog.e("HMSPackageManager", "PackagePriorityInfo list is null");
            return null;
        }
        Iterator<b> it = h10.iterator();
        while (it.hasNext()) {
            b next = it.next();
            String str = next.f27878a;
            String str2 = next.f27879b;
            String str3 = next.f27880c;
            String str4 = next.f27881d;
            String packageSignature = this.f27867b.getPackageSignature(str);
            if (a(str + ContainerUtils.FIELD_DELIMITER + packageSignature + ContainerUtils.FIELD_DELIMITER + str2, str3, str4)) {
                HMSLog.i("HMSPackageManager", "result: " + str + ", " + str2 + ", " + next.f27883f);
                this.f27873h = PackageConstants.GENERAL_SERVICES_ACTION;
                b(str2);
                return new Pair<>(str, packageSignature);
            }
        }
        return null;
    }

    public String getHMSFingerprint() {
        String str = this.f27869d;
        return str == null ? "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05" : str;
    }

    public String getHMSPackageName() {
        HMSLog.i("HMSPackageManager", "Enter getHMSPackageName");
        refresh();
        String str = this.f27868c;
        if (str != null) {
            if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f27867b.getPackageStates(str))) {
                HMSLog.i("HMSPackageManager", "The package name is not installed and needs to be refreshed again");
                i();
            }
            String str2 = this.f27868c;
            if (str2 != null) {
                return str2;
            }
        }
        if (!PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f27867b.getPackageStates("com.huawei.hwid"))) {
            "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05".equalsIgnoreCase(this.f27867b.getPackageSignature("com.huawei.hwid"));
        }
        return "com.huawei.hwid";
    }

    public String getHMSPackageNameForMultiService() {
        HMSLog.i("HMSPackageManager", "Enter getHMSPackageNameForMultiService");
        refreshForMultiService();
        String str = this.f27871f;
        if (str != null) {
            if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(this.f27867b.getPackageStates(str))) {
                HMSLog.i("HMSPackageManager", "The package name is not installed and needs to be refreshed again");
                j();
            }
            String str2 = this.f27871f;
            return str2 != null ? str2 : "com.huawei.hwid";
        }
        return "com.huawei.hwid";
    }

    public PackageManagerHelper.PackageStates getHMSPackageStates() {
        synchronized (f27863m) {
            refresh();
            PackageManagerHelper.PackageStates packageStates = this.f27867b.getPackageStates(this.f27868c);
            PackageManagerHelper.PackageStates packageStates2 = PackageManagerHelper.PackageStates.NOT_INSTALLED;
            if (packageStates == packageStates2) {
                e();
                return packageStates2;
            }
            boolean z10 = false;
            if ("com.huawei.hwid".equals(this.f27868c) && c() == 1) {
                return PackageManagerHelper.PackageStates.SPOOF;
            }
            if (packageStates == PackageManagerHelper.PackageStates.ENABLED && !this.f27869d.equals(this.f27867b.getPackageSignature(this.f27868c))) {
                z10 = true;
            }
            return z10 ? packageStates2 : packageStates;
        }
    }

    public PackageManagerHelper.PackageStates getHMSPackageStatesForMultiService() {
        synchronized (f27863m) {
            refreshForMultiService();
            PackageManagerHelper.PackageStates packageStates = this.f27867b.getPackageStates(this.f27871f);
            PackageManagerHelper.PackageStates packageStates2 = PackageManagerHelper.PackageStates.NOT_INSTALLED;
            if (packageStates == packageStates2) {
                d();
                return packageStates2;
            }
            boolean z10 = false;
            if ("com.huawei.hwid".equals(this.f27871f) && c() == 1) {
                return PackageManagerHelper.PackageStates.SPOOF;
            }
            if (packageStates == PackageManagerHelper.PackageStates.ENABLED && !this.f27872g.equals(this.f27867b.getPackageSignature(this.f27871f))) {
                z10 = true;
            }
            return z10 ? packageStates2 : packageStates;
        }
    }

    public int getHmsMultiServiceVersion() {
        return this.f27867b.getPackageVersionCode(getHMSPackageNameForMultiService());
    }

    public int getHmsVersionCode() {
        return this.f27867b.getPackageVersionCode(getHMSPackageName());
    }

    public String getInnerServiceAction() {
        return PackageConstants.INTERNAL_SERVICES_ACTION;
    }

    public String getServiceAction() {
        return !TextUtils.isEmpty(this.f27873h) ? this.f27873h : "com.huawei.hms.core.aidlservice";
    }

    public final ArrayList<b> h() {
        List<ResolveInfo> queryIntentServices = this.f27866a.getPackageManager().queryIntentServices(new Intent(PackageConstants.GENERAL_SERVICES_ACTION), 128);
        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
            ArrayList<b> arrayList = new ArrayList<>();
            for (ResolveInfo resolveInfo : queryIntentServices) {
                String str = resolveInfo.serviceInfo.applicationInfo.packageName;
                long packageFirstInstallTime = this.f27867b.getPackageFirstInstallTime(str);
                Bundle bundle = resolveInfo.serviceInfo.metaData;
                if (bundle == null) {
                    HMSLog.e("HMSPackageManager", "package " + str + " get metaData is null");
                } else {
                    String a10 = a(bundle, "hms_app_checker_config");
                    String a11 = a(a10);
                    if (TextUtils.isEmpty(a11)) {
                        HMSLog.i("HMSPackageManager", "get priority fail. hmsCheckerCfg: " + a10);
                    } else {
                        String a12 = a(bundle, "hms_app_signer_v2");
                        if (TextUtils.isEmpty(a12)) {
                            HMSLog.i("HMSPackageManager", "get signerV2 fail.");
                        } else {
                            String a13 = a(bundle, "hms_app_cert_chain");
                            if (TextUtils.isEmpty(a13)) {
                                HMSLog.i("HMSPackageManager", "get certChain fail.");
                            } else {
                                HMSLog.i("HMSPackageManager", "add: " + str + ", " + a10 + ", " + packageFirstInstallTime);
                                arrayList.add(new b(str, a10, a12, a13, a11, packageFirstInstallTime));
                            }
                        }
                    }
                }
            }
            Collections.sort(arrayList);
            return arrayList;
        }
        HMSLog.e("HMSPackageManager", "resolveInfoList is null or empty");
        return null;
    }

    public boolean hmsVerHigherThan(int i9) {
        if (this.f27870e >= i9 || !k()) {
            return true;
        }
        int packageVersionCode = this.f27867b.getPackageVersionCode(getHMSPackageName());
        this.f27870e = packageVersionCode;
        return packageVersionCode >= i9;
    }

    public final void i() {
        synchronized (f27864n) {
            Pair<String, String> f10 = f();
            if (f10 == null) {
                HMSLog.e("HMSPackageManager", "<initHmsPackageInfo> Failed to find HMS apk");
                e();
                return;
            }
            this.f27868c = (String) f10.first;
            this.f27869d = (String) f10.second;
            this.f27870e = this.f27867b.getPackageVersionCode(getHMSPackageName());
            HMSLog.i("HMSPackageManager", "<initHmsPackageInfo> Succeed to find HMS apk: " + this.f27868c + " version: " + this.f27870e);
        }
    }

    public boolean isApkNeedUpdate(int i9) {
        int hmsVersionCode = getHmsVersionCode();
        HMSLog.i("HMSPackageManager", "current versionCode:" + hmsVersionCode + ", target version requirements: " + i9);
        return hmsVersionCode < i9;
    }

    public boolean isApkUpdateNecessary(int i9) {
        int hmsVersionCode = getHmsVersionCode();
        HMSLog.i("HMSPackageManager", "current versionCode:" + hmsVersionCode + ", minimum version requirements: " + i9);
        return k() && hmsVersionCode < i9;
    }

    public final void j() {
        synchronized (f27864n) {
            Pair<String, String> g10 = g();
            if (g10 == null) {
                HMSLog.e("HMSPackageManager", "<initHmsPackageInfoForMultiService> Failed to find HMS apk");
                d();
                return;
            }
            this.f27871f = (String) g10.first;
            this.f27872g = (String) g10.second;
            this.f27874i = this.f27867b.getPackageVersionCode(getHMSPackageNameForMultiService());
            HMSLog.i("HMSPackageManager", "<initHmsPackageInfoForMultiService> Succeed to find HMS apk: " + this.f27871f + " version: " + this.f27874i);
        }
    }

    public final boolean k() {
        Bundle bundle;
        PackageManager packageManager = this.f27866a.getPackageManager();
        if (packageManager == null) {
            HMSLog.e("HMSPackageManager", "In isMinApkVersionEffective, Failed to get 'PackageManager' instance.");
            return true;
        }
        try {
        } catch (PackageManager.NameNotFoundException unused) {
            HMSLog.e("HMSPackageManager", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.");
        } catch (RuntimeException e10) {
            HMSLog.e("HMSPackageManager", "In isMinApkVersionEffective, Failed to read meta data for HMSCore API level.", e10);
        }
        if (!TextUtils.isEmpty(this.f27873h) && (this.f27873h.equals(PackageConstants.GENERAL_SERVICES_ACTION) || this.f27873h.equals(PackageConstants.INTERNAL_SERVICES_ACTION))) {
            HMSLog.i("HMSPackageManager", "action = " + this.f27873h + " exist");
            return false;
        }
        ApplicationInfo applicationInfo = packageManager.getPackageInfo(getHMSPackageName(), 128).applicationInfo;
        if (applicationInfo != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("com.huawei.hms.kit.api_level:hmscore") && (getHmsVersionCode() >= 50000000 || getHmsVersionCode() <= 19999999)) {
            HMSLog.i("HMSPackageManager", "MinApkVersion is disabled.");
            return false;
        }
        return true;
    }

    public void refresh() {
        if (TextUtils.isEmpty(this.f27868c) || TextUtils.isEmpty(this.f27869d)) {
            i();
        }
    }

    public void refreshForMultiService() {
        if (TextUtils.isEmpty(this.f27871f) || TextUtils.isEmpty(this.f27872g)) {
            j();
        }
    }

    public void resetMultiServiceState() {
        d();
    }

    public final String a(Bundle bundle, String str) {
        if (!bundle.containsKey(str)) {
            HMSLog.e("HMSPackageManager", "no " + str + " in metaData");
            return null;
        }
        return bundle.getString(str);
    }

    public final void b(String str) {
        String a10 = a(str);
        if (TextUtils.isEmpty(a10)) {
            return;
        }
        a10.substring(9);
    }

    public final String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("priority=");
        if (indexOf == -1) {
            HMSLog.e("HMSPackageManager", "get indexOfIdentifier -1");
            return null;
        }
        int indexOf2 = str.indexOf(",", indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        return str.substring(indexOf, indexOf2);
    }

    public final boolean b() {
        String hmsPath = ReadApkFileUtil.getHmsPath(this.f27866a);
        if (hmsPath == null) {
            HMSLog.i("HMSPackageManager", "hmsPath is null!");
            return false;
        } else if (!ReadApkFileUtil.isCertFound(hmsPath)) {
            HMSLog.i("HMSPackageManager", "NO huawer.cer in HMS!");
            return false;
        } else if (!ReadApkFileUtil.checkSignature()) {
            HMSLog.i("HMSPackageManager", "checkSignature fail!");
            return false;
        } else if (ReadApkFileUtil.verifyApkHash(hmsPath)) {
            return true;
        } else {
            HMSLog.i("HMSPackageManager", "verifyApkHash fail!");
            return false;
        }
    }

    public final boolean a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            List<X509Certificate> b10 = com.huawei.hms.device.a.b(str3);
            if (b10.size() == 0) {
                HMSLog.e("HMSPackageManager", "certChain is empty");
                return false;
            } else if (!com.huawei.hms.device.a.a(com.huawei.hms.device.a.a(this.f27866a), b10)) {
                HMSLog.e("HMSPackageManager", "failed to verify cert chain");
                return false;
            } else {
                X509Certificate x509Certificate = b10.get(b10.size() - 1);
                if (!com.huawei.hms.device.a.a(x509Certificate, "Huawei CBG HMS")) {
                    HMSLog.e("HMSPackageManager", "CN is invalid");
                    return false;
                } else if (!com.huawei.hms.device.a.b(x509Certificate, "Huawei CBG Cloud Security Signer")) {
                    HMSLog.e("HMSPackageManager", "OU is invalid");
                    return false;
                } else if (com.huawei.hms.device.a.a(x509Certificate, str, str2)) {
                    return true;
                } else {
                    HMSLog.e("HMSPackageManager", "signature is invalid: " + str);
                    return false;
                }
            }
        }
        HMSLog.e("HMSPackageManager", "args is invalid");
        return false;
    }

    public final void a() {
        new Thread(new a(), "Thread-asyncOnceCheckMDMState").start();
    }

    public static String a(int i9) {
        if (i9 == 1) {
            return "SPOOFED";
        }
        if (i9 == 2) {
            return "SUCCESS";
        }
        if (i9 == 3) {
            return "UNCHECKED";
        }
        HMSLog.e("HMSPackageManager", "invalid checkMDM state: " + i9);
        return "";
    }
}
