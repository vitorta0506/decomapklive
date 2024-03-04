package com.huawei.hms.framework.network.grs;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.g.h;
import com.huawei.hms.framework.network.grs.local.model.CountryCodeBean;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static final String f27288e = "a";

    /* renamed from: a  reason: collision with root package name */
    private final GrsBaseInfo f27289a;

    /* renamed from: b  reason: collision with root package name */
    private com.huawei.hms.framework.network.grs.e.a f27290b;

    /* renamed from: c  reason: collision with root package name */
    private h f27291c;

    /* renamed from: d  reason: collision with root package name */
    private com.huawei.hms.framework.network.grs.e.c f27292d;

    /* renamed from: com.huawei.hms.framework.network.grs.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0273a implements com.huawei.hms.framework.network.grs.b {

        /* renamed from: a  reason: collision with root package name */
        String f27293a;

        /* renamed from: b  reason: collision with root package name */
        Map<String, String> f27294b;

        /* renamed from: c  reason: collision with root package name */
        IQueryUrlsCallBack f27295c;

        /* renamed from: d  reason: collision with root package name */
        Context f27296d;

        /* renamed from: e  reason: collision with root package name */
        GrsBaseInfo f27297e;

        /* renamed from: f  reason: collision with root package name */
        com.huawei.hms.framework.network.grs.e.a f27298f;

        C0273a(String str, Map<String, String> map, IQueryUrlsCallBack iQueryUrlsCallBack, Context context, GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.e.a aVar) {
            this.f27293a = str;
            this.f27294b = map;
            this.f27295c = iQueryUrlsCallBack;
            this.f27296d = context;
            this.f27297e = grsBaseInfo;
            this.f27298f = aVar;
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a() {
            Map<String, String> map = this.f27294b;
            if (map != null && !map.isEmpty()) {
                Logger.i(a.f27288e, "get expired cache localUrls");
                this.f27295c.onCallBackSuccess(this.f27294b);
            } else if (this.f27294b != null) {
                this.f27295c.onCallBackFail(-3);
            } else {
                Logger.i(a.f27288e, "access local config for return a domain.");
                this.f27295c.onCallBackSuccess(com.huawei.hms.framework.network.grs.f.b.a(this.f27296d.getPackageName(), this.f27297e).a(this.f27296d, this.f27298f, this.f27297e, this.f27293a, true));
            }
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a(com.huawei.hms.framework.network.grs.g.d dVar) {
            Map<String, String> a10 = a.a(dVar.j(), this.f27293a);
            if (a10.isEmpty()) {
                Map<String, String> map = this.f27294b;
                if (map != null && !map.isEmpty()) {
                    Logger.i(a.f27288e, "get expired cache localUrls");
                    this.f27295c.onCallBackSuccess(this.f27294b);
                    return;
                } else if (this.f27294b != null) {
                    this.f27295c.onCallBackFail(-5);
                    return;
                } else {
                    Logger.i(a.f27288e, "access local config for return a domain.");
                    a10 = com.huawei.hms.framework.network.grs.f.b.a(this.f27296d.getPackageName(), this.f27297e).a(this.f27296d, this.f27298f, this.f27297e, this.f27293a, true);
                }
            } else {
                Logger.i(a.f27288e, "get url is from remote server");
            }
            this.f27295c.onCallBackSuccess(a10);
        }
    }

    /* loaded from: classes4.dex */
    private static class b implements com.huawei.hms.framework.network.grs.b {

        /* renamed from: a  reason: collision with root package name */
        String f27299a;

        /* renamed from: b  reason: collision with root package name */
        String f27300b;

        /* renamed from: c  reason: collision with root package name */
        IQueryUrlCallBack f27301c;

        /* renamed from: d  reason: collision with root package name */
        String f27302d;

        /* renamed from: e  reason: collision with root package name */
        Context f27303e;

        /* renamed from: f  reason: collision with root package name */
        GrsBaseInfo f27304f;

        /* renamed from: g  reason: collision with root package name */
        com.huawei.hms.framework.network.grs.e.a f27305g;

        b(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack, String str3, Context context, GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.e.a aVar) {
            this.f27299a = str;
            this.f27300b = str2;
            this.f27301c = iQueryUrlCallBack;
            this.f27302d = str3;
            this.f27303e = context;
            this.f27304f = grsBaseInfo;
            this.f27305g = aVar;
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a() {
            if (!TextUtils.isEmpty(this.f27302d)) {
                Logger.i(a.f27288e, "get expired cache localUrl");
                this.f27301c.onCallBackSuccess(this.f27302d);
            } else if (!TextUtils.isEmpty(this.f27302d)) {
                this.f27301c.onCallBackFail(-3);
            } else {
                Logger.i(a.f27288e, "access local config for return a domain.");
                this.f27301c.onCallBackSuccess(com.huawei.hms.framework.network.grs.f.b.a(this.f27303e.getPackageName(), this.f27304f).a(this.f27303e, this.f27305g, this.f27304f, this.f27299a, this.f27300b, true));
            }
        }

        @Override // com.huawei.hms.framework.network.grs.b
        public void a(com.huawei.hms.framework.network.grs.g.d dVar) {
            String a10;
            IQueryUrlCallBack iQueryUrlCallBack;
            Map<String, String> a11 = a.a(dVar.j(), this.f27299a);
            if (a11.containsKey(this.f27300b)) {
                Logger.i(a.f27288e, "get url is from remote server");
                iQueryUrlCallBack = this.f27301c;
                a10 = a11.get(this.f27300b);
            } else if (!TextUtils.isEmpty(this.f27302d)) {
                Logger.i(a.f27288e, "get expired cache localUrl");
                this.f27301c.onCallBackSuccess(this.f27302d);
                return;
            } else if (!TextUtils.isEmpty(this.f27302d)) {
                this.f27301c.onCallBackFail(-5);
                return;
            } else {
                Logger.i(a.f27288e, "access local config for return a domain.");
                a10 = com.huawei.hms.framework.network.grs.f.b.a(this.f27303e.getPackageName(), this.f27304f).a(this.f27303e, this.f27305g, this.f27304f, this.f27299a, this.f27300b, true);
                iQueryUrlCallBack = this.f27301c;
            }
            iQueryUrlCallBack.onCallBackSuccess(a10);
        }
    }

    public a(GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.e.a aVar, h hVar, com.huawei.hms.framework.network.grs.e.c cVar) {
        this.f27289a = grsBaseInfo;
        this.f27290b = aVar;
        this.f27291c = hVar;
        this.f27292d = cVar;
    }

    public static CountryCodeBean a(Context context, boolean z10) {
        return new CountryCodeBean(context, z10);
    }

    public static Map<String, Map<String, String>> a(String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(16);
        if (TextUtils.isEmpty(str)) {
            Logger.v(f27288e, "isSpExpire jsonValue is null.");
            return concurrentHashMap;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (!TextUtils.isEmpty(next)) {
                    concurrentHashMap.put(next, a(jSONObject2));
                }
            }
            return concurrentHashMap;
        } catch (JSONException e10) {
            Logger.w(f27288e, "getServicesUrlsMap occur a JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return concurrentHashMap;
        }
    }

    private Map<String, String> a(String str, com.huawei.hms.framework.network.grs.e.b bVar, Context context) {
        Map<String, String> a10 = this.f27290b.a(this.f27289a, str, bVar, context);
        if (a10 == null || a10.isEmpty()) {
            Map<String, String> a11 = com.huawei.hms.framework.network.grs.f.b.a(context.getPackageName(), this.f27289a).a(context, this.f27290b, this.f27289a, str, false);
            return a11 != null ? a11 : new HashMap();
        }
        com.huawei.hms.framework.network.grs.f.b.a(context, this.f27289a);
        return a10;
    }

    public static Map<String, String> a(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str)) {
            Logger.w(f27288e, "isSpExpire jsonValue from server is null.");
            return hashMap;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.has(str2) ? jSONObject.getJSONObject(str2) : null;
            if (jSONObject2 == null) {
                Logger.w(f27288e, "getServiceNameUrls: paser null from server json data by {%s}.", str2);
                return hashMap;
            }
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject2.get(next).toString());
            }
            return hashMap;
        } catch (JSONException e10) {
            Logger.w(f27288e, "Method{getServiceNameUrls} query url from SP occur an JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return hashMap;
        }
    }

    public static Map<String, String> a(JSONObject jSONObject) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(16);
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                String obj = jSONObject.get(next).toString();
                if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(obj)) {
                    concurrentHashMap.put(next, obj);
                }
            }
            return concurrentHashMap;
        } catch (JSONException e10) {
            Logger.w(f27288e, "getServiceUrls occur a JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
            return concurrentHashMap;
        }
    }

    public String a(Context context, String str) {
        com.huawei.hms.framework.network.grs.g.d a10 = this.f27291c.a(new com.huawei.hms.framework.network.grs.g.k.c(this.f27289a, context), str, this.f27292d);
        return a10 == null ? "" : a10.m() ? this.f27290b.a().a(this.f27289a.getGrsParasKey(true, true, context), "") : a10.j();
    }

    public String a(String str, String str2, Context context) {
        com.huawei.hms.framework.network.grs.e.b bVar = new com.huawei.hms.framework.network.grs.e.b();
        String str3 = a(str, bVar, context).get(str2);
        if (bVar.a() && !TextUtils.isEmpty(str3)) {
            Logger.i(f27288e, "get unexpired cache localUrl: %s", StringUtils.anonymizeMessage(str3));
            com.huawei.hms.framework.network.grs.f.b.a(context, this.f27289a);
            return str3;
        }
        String str4 = a(a(context, str), str).get(str2);
        if (!TextUtils.isEmpty(str4)) {
            Logger.i(f27288e, "get url is from remote server");
            com.huawei.hms.framework.network.grs.f.b.a(context, this.f27289a);
            return str4;
        }
        if (TextUtils.isEmpty(str3)) {
            Logger.i(f27288e, "access local config for return a domain.");
            str3 = com.huawei.hms.framework.network.grs.f.b.a(context.getPackageName(), this.f27289a).a(context, this.f27290b, this.f27289a, str, str2, true);
        } else {
            Logger.i(f27288e, "get expired cache localUrl");
        }
        Logger.i(f27288e, "synGetGrsUrl: %s", StringUtils.anonymizeMessage(str3));
        return str3;
    }

    public Map<String, String> a(String str, Context context) {
        com.huawei.hms.framework.network.grs.e.b bVar = new com.huawei.hms.framework.network.grs.e.b();
        Map<String, String> a10 = a(str, bVar, context);
        if (bVar.a() && !a10.isEmpty()) {
            Logger.i(f27288e, "get unexpired cache localUrls: %s", StringUtils.anonymizeMessage(new JSONObject(a10).toString()));
            com.huawei.hms.framework.network.grs.f.b.a(context, this.f27289a);
            return a10;
        }
        Map<String, String> a11 = a(a(context, str), str);
        if (!a11.isEmpty()) {
            Logger.i(f27288e, "get url is from remote server");
            com.huawei.hms.framework.network.grs.f.b.a(context, this.f27289a);
            return a11;
        }
        if (a10.isEmpty()) {
            Logger.i(f27288e, "access local config for return a domain.");
            a10 = com.huawei.hms.framework.network.grs.f.b.a(context.getPackageName(), this.f27289a).a(context, this.f27290b, this.f27289a, str, true);
        } else {
            Logger.i(f27288e, "get expired cache localUrls");
        }
        String str2 = f27288e;
        Object[] objArr = new Object[1];
        objArr[0] = StringUtils.anonymizeMessage(a10 != null ? new JSONObject(a10).toString() : "");
        Logger.i(str2, "synGetGrsUrls: %s", objArr);
        return a10;
    }

    public void a(String str, IQueryUrlsCallBack iQueryUrlsCallBack, Context context) {
        com.huawei.hms.framework.network.grs.e.b bVar = new com.huawei.hms.framework.network.grs.e.b();
        Map<String, String> a10 = a(str, bVar, context);
        if (!bVar.a()) {
            this.f27291c.a(new com.huawei.hms.framework.network.grs.g.k.c(this.f27289a, context), new C0273a(str, a10, iQueryUrlsCallBack, context, this.f27289a, this.f27290b), str, this.f27292d);
            return;
        }
        String str2 = f27288e;
        Logger.i(str2, "get unexpired cache localUrls");
        if (a10.isEmpty()) {
            iQueryUrlsCallBack.onCallBackFail(-5);
            return;
        }
        com.huawei.hms.framework.network.grs.f.b.a(context, this.f27289a);
        Logger.i(str2, "ayncGetGrsUrls: %s", StringUtils.anonymizeMessage(new JSONObject(a10).toString()));
        iQueryUrlsCallBack.onCallBackSuccess(a10);
    }

    public void a(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack, Context context) {
        com.huawei.hms.framework.network.grs.e.b bVar = new com.huawei.hms.framework.network.grs.e.b();
        String str3 = a(str, bVar, context).get(str2);
        if (!bVar.a()) {
            this.f27291c.a(new com.huawei.hms.framework.network.grs.g.k.c(this.f27289a, context), new b(str, str2, iQueryUrlCallBack, str3, context, this.f27289a, this.f27290b), str, this.f27292d);
            return;
        }
        String str4 = f27288e;
        Logger.i(str4, "get unexpired cache localUrl");
        if (TextUtils.isEmpty(str3)) {
            iQueryUrlCallBack.onCallBackFail(-5);
            return;
        }
        com.huawei.hms.framework.network.grs.f.b.a(context, this.f27289a);
        Logger.i(str4, "ayncGetGrsUrl: %s", StringUtils.anonymizeMessage(str3));
        iQueryUrlCallBack.onCallBackSuccess(str3);
    }
}
