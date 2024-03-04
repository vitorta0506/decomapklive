package com.huawei.hms.hatool;

import android.content.Context;
import android.text.TextUtils;
import java.util.LinkedHashMap;
/* loaded from: classes4.dex */
public class j1 {

    /* renamed from: a  reason: collision with root package name */
    public String f27498a;

    /* renamed from: b  reason: collision with root package name */
    public m f27499b;

    public j1(String str) {
        this.f27498a = str;
        this.f27499b = new m(str);
        i.c().a(this.f27498a, this.f27499b);
    }

    public void a(int i9) {
        y.d("hmsSdk", "onReport. TAG: " + this.f27498a + ", TYPE: " + i9);
        i1.a().a(this.f27498a, i9);
    }

    public void a(int i9, String str, LinkedHashMap<String, String> linkedHashMap) {
        y.d("hmsSdk", "onEvent. TAG: " + this.f27498a + ", TYPE: " + i9 + ", eventId : " + str);
        if (s0.a(str) || !c(i9)) {
            y.e("hmsSdk", "onEvent() parameters check fail. Nothing will be recorded.TAG: " + this.f27498a + ", TYPE: " + i9);
            return;
        }
        if (!s0.a(linkedHashMap)) {
            y.e("hmsSdk", "onEvent() parameter mapValue will be cleared.TAG: " + this.f27498a + ", TYPE: " + i9);
            linkedHashMap = null;
        }
        i1.a().a(this.f27498a, i9, str, linkedHashMap);
    }

    public void a(Context context, String str, String str2) {
        y.d("hmsSdk", "onEvent(context). TAG: " + this.f27498a + ", eventId : " + str);
        if (context == null) {
            y.e("hmsSdk", "context is null in onevent ");
        } else if (s0.a(str) || !c(0)) {
            y.e("hmsSdk", "onEvent() parameters check fail. Nothing will be recorded.TAG: " + this.f27498a);
        } else {
            if (!s0.a("value", str2, 65536)) {
                y.e("hmsSdk", "onEvent() parameter VALUE is overlong, content will be cleared.TAG: " + this.f27498a);
                str2 = "";
            }
            i1.a().a(this.f27498a, context, str, str2);
        }
    }

    public void a(k kVar) {
        y.c("hmsSdk", "HiAnalyticsInstanceImpl.setMaintConf() is executed.TAG : " + this.f27498a);
        if (kVar != null) {
            this.f27499b.a(kVar);
            return;
        }
        y.e("hmsSdk", "HiAnalyticsInstanceImpl.setMaintConf(): config for maint is null!");
        this.f27499b.a((k) null);
    }

    public final k b(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        return null;
                    }
                    return this.f27499b.a();
                }
                return this.f27499b.d();
            }
            return this.f27499b.b();
        }
        return this.f27499b.c();
    }

    public void b(k kVar) {
        y.c("hmsSdk", "HiAnalyticsInstanceImpl.setOperConf() is executed.TAG: " + this.f27498a);
        if (kVar != null) {
            this.f27499b.b(kVar);
            return;
        }
        this.f27499b.b(null);
        y.e("hmsSdk", "HiAnalyticsInstanceImpl.setOperConf(): config for oper is null!");
    }

    public final boolean c(int i9) {
        String str;
        if (i9 != 2) {
            k b10 = b(i9);
            if (b10 != null && !TextUtils.isEmpty(b10.h())) {
                return true;
            }
            str = "verifyURL(): URL check failed. type: " + i9;
        } else if ("_default_config_tag".equals(this.f27498a)) {
            return true;
        } else {
            str = "verifyURL(): type: preins. Only default config can report Pre-install data.";
        }
        y.e("hmsSdk", str);
        return false;
    }
}
