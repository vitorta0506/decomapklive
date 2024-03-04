package com.huawei.hms.framework.network.grs.f;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27342a = "e";

    /* renamed from: b  reason: collision with root package name */
    public static final Set<String> f27343b = Collections.unmodifiableSet(new a(16));

    /* loaded from: classes4.dex */
    static class a extends HashSet<String> {
        a(int i9) {
            super(i9);
            add("ser_country");
            add("reg_country");
            add("issue_country");
            add("geo_ip");
        }
    }

    private static String a(Context context, com.huawei.hms.framework.network.grs.e.a aVar, String str, GrsBaseInfo grsBaseInfo, boolean z10) {
        String[] split;
        String str2;
        StringBuilder sb2;
        String str3;
        String serCountry = grsBaseInfo.getSerCountry();
        String regCountry = grsBaseInfo.getRegCountry();
        String issueCountry = grsBaseInfo.getIssueCountry();
        for (String str4 : str.split(">")) {
            if (f27343b.contains(str4.trim())) {
                if ("ser_country".equals(str4.trim()) && !TextUtils.isEmpty(serCountry) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(serCountry)) {
                    str2 = f27342a;
                    sb2 = new StringBuilder();
                    str3 = "current route_by is serCountry and routerCountry is:";
                } else if ("reg_country".equals(str4.trim()) && !TextUtils.isEmpty(regCountry) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(regCountry)) {
                    Logger.i(f27342a, "current route_by is regCountry and routerCountry is:" + regCountry);
                    return regCountry;
                } else if ("issue_country".equals(str4.trim()) && !TextUtils.isEmpty(issueCountry) && !GrsBaseInfo.CountryCodeSource.UNKNOWN.equals(issueCountry)) {
                    Logger.i(f27342a, "current route_by is issueCountry and routerCountry is:" + issueCountry);
                    return issueCountry;
                } else if ("geo_ip".equals(str4.trim())) {
                    serCountry = new com.huawei.hms.framework.network.grs.g.b(context, aVar, grsBaseInfo).a(z10);
                    str2 = f27342a;
                    sb2 = new StringBuilder();
                    str3 = "current route_by is geo_ip and routerCountry is: ";
                }
                sb2.append(str3);
                sb2.append(serCountry);
                Logger.i(str2, sb2.toString());
                return serCountry;
            }
        }
        return "";
    }

    public static String b(Context context, com.huawei.hms.framework.network.grs.e.a aVar, String str, GrsBaseInfo grsBaseInfo, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            Logger.w(f27342a, "routeBy must be not empty string or null.");
            return null;
        } else if ("no_route".equals(str) || "unconditional".equals(str)) {
            Logger.v(f27342a, "routeBy equals NO_ROUTE_POLICY");
            return "no_route_country";
        } else {
            return a(context, aVar, str, grsBaseInfo, z10);
        }
    }
}
