package com.guochao.faceshow.aaspring.modulars.googlepay;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.m;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class i {

    /* renamed from: d  reason: collision with root package name */
    private static i f18035d;

    /* renamed from: b  reason: collision with root package name */
    private d.x f18037b;

    /* renamed from: a  reason: collision with root package name */
    private String f18036a = null;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Long> f18038c = new HashMap();

    private i() {
    }

    public static i e() {
        if (f18035d == null) {
            synchronized (i.class) {
                if (f18035d == null) {
                    f18035d = new i();
                }
            }
        }
        return f18035d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(com.android.billingclient.api.e eVar, List list) {
        if (list == null) {
            return;
        }
        d.Z().r0(list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SkuDetails skuDetails = (SkuDetails) it.next();
            String str = null;
            try {
                str = skuDetails.f();
            } catch (Exception unused) {
            }
            if (str != null && !TextUtils.isEmpty(skuDetails.e())) {
                this.f18036a = skuDetails.e();
                j();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(boolean z10) {
        if (z10) {
            d.Z().V(new m() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.g
                @Override // com.android.billingclient.api.m
                public final void a(com.android.billingclient.api.e eVar, List list) {
                    i.this.g(eVar, list);
                }
            });
        }
    }

    private void j() {
        if (this.f18037b != null) {
            d.Z().I0(this.f18037b);
        }
    }

    public boolean c(String str) {
        Long l10 = this.f18038c.get(str);
        return l10 == null || l10.longValue() <= 0 || System.currentTimeMillis() - l10.longValue() > 180000;
    }

    @Nullable
    public String d() {
        return this.f18036a;
    }

    public void f() {
        this.f18037b = new d.x() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.h
            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
            public /* synthetic */ void onConsumeResponse() {
                f.a(this);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
            public /* synthetic */ void onPayError(Throwable th2) {
                f.b(this, th2);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
            public /* synthetic */ void onPayResponse() {
                f.c(this);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
            public final void onSetupResponse(boolean z10) {
                i.this.h(z10);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
            public /* synthetic */ void onSubscribeFailed() {
                f.d(this);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
            public /* synthetic */ void onSubscribeSuccess() {
                f.e(this);
            }

            @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
            public /* synthetic */ void startSubscribe() {
                f.f(this);
            }
        };
        d.Z().u0(this.f18037b);
    }

    public void i(String str) {
        this.f18038c.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    public void k(String str) {
        this.f18038c.remove(str);
    }
}
