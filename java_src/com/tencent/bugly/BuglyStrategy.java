package com.tencent.bugly;

import java.util.Map;
/* loaded from: classes4.dex */
public class BuglyStrategy {

    /* renamed from: c  reason: collision with root package name */
    private String f30096c;

    /* renamed from: d  reason: collision with root package name */
    private String f30097d;

    /* renamed from: e  reason: collision with root package name */
    private String f30098e;

    /* renamed from: f  reason: collision with root package name */
    private long f30099f;

    /* renamed from: g  reason: collision with root package name */
    private String f30100g;

    /* renamed from: h  reason: collision with root package name */
    private String f30101h;

    /* renamed from: i  reason: collision with root package name */
    private String f30102i;

    /* renamed from: t  reason: collision with root package name */
    private a f30113t;

    /* renamed from: j  reason: collision with root package name */
    private boolean f30103j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f30104k = true;

    /* renamed from: l  reason: collision with root package name */
    private boolean f30105l = false;

    /* renamed from: m  reason: collision with root package name */
    private boolean f30106m = true;

    /* renamed from: n  reason: collision with root package name */
    private Class<?> f30107n = null;

    /* renamed from: o  reason: collision with root package name */
    private boolean f30108o = true;

    /* renamed from: p  reason: collision with root package name */
    private boolean f30109p = true;

    /* renamed from: q  reason: collision with root package name */
    private boolean f30110q = true;

    /* renamed from: r  reason: collision with root package name */
    private boolean f30111r = true;

    /* renamed from: s  reason: collision with root package name */
    private boolean f30112s = false;

    /* renamed from: a  reason: collision with root package name */
    protected int f30094a = 31;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f30095b = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f30114u = true;

    /* loaded from: classes4.dex */
    public static class a {
        public static final int CRASHTYPE_ANR = 4;
        public static final int CRASHTYPE_BLOCK = 7;
        public static final int CRASHTYPE_COCOS2DX_JS = 5;
        public static final int CRASHTYPE_COCOS2DX_LUA = 6;
        public static final int CRASHTYPE_JAVA_CATCH = 1;
        public static final int CRASHTYPE_JAVA_CRASH = 0;
        public static final int CRASHTYPE_NATIVE = 2;
        public static final int CRASHTYPE_U3D = 3;
        public static final int MAX_USERDATA_KEY_LENGTH = 100;
        public static final int MAX_USERDATA_VALUE_LENGTH = 100000;

        public synchronized Map<String, String> onCrashHandleStart(int i9, String str, String str2, String str3) {
            return null;
        }

        public synchronized byte[] onCrashHandleStart2GetExtraDatas(int i9, String str, String str2, String str3) {
            return null;
        }
    }

    public synchronized String getAppChannel() {
        String str = this.f30097d;
        if (str == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().f30203l;
        }
        return str;
    }

    public synchronized String getAppPackageName() {
        String str = this.f30098e;
        if (str == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().f30194c;
        }
        return str;
    }

    public synchronized long getAppReportDelay() {
        return this.f30099f;
    }

    public synchronized String getAppVersion() {
        String str = this.f30096c;
        if (str == null) {
            return com.tencent.bugly.crashreport.common.info.a.b().f30201j;
        }
        return str;
    }

    public synchronized int getCallBackType() {
        return this.f30094a;
    }

    public synchronized boolean getCloseErrorCallback() {
        return this.f30095b;
    }

    public synchronized a getCrashHandleCallback() {
        return this.f30113t;
    }

    public synchronized String getDeviceID() {
        return this.f30101h;
    }

    public synchronized String getDeviceModel() {
        return this.f30102i;
    }

    public synchronized String getLibBuglySOFilePath() {
        return this.f30100g;
    }

    public synchronized Class<?> getUserInfoActivity() {
        return this.f30107n;
    }

    public synchronized boolean isBuglyLogUpload() {
        return this.f30108o;
    }

    public synchronized boolean isEnableANRCrashMonitor() {
        return this.f30104k;
    }

    public synchronized boolean isEnableCatchAnrTrace() {
        return this.f30105l;
    }

    public synchronized boolean isEnableNativeCrashMonitor() {
        return this.f30103j;
    }

    public synchronized boolean isEnableUserInfo() {
        return this.f30106m;
    }

    public boolean isMerged() {
        return this.f30114u;
    }

    public boolean isReplaceOldChannel() {
        return this.f30109p;
    }

    public synchronized boolean isUploadProcess() {
        return this.f30110q;
    }

    public synchronized boolean isUploadSpotCrash() {
        return this.f30111r;
    }

    public synchronized boolean recordUserInfoOnceADay() {
        return this.f30112s;
    }

    public synchronized BuglyStrategy setAppChannel(String str) {
        this.f30097d = str;
        return this;
    }

    public synchronized BuglyStrategy setAppPackageName(String str) {
        this.f30098e = str;
        return this;
    }

    public synchronized BuglyStrategy setAppReportDelay(long j10) {
        this.f30099f = j10;
        return this;
    }

    public synchronized BuglyStrategy setAppVersion(String str) {
        this.f30096c = str;
        return this;
    }

    public synchronized BuglyStrategy setBuglyLogUpload(boolean z10) {
        this.f30108o = z10;
        return this;
    }

    public synchronized void setCallBackType(int i9) {
        this.f30094a = i9;
    }

    public synchronized void setCloseErrorCallback(boolean z10) {
        this.f30095b = z10;
    }

    public synchronized BuglyStrategy setCrashHandleCallback(a aVar) {
        this.f30113t = aVar;
        return this;
    }

    public synchronized BuglyStrategy setDeviceID(String str) {
        this.f30101h = str;
        return this;
    }

    public synchronized BuglyStrategy setDeviceModel(String str) {
        this.f30102i = str;
        return this;
    }

    public synchronized BuglyStrategy setEnableANRCrashMonitor(boolean z10) {
        this.f30104k = z10;
        return this;
    }

    public void setEnableCatchAnrTrace(boolean z10) {
        this.f30105l = z10;
    }

    public synchronized BuglyStrategy setEnableNativeCrashMonitor(boolean z10) {
        this.f30103j = z10;
        return this;
    }

    public synchronized BuglyStrategy setEnableUserInfo(boolean z10) {
        this.f30106m = z10;
        return this;
    }

    public synchronized BuglyStrategy setLibBuglySOFilePath(String str) {
        this.f30100g = str;
        return this;
    }

    public void setMerged(boolean z10) {
        this.f30114u = z10;
    }

    public synchronized BuglyStrategy setRecordUserInfoOnceADay(boolean z10) {
        this.f30112s = z10;
        return this;
    }

    public void setReplaceOldChannel(boolean z10) {
        this.f30109p = z10;
    }

    public synchronized BuglyStrategy setUploadProcess(boolean z10) {
        this.f30110q = z10;
        return this;
    }

    public synchronized void setUploadSpotCrash(boolean z10) {
        this.f30111r = z10;
    }

    public synchronized BuglyStrategy setUserInfoActivity(Class<?> cls) {
        this.f30107n = cls;
        return this;
    }
}
