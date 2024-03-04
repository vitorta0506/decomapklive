package com.huawei.hms.framework.network.grs.g;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import org.json.JSONException;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f27356a;

    /* renamed from: b  reason: collision with root package name */
    private final GrsBaseInfo f27357b;

    /* renamed from: c  reason: collision with root package name */
    private final com.huawei.hms.framework.network.grs.e.a f27358c;

    public b(Context context, com.huawei.hms.framework.network.grs.e.a aVar, GrsBaseInfo grsBaseInfo) {
        this.f27356a = context;
        this.f27357b = grsBaseInfo;
        this.f27358c = aVar;
    }

    public String a(boolean z10) {
        String str;
        String str2 = com.huawei.hms.framework.network.grs.a.a(this.f27358c.a().a("geoipCountryCode", ""), "geoip.countrycode").get("ROOT");
        Logger.i("GeoipCountry", "geoIpCountry is: " + str2);
        String a10 = this.f27358c.a().a("geoipCountryCodetime", "0");
        long j10 = 0;
        if (!TextUtils.isEmpty(a10) && a10.matches("\\d+")) {
            try {
                j10 = Long.parseLong(a10);
            } catch (NumberFormatException e10) {
                Logger.w("GeoipCountry", "convert urlParamKey from String to Long catch NumberFormatException.", e10);
            }
        }
        if (TextUtils.isEmpty(str2) || com.huawei.hms.framework.network.grs.h.e.a(Long.valueOf(j10))) {
            com.huawei.hms.framework.network.grs.g.k.c cVar = new com.huawei.hms.framework.network.grs.g.k.c(this.f27357b, this.f27356a);
            cVar.a("geoip.countrycode");
            com.huawei.hms.framework.network.grs.e.c c10 = this.f27358c.c();
            if (c10 != null) {
                try {
                    str = i.a(c10.a("services", ""), cVar.c());
                } catch (JSONException e11) {
                    Logger.w("GeoipCountry", "getGeoipCountry merge services occure jsonException. %s", StringUtils.anonymizeMessage(e11.getMessage()));
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    c10.b("services", str);
                }
            }
            if (z10) {
                d a11 = this.f27358c.b().a(cVar, "geoip.countrycode", c10);
                if (a11 != null) {
                    str2 = com.huawei.hms.framework.network.grs.a.a(a11.j(), "geoip.countrycode").get("ROOT");
                }
                Logger.i("GeoipCountry", "sync request to query geoip.countrycode is:" + str2);
            } else {
                Logger.i("GeoipCountry", "async request to query geoip.countrycode");
                this.f27358c.b().a(cVar, null, "geoip.countrycode", c10);
            }
        }
        return str2;
    }
}
