package com.huawei.hms.stats;

import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f27786a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static boolean f27787b = false;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f27788c = false;

    public static boolean a() {
        synchronized (f27786a) {
            if (!f27787b) {
                try {
                    Class.forName("com.huawei.hianalytics.process.HiAnalyticsInstance");
                } catch (ClassNotFoundException unused) {
                    HMSLog.i("HianalyticsExist", "In isHianalyticsExist, Failed to find class HiAnalyticsConfig.");
                }
                f27787b = true;
                HMSLog.i("HianalyticsExist", "hianalytics exist: " + f27788c);
            }
        }
        return f27788c;
    }
}
