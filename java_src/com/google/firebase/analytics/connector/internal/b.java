package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.coroutines.DebugKt;
import p4.r;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Set f13812a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b  reason: collision with root package name */
    private static final List f13813b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c  reason: collision with root package name */
    private static final List f13814c = Arrays.asList(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "am");

    /* renamed from: d  reason: collision with root package name */
    private static final List f13815d = Arrays.asList("_r", "_dbg");

    /* renamed from: e  reason: collision with root package name */
    private static final List f13816e = Arrays.asList((String[]) e4.b.a(r.f56740a, r.f56741b));

    /* renamed from: f  reason: collision with root package name */
    private static final List f13817f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    public static void a(String str, String str2, Bundle bundle) {
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
    }

    public static boolean b(String str, String str2, Bundle bundle) {
        char c10;
        if ("_cmp".equals(str2)) {
            if (d(str) && bundle != null) {
                for (String str3 : f13815d) {
                    if (bundle.containsKey(str3)) {
                        return false;
                    }
                }
                int hashCode = str.hashCode();
                if (hashCode == 101200) {
                    if (str.equals("fcm")) {
                        c10 = 0;
                    }
                    c10 = 65535;
                } else if (hashCode != 101230) {
                    if (hashCode == 3142703 && str.equals("fiam")) {
                        c10 = 2;
                    }
                    c10 = 65535;
                } else {
                    if (str.equals("fdl")) {
                        c10 = 1;
                    }
                    c10 = 65535;
                }
                if (c10 == 0) {
                    bundle.putString("_cis", "fcm_integration");
                    return true;
                } else if (c10 == 1) {
                    bundle.putString("_cis", "fdl_integration");
                    return true;
                } else if (c10 != 2) {
                    return false;
                } else {
                    bundle.putString("_cis", "fiam_integration");
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public static boolean c(String str, Bundle bundle) {
        if (f13813b.contains(str)) {
            return false;
        }
        if (bundle != null) {
            for (String str2 : f13815d) {
                if (bundle.containsKey(str2)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    public static boolean d(String str) {
        return !f13814c.contains(str);
    }

    public static boolean e(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        } else if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        } else if (f13816e.contains(str2)) {
            return false;
        } else {
            for (String str3 : f13817f) {
                if (str2.matches(str3)) {
                    return false;
                }
            }
            return true;
        }
    }
}
