package com.huawei.hms.framework.network.grs.h;

import com.huawei.hms.framework.common.Logger;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27427a = "e";

    public static boolean a(Long l10) {
        if (l10 == null) {
            Logger.v(f27427a, "Method isTimeExpire input param expireTime is null.");
            return true;
        }
        try {
        } catch (NumberFormatException unused) {
            Logger.v(f27427a, "isSpExpire spValue NumberFormatException.");
        }
        if (l10.longValue() - System.currentTimeMillis() >= 0) {
            Logger.i(f27427a, "isSpExpire false.");
            return false;
        }
        Logger.i(f27427a, "isSpExpire true.");
        return true;
    }

    public static boolean a(Long l10, long j10) {
        if (l10 == null) {
            Logger.v(f27427a, "Method isTimeWillExpire input param expireTime is null.");
            return true;
        }
        try {
            if (l10.longValue() - (System.currentTimeMillis() + j10) >= 0) {
                Logger.v(f27427a, "isSpExpire false.");
                return false;
            }
        } catch (NumberFormatException unused) {
            Logger.v(f27427a, "isSpExpire spValue NumberFormatException.");
        }
        return true;
    }
}
