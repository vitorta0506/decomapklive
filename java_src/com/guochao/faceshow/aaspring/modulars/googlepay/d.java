package com.guochao.faceshow.aaspring.modulars.googlepay;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchaseHistoryRecord;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.d;
import com.android.billingclient.api.l;
import com.facebook.internal.NativeProtocol;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.GooglePlayPurchaseResult;
import com.guochao.faceshow.aaspring.beans.SubStateBean;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.utils.AppsFlyerPayUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.push.CustomPushReceiver;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.e;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class d implements com.android.billingclient.api.k, com.android.billingclient.api.g {

    /* renamed from: u  reason: collision with root package name */
    public static String f17928u = "GOOGLE_PLAY_SIGN";

    /* renamed from: v  reason: collision with root package name */
    private static d f17929v;

    /* renamed from: w  reason: collision with root package name */
    public static final String f17930w;

    /* renamed from: a  reason: collision with root package name */
    private String f17931a = d.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private com.android.billingclient.api.a f17932b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17933c;

    /* renamed from: d  reason: collision with root package name */
    private String f17934d;

    /* renamed from: e  reason: collision with root package name */
    private int f17935e;

    /* renamed from: f  reason: collision with root package name */
    private GooglePayOrderViewModel f17936f;

    /* renamed from: g  reason: collision with root package name */
    private List<String> f17937g;

    /* renamed from: h  reason: collision with root package name */
    private String[] f17938h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f17939i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f17940j;

    /* renamed from: k  reason: collision with root package name */
    private int f17941k;

    /* renamed from: l  reason: collision with root package name */
    private String f17942l;

    /* renamed from: m  reason: collision with root package name */
    private int f17943m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f17944n;

    /* renamed from: o  reason: collision with root package name */
    private String f17945o;

    /* renamed from: p  reason: collision with root package name */
    private int f17946p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f17947q;

    /* renamed from: r  reason: collision with root package name */
    private final CopyOnWriteArrayList<x> f17948r;

    /* renamed from: s  reason: collision with root package name */
    private List<SkuDetails> f17949s;

    /* renamed from: t  reason: collision with root package name */
    private List<SkuDetails> f17950t;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i9 = 0; i9 < d.this.f17948r.size(); i9++) {
                ((x) d.this.f17948r.get(i9)).onSubscribeSuccess();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i9 = 0; i9 < d.this.f17948r.size(); i9++) {
                ((x) d.this.f17948r.get(i9)).onSubscribeFailed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GooglePlayPurchaseResult f17953a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17954b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f17955c;

        c(GooglePlayPurchaseResult googlePlayPurchaseResult, String str, int i9) {
            this.f17953a = googlePlayPurchaseResult;
            this.f17954b = str;
            this.f17955c = i9;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.google_pay_error);
            Bundle bundle = new Bundle();
            bundle.putString(NativeProtocol.WEB_DIALOG_PARAMS, this.f17955c == 0 ? "正常完成订单失败" : "进入app重试完成订单失败");
            String str = EventTrackingV2Utils.g_pay_after_server_fail;
            bundle.putInt(str, aVar.a());
            EventTrackingV2Utils.INSTANCE.track(str, bundle);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            u7.c.c().a(this.f17953a.getUserId(), this.f17953a.getSignture(), this.f17953a.getSigntureData());
            if (!d.this.f17948r.isEmpty()) {
                Iterator it = d.this.f17948r.iterator();
                while (it.hasNext()) {
                    ((x) it.next()).onPayResponse();
                }
            }
            p9.a.g().o();
            Bundle bundle = new Bundle();
            bundle.putString(EventTrackingUtils.ITEM_ID, b8.e.g().getUserId());
            bundle.putString(EventTrackingUtils.ITEM_NAME, SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_NICKNAME));
            bundle.putString(EventTrackingUtils.CONTENT_TYPE, "googlepay");
            bundle.putString("sceneType", this.f17954b);
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(EventTrackingUtils.GOOGLE_COMPLETE_PURCHASE, bundle);
            Bundle bundle2 = new Bundle();
            String str2 = EventTrackingV2Utils.g_pay_after_server_success;
            bundle2.putString(str2, this.f17955c == 0 ? "正常完成订单成功" : "进入app重试完成订单成功");
            eventTrackingV2Utils.track(str2, bundle2);
            b8.e.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.modulars.googlepay.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0174d implements com.android.billingclient.api.i {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f17957a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y f17958b;

        /* renamed from: com.guochao.faceshow.aaspring.modulars.googlepay.d$d$a */
        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SubStateBean>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f17960a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ boolean f17961b;

            a(List list, boolean z10) {
                this.f17960a = list;
                this.f17961b = z10;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<List<SubStateBean>> aVar) {
                C0174d c0174d = C0174d.this;
                y yVar = c0174d.f17958b;
                if (yVar == null || !this.f17961b) {
                    return;
                }
                d.this.L0(c0174d.f17957a, yVar);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<SubStateBean> list, @NonNull FaceCastBaseResponse<List<SubStateBean>> faceCastBaseResponse) {
                if (list == null) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                for (PurchaseHistoryRecord purchaseHistoryRecord : this.f17960a) {
                    for (SubStateBean subStateBean : list) {
                        if (subStateBean != null && purchaseHistoryRecord.c().equals(subStateBean.getPurchaseToken()) && !purchaseHistoryRecord.e().isEmpty()) {
                            C0174d.this.f17957a.put(purchaseHistoryRecord.e().get(0), subStateBean);
                        }
                    }
                }
                d.this.p0(this.f17960a);
                C0174d c0174d = C0174d.this;
                y yVar = c0174d.f17958b;
                if (yVar != null) {
                    yVar.a(c0174d.f17957a);
                    C0174d c0174d2 = C0174d.this;
                    d.this.R(c0174d2.f17957a);
                }
            }
        }

        C0174d(Map map, y yVar) {
            this.f17957a = map;
            this.f17958b = yVar;
        }

        @Override // com.android.billingclient.api.i
        public void a(@NonNull com.android.billingclient.api.e eVar, @Nullable List<PurchaseHistoryRecord> list) {
            String str = d.this.f17931a;
            LogUtils.i(str, "queryPurchaseHistoryAsync = " + GsonGetter.getGson().toJson(list));
            if (list != null && !list.isEmpty()) {
                boolean J = d.this.J(list);
                if (!J) {
                    d.this.L0(this.f17957a, this.f17958b);
                }
                ArrayList arrayList = new ArrayList();
                for (PurchaseHistoryRecord purchaseHistoryRecord : list) {
                    arrayList.add(purchaseHistoryRecord.c());
                }
                d.this.Q(arrayList, new a(list, J));
                return;
            }
            d.this.L0(this.f17957a, this.f17958b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends TypeToken<Map<String, SubStateBean>> {
        e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends TypeToken<Map<String, String>> {
        f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<String> aVar) {
            d.this.U();
            if (aVar.a() == 0 && "You have opened".equals(aVar.c())) {
                com.guochao.faceshow.aaspring.manager.b.g("pay", "SubPurchase", "");
                ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.vip_mall_sub_success);
                return;
            }
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.google_pay_sub_failed);
            if (d.this.f17948r != null) {
                Iterator it = d.this.f17948r.iterator();
                while (it.hasNext()) {
                    ((x) it.next()).onSubscribeFailed();
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            if ("1".equals(str)) {
                d.this.U();
                com.guochao.faceshow.aaspring.manager.b.g("pay", "SubPurchase", "");
                ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.vip_mall_sub_success);
                if (d.this.f17948r != null) {
                    Iterator it = d.this.f17948r.iterator();
                    while (it.hasNext()) {
                        ((x) it.next()).onSubscribeSuccess();
                    }
                    return;
                }
                return;
            }
            onFailure(new g7.a<>(new Exception(str), -1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements com.android.billingclient.api.m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17966a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f17967b;

        h(String str, String str2) {
            this.f17966a = str;
            this.f17967b = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(List list, String str, String str2) {
            if (list != null && !list.isEmpty()) {
                d.this.F0(list, 0, str, str2);
                return;
            }
            ToastUtils.showToast(BaseApplication.getInstance(), TextUtils.isEmpty(d.this.f17934d) ? BaseApplication.getInstance().getString(R.string.google_pay_failed) : d.this.f17934d);
            d.this.l0();
        }

        @Override // com.android.billingclient.api.m
        public void a(@NonNull com.android.billingclient.api.e eVar, @Nullable final List<SkuDetails> list) {
            Handler mainHandler = HandlerGetter.getMainHandler();
            final String str = this.f17966a;
            final String str2 = this.f17967b;
            mainHandler.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.e
                @Override // java.lang.Runnable
                public final void run() {
                    d.h.this.c(list, str, str2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements com.android.billingclient.api.j {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f17969a;

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<List<SubStateBean>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f17971a;

            a(List list) {
                this.f17971a = list;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<List<SubStateBean>> aVar) {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable List<SubStateBean> list, @NonNull FaceCastBaseResponse<List<SubStateBean>> faceCastBaseResponse) {
                if (list != null && !list.isEmpty()) {
                    if (b8.e.g().c().getUserVipMsg().getIsVip() > 0) {
                        d.this.y0();
                        return;
                    } else {
                        d.this.f17936f.checkHistorySubscribe(this.f17971a);
                        return;
                    }
                }
                onFailure(new g7.a<>(new Exception(""), -1));
            }
        }

        i(boolean z10) {
            this.f17969a = z10;
        }

        @Override // com.android.billingclient.api.j
        public void a(@NonNull com.android.billingclient.api.e eVar, @NonNull List<Purchase> list) {
            if (this.f17969a) {
                d.this.H0();
                String str = d.this.f17931a;
                LogUtils.i(str, "result = " + GsonGetter.getGson().toJson(list));
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (list != null) {
                    for (Purchase purchase : list) {
                        String d10 = purchase.d();
                        if (!purchase.g()) {
                            arrayList.add(d10);
                            arrayList2.add(purchase);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                d.this.Q(arrayList, new a(arrayList2));
            }
        }
    }

    /* loaded from: classes3.dex */
    class j extends TypeToken<List<String>> {
        j() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements Runnable {

        /* loaded from: classes3.dex */
        class a implements e.a {
            a() {
            }

            @Override // com.guochao.faceshow.views.e.a
            public void onClick(Dialog dialog, boolean z10) {
                dialog.dismiss();
                if (z10) {
                    Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                    if (currTopActivity == null) {
                        currTopActivity = dialog.getOwnerActivity();
                    }
                    ChooseLoginTypeActivity.start(currTopActivity);
                }
            }

            @Override // com.guochao.faceshow.views.e.a
            public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
                com.guochao.faceshow.views.d.a(this, eVar);
            }
        }

        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BaseApplication.getInstance().getCurrTopActivity() == null) {
                return;
            }
            com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(BaseApplication.getInstance().getCurrTopActivity(), new a());
            eVar.b(BaseApplication.getInstance().getResources().getString(R.string.vip_mall_user_account_switch_vip));
            eVar.k(BaseApplication.getInstance().getResources().getString(R.string.vip_mall_switch));
            eVar.i(BaseApplication.getInstance().getResources().getString(R.string.skip));
            eVar.show();
        }
    }

    /* loaded from: classes3.dex */
    class l extends TypeToken<List<SkuDetails>> {
        l() {
        }
    }

    /* loaded from: classes3.dex */
    class m extends TypeToken<List<SkuDetails>> {
        m() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class n extends TypeToken<List<PurchaseHistoryRecord>> {
        n() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class o extends TypeToken<List<PurchaseHistoryRecord>> {
        o() {
        }
    }

    /* loaded from: classes3.dex */
    class p extends TypeToken<List<String>> {
        p() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q implements com.android.billingclient.api.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f17981a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f17982b;

        /* loaded from: classes3.dex */
        class a extends SimpleObserver<Boolean> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ com.android.billingclient.api.e f17984a;

            a(com.android.billingclient.api.e eVar) {
                this.f17984a = eVar;
            }

            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            /* renamed from: a */
            public void onNext(@NotNull Boolean bool) {
                super.onNext(bool);
                if (q.this.f17982b == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("errorCode", String.valueOf(this.f17984a.b()));
                    bundle.putString("isChina", String.valueOf(bool));
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingUtils.GOOGLE_CONNECT_ERROR, bundle);
                }
                if (bool.booleanValue()) {
                    q qVar = q.this;
                    d.this.G0(qVar.f17981a, qVar.f17982b + 1);
                }
            }
        }

        /* loaded from: classes3.dex */
        class b extends SimpleObserver<Boolean> {
            b() {
            }

            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            /* renamed from: a */
            public void onNext(@NotNull Boolean bool) {
                super.onNext(bool);
                if (q.this.f17982b == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("errorCode", "-1000");
                    bundle.putString("isChina", String.valueOf(bool));
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingUtils.GOOGLE_CONNECT_ERROR, bundle);
                }
                if (bool.booleanValue()) {
                    q qVar = q.this;
                    d.this.G0(qVar.f17981a, qVar.f17982b + 1);
                }
            }
        }

        q(boolean z10, int i9) {
            this.f17981a = z10;
            this.f17982b = i9;
        }

        @Override // com.android.billingclient.api.c
        public void a(@NonNull com.android.billingclient.api.e eVar) {
            LogUtils.d(d.this.f17931a, "Setup onBillingSetupFinished.");
            d.this.f17939i = false;
            if (eVar.b() == 0) {
                String str = d.this.f17931a;
                LogUtils.d(str, "Setup success. result = " + GsonGetter.getGson().toJson(eVar));
                d.this.N();
                d.this.f17933c = true;
                d.this.P(this.f17981a);
                if (d.this.f17948r.isEmpty()) {
                    return;
                }
                Iterator it = d.this.f17948r.iterator();
                while (it.hasNext()) {
                    ((x) it.next()).onSetupResponse(true);
                }
                return;
            }
            LogUtils.d(d.this.f17931a, "Setup fail.");
            ToastUtils.debugToast(BaseApplication.getInstance(), String.format("code: %s, msg: %s", Integer.valueOf(eVar.b()), eVar.a()));
            d.this.f17933c = false;
            d.this.f17934d = eVar.a();
            PhoneUtils.isGoogleEnable(BaseApplication.getInstance(), new a(eVar));
        }

        @Override // com.android.billingclient.api.c
        public void onBillingServiceDisconnected() {
            LogUtils.i(d.this.f17931a, "onBillingServiceDisconnected");
            d.this.f17933c = false;
            d.this.f17939i = false;
            PhoneUtils.isGoogleEnable(BaseApplication.getInstance(), new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f17987a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f17988b;

        r(boolean z10, int i9) {
            this.f17987a = z10;
            this.f17988b = i9;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f17933c || d.this.f17939i || d.this.S()) {
                return;
            }
            d.this.z0(this.f17987a, this.f17988b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s implements com.android.billingclient.api.j {
        s() {
        }

        @Override // com.android.billingclient.api.j
        public void a(@NonNull com.android.billingclient.api.e eVar, @NonNull List<Purchase> list) {
            String str = d.this.f17931a;
            LogUtils.i(str, "checkHistoryPurchase billResult = " + eVar.b() + ", purchase = " + GsonGetter.getGson().toJson(list));
            for (Purchase purchase : list) {
                d.this.f17936f.googlePayCertificate(d.this.f17941k, d.this.f17942l, purchase);
                d.this.T(purchase.d());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class t implements com.android.billingclient.api.m {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f17992a;

            a(List list) {
                this.f17992a = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                List list = this.f17992a;
                if (list != null && !list.isEmpty()) {
                    d.this.E0(this.f17992a, 0);
                    return;
                }
                ToastUtils.showToast(BaseApplication.getInstance(), TextUtils.isEmpty(d.this.f17934d) ? BaseApplication.getInstance().getString(R.string.google_pay_failed) : d.this.f17934d);
                d.this.l0();
                Bundle bundle = new Bundle();
                String str = EventTrackingV2Utils.g_pay_error_call;
                bundle.putString(str, "查询商品为空，无法完成购买");
                EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
                eventTrackingV2Utils.track(str, bundle);
                eventTrackingV2Utils.track(EventTrackingV2Utils.g_pay_error, String.valueOf(d.this.f17943m));
            }
        }

        t() {
        }

        @Override // com.android.billingclient.api.m
        public void a(@NonNull com.android.billingclient.api.e eVar, @Nullable List<SkuDetails> list) {
            HandlerGetter.getMainHandler().post(new a(list));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class u extends SimpleObserver<com.android.billingclient.api.e> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17994a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f17995b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f17996c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f17997d;

        u(int i9, List list, String str, String str2) {
            this.f17994a = i9;
            this.f17995b = list;
            this.f17996c = str;
            this.f17997d = str2;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        /* renamed from: a */
        public void onNext(com.android.billingclient.api.e eVar) {
            String str = d.this.f17931a;
            LogUtils.i(str, "BillingResult = " + GsonGetter.getGson().toJson(eVar));
            if (eVar != null && eVar.b() != 0) {
                ToastUtils.showToast(BaseApplication.getInstance(), TextUtils.isEmpty(eVar.a()) ? BaseApplication.getInstance().getString(R.string.google_pay_failed) : eVar.a());
                Bundle bundle = new Bundle();
                String str2 = EventTrackingV2Utils.g_pay_error_call;
                bundle.putString(str2, "下单失败：" + eVar.b());
                EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
                eventTrackingV2Utils.track(str2, bundle);
                eventTrackingV2Utils.track(EventTrackingV2Utils.g_pay_error, String.valueOf(d.this.f17943m));
            }
            if (this.f17994a < this.f17995b.size() - 1) {
                d.this.F0(this.f17995b, this.f17994a + 1, this.f17996c, this.f17997d);
            } else {
                onError(null);
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onError(Throwable th2) {
            super.onError(th2);
            d.this.l0();
            Bundle bundle = new Bundle();
            String str = EventTrackingV2Utils.g_pay_error_call;
            bundle.putString(str, "-1000");
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(str, bundle);
            eventTrackingV2Utils.track(EventTrackingV2Utils.g_pay_error, String.valueOf(d.this.f17943m));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class v implements vh.o<SkuDetails, com.android.billingclient.api.e> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17999a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f18000b;

        v(String str, String str2) {
            this.f17999a = str;
            this.f18000b = str2;
        }

        @Override // vh.o
        /* renamed from: a */
        public com.android.billingclient.api.e apply(SkuDetails skuDetails) throws Exception {
            String str;
            try {
                str = skuDetails.f();
            } catch (Exception unused) {
                str = null;
            }
            if (str == null || !d.this.g0(str)) {
                return null;
            }
            d.a b10 = com.android.billingclient.api.d.b().b(skuDetails);
            if (!TextUtils.isEmpty(this.f17999a) && !TextUtils.isEmpty(this.f18000b) && "subs".equals(skuDetails.i()) && b8.e.g().c().getUserVipMsg().getSended() == 0) {
                b10.c(d.b.c().b(this.f18000b).c(1).a());
            }
            com.android.billingclient.api.d a10 = b10.a();
            if (BaseApplication.getInstance().getCurrTopActivity() == null) {
                return null;
            }
            return d.this.f17932b.b(BaseApplication.getInstance().getCurrTopActivity(), a10);
        }
    }

    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* loaded from: classes3.dex */
    public interface x {
        void onConsumeResponse();

        void onPayError(Throwable th2);

        @Deprecated
        void onPayResponse();

        void onSetupResponse(boolean z10);

        void onSubscribeFailed();

        void onSubscribeSuccess();

        void startSubscribe();
    }

    /* loaded from: classes3.dex */
    public interface y {
        void a(Map<String, SubStateBean> map);
    }

    static {
        f17930w = h0() ? "vip1_1" : "vip1";
    }

    private d() {
        List<String> list;
        String[] strArr;
        this.f17935e = h0() ? 3 : 2;
        this.f17936f = (GooglePayOrderViewModel) new ViewModelProvider(BaseApplication.getInstance()).get(GooglePayOrderViewModel.class);
        if (com.guochao.faceshow.aaspring.manager.b.c("pay", "ProtectIds", new j().getType()) == null) {
            list = Arrays.asList("facecast1", "facecast2", "facecast3", "facecast4", "facecast7", "facecast8");
        } else {
            list = (List) com.guochao.faceshow.aaspring.manager.b.c("pay", "ProtectIds", new p().getType());
        }
        this.f17937g = list;
        if (h0()) {
            strArr = new String[]{"vip1_1", "vip1_2", "vip1_3", "vip2_1", "vip2_2", "vip2_3", "vip3_1", "vip3_2", "vip3_3", "vvip1_1", "vvip1_2", "vvip1_3", "vvip2_1", "vvip2_2", "vvip2_3", "vvip3_1", "vvip3_2", "vvip3_3"};
        } else {
            strArr = new String[]{"vip1", "vip2", "vvip1", "vvip2"};
        }
        this.f17938h = strArr;
        this.f17941k = 0;
        this.f17942l = null;
        this.f17943m = 3;
        this.f17948r = new CopyOnWriteArrayList<>();
        this.f17949s = (List) com.guochao.faceshow.aaspring.manager.b.c("pay", "ProtectSkuDetails", new l().getType());
        this.f17950t = (List) com.guochao.faceshow.aaspring.manager.b.c("pay", "SubSkuDetails", new m().getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0(List<SkuDetails> list, int i9) {
        F0(list, i9, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(List<SkuDetails> list, int i9, String str, String str2) {
        if (!this.f17933c) {
            ToastUtils.showToast(BaseApplication.getInstance(), TextUtils.isEmpty(this.f17934d) ? BaseApplication.getInstance().getString(R.string.google_pay_failed) : this.f17934d);
            Bundle bundle = new Bundle();
            String str3 = EventTrackingV2Utils.g_pay_error_call;
            bundle.putString(str3, "谷歌服务尚未初始化成功");
            EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
            eventTrackingV2Utils.track(str3, bundle);
            eventTrackingV2Utils.track(EventTrackingV2Utils.g_pay_error, String.valueOf(this.f17943m));
            return;
        }
        io.reactivex.k.just(list.get(i9)).map(new v(str, str2)).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new u(i9, list, str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0(boolean z10, int i9) {
        HandlerGetter.getMainHandler().postDelayed(new r(z10, i9), 2000L);
    }

    private boolean I(boolean z10) {
        if (this.f17932b == null) {
            l0();
            return false;
        } else if (this.f17933c || !z10) {
            return true;
        } else {
            ToastUtils.showToast(BaseApplication.getInstance(), TextUtils.isEmpty(this.f17934d) ? BaseApplication.getInstance().getString(R.string.google_pay_failed) : this.f17934d);
            l0();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean J(List<PurchaseHistoryRecord> list) {
        List<PurchaseHistoryRecord> Y = Y();
        if (list == null || list.isEmpty() || Y == null || Y.isEmpty()) {
            return true;
        }
        int i9 = 0;
        for (PurchaseHistoryRecord purchaseHistoryRecord : list) {
            Iterator<PurchaseHistoryRecord> it = Y.iterator();
            while (true) {
                if (it.hasNext()) {
                    PurchaseHistoryRecord next = it.next();
                    long b10 = next.b();
                    String c10 = next.c();
                    if (b10 == purchaseHistoryRecord.b() && c10.equals(purchaseHistoryRecord.c())) {
                        i9++;
                        break;
                    }
                }
            }
        }
        return i9 < list.size();
    }

    @Deprecated
    private void J0(String str) {
        Map map = (Map) GsonGetter.getGson().fromJson(str, new f().getType());
        if (map == null) {
            map = new HashMap();
        }
        if (TextUtils.isEmpty((String) map.get("subscribe_sign"))) {
            com.guochao.faceshow.aaspring.manager.b.g("pay", "SubPurchase", "");
            return;
        }
        CopyOnWriteArrayList<x> copyOnWriteArrayList = this.f17948r;
        if (copyOnWriteArrayList != null) {
            Iterator<x> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().startSubscribe();
            }
        }
        new PostRequest("tokens/subscribe/google/appPayCertificate").D(RemoteMessageConst.MessageBody.PARAM, str).M(new g());
    }

    @Deprecated
    private void L() {
        List<GooglePlayPurchaseResult> e10 = u7.c.c().e(b8.e.g().getUserId());
        if (e10 == null || e10.isEmpty()) {
            return;
        }
        for (int i9 = 0; i9 < e10.size(); i9++) {
            Bundle bundle = new Bundle();
            String str = EventTrackingV2Utils.g_pay_before_server;
            bundle.putString(str, "进入app重试未完成的订单");
            EventTrackingV2Utils.INSTANCE.track(str, bundle);
            GooglePlayPurchaseResult googlePlayPurchaseResult = e10.get(i9);
            if (googlePlayPurchaseResult.isTimeout()) {
                return;
            }
            K0(googlePlayPurchaseResult, -2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L0(Map<String, SubStateBean> map, y yVar) {
        Map<? extends String, ? extends SubStateBean> map2 = (Map) com.guochao.faceshow.aaspring.manager.b.c("pay", "SubStatus", new e().getType());
        if (map2 != null) {
            map.putAll(map2);
        }
        if (yVar != null) {
            yVar.a(map);
            R(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        com.android.billingclient.api.a aVar = this.f17932b;
        if (aVar != null) {
            aVar.e("inapp", new s());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(boolean z10) {
        com.android.billingclient.api.a aVar = this.f17932b;
        if (aVar == null) {
            return;
        }
        aVar.e("subs", new i(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q(List<String> list, com.guochao.faceshow.aaspring.base.http.callback.c<List<SubStateBean>> cVar) {
        new PostRequest("tokens/subscribe/google/getSubscribeState").v("purchase_token", GsonGetter.getGson().toJson(list)).M(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R(Map<String, SubStateBean> map) {
        this.f17944n = false;
        if (!TextUtils.isEmpty(this.f17945o)) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "开通的目标subjectId是：" + this.f17945o);
            C0(this.f17945o, this.f17946p);
        }
        t0(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean S() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        try {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            baseApplication.getApplicationContext().getPackageManager().queryIntentServices(intent, 0);
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(String str) {
        if (this.f17932b != null) {
            this.f17932b.a(com.android.billingclient.api.f.b().b(str).a(), this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof BaseActivity) {
            ((BaseActivity) currTopActivity).dismissProgressDialog();
        }
    }

    public static String X(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("anchorUserId", str);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject.toString();
    }

    private List<PurchaseHistoryRecord> Y() {
        if (com.guochao.faceshow.aaspring.manager.b.c("pay", "PurchaseHistoryRecord", new n().getType()) == null) {
            return new ArrayList();
        }
        return (List) com.guochao.faceshow.aaspring.manager.b.c("pay", "PurchaseHistoryRecord", new o().getType());
    }

    public static d Z() {
        if (f17929v == null) {
            synchronized (d.class) {
                if (f17929v == null) {
                    f17929v = new d();
                }
            }
        }
        return f17929v;
    }

    public static String a0(String str) {
        if (str == null) {
            str = f17930w;
        }
        if (h0()) {
            String[] split = str.split("_");
            return split.length > 1 ? split[1] : "";
        }
        return str.replaceAll(str.split("\\d")[0], "");
    }

    private double c0(String str) {
        String group;
        try {
            Matcher matcher = Pattern.compile("(\\d+\\.\\d+)").matcher(str);
            if (!matcher.find() || (group = matcher.group(0)) == null) {
                return 0.0d;
            }
            return Double.parseDouble(group.trim());
        } catch (Exception unused) {
            return 0.0d;
        }
    }

    public static String e0(String str) {
        if (str == null) {
            str = f17930w;
        }
        if (h0()) {
            return str.split("_")[0];
        }
        return str.split("\\d")[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g0(String str) {
        return str.contains("facecast") || str.contains("vip");
    }

    public static boolean h0() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(com.android.billingclient.api.e eVar, final List list) {
        HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.b
            @Override // java.lang.Runnable
            public final void run() {
                d.this.i0(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer k0(boolean z10, Integer num) throws Exception {
        this.f17932b = com.android.billingclient.api.a.c(BaseApplication.getInstance()).b().c(this).a();
        z0(z10, 0);
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        if (this.f17948r.isEmpty()) {
            return;
        }
        Iterator<x> it = this.f17948r.iterator();
        while (it.hasNext()) {
            it.next().onPayError(null);
        }
    }

    private void m0(String str, String str2, String str3, int i9) {
        Bundle bundle = new Bundle();
        bundle.putString("id", str);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString("childSubId", str2);
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingUtils.GOOGLE_SUB_CLICK, bundle);
        this.f17946p = i9;
        if (this.f17944n) {
            x0();
            this.f17945o = str;
            return;
        }
        U();
        if (d0() != null && !d0().isEmpty()) {
            for (SkuDetails skuDetails : d0()) {
                if (str.equals(skuDetails.f())) {
                    F0(Collections.singletonList(skuDetails), 0, str2, str3);
                    return;
                }
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        l.a c10 = com.android.billingclient.api.l.c();
        c10.b(arrayList).c("subs");
        this.f17932b.f(c10.a(), new h(str2, str3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(List<PurchaseHistoryRecord> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        com.guochao.faceshow.aaspring.manager.b.g("pay", "PurchaseHistoryRecord", list);
    }

    private void t0(Map<String, SubStateBean> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        com.guochao.faceshow.aaspring.manager.b.g("pay", "SubStatus", map);
    }

    private void x0() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof BaseActivity) {
            ((BaseActivity) currTopActivity).showProgressDialog("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0() {
        HandlerGetter.getMainHandler().post(new k());
    }

    public void A0(String str, int i9, int i10) {
        B0(str, i9, i10, null);
    }

    public void B0(String str, int i9, int i10, @Nullable String str2) {
        this.f17941k = i9;
        this.f17943m = i10;
        this.f17942l = str2;
        Bundle bundle = new Bundle();
        bundle.putString("id", str);
        EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
        eventTrackingV2Utils.track(EventTrackingUtils.GOOGLE_PAY_CLICK, bundle);
        if (!I(true)) {
            Bundle bundle2 = new Bundle();
            String str3 = EventTrackingV2Utils.g_pay_error_call;
            bundle2.putString(str3, "谷歌服务暂不可用");
            eventTrackingV2Utils.track(str3, bundle2);
            eventTrackingV2Utils.track(EventTrackingV2Utils.g_pay_error, String.valueOf(this.f17943m));
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        l.a c10 = com.android.billingclient.api.l.c();
        c10.b(arrayList).c("inapp");
        if (!b0().isEmpty()) {
            for (SkuDetails skuDetails : b0()) {
                if (skuDetails != null) {
                    String str4 = null;
                    try {
                        str4 = skuDetails.f();
                    } catch (Exception unused) {
                    }
                    if (str4 != null && str4.equals(str)) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(skuDetails);
                        E0(arrayList2, 0);
                        return;
                    }
                }
            }
        }
        this.f17932b.f(c10.a(), new t());
    }

    public void C0(String str, int i9) {
        D0(str, null, null, i9);
    }

    public void D0(String str, String str2, String str3, int i9) {
        x0();
        for (int i10 = 0; i10 < this.f17948r.size(); i10++) {
            this.f17948r.get(i10).startSubscribe();
        }
        m0(str, str2, str3, i9);
    }

    public void H0() {
        this.f17940j = true;
    }

    public void I0(x xVar) {
        this.f17948r.remove(xVar);
        H0();
    }

    public void K(y yVar) {
        HashMap hashMap = new HashMap();
        this.f17944n = true;
        if (I(true)) {
            L0(hashMap, yVar);
            this.f17932b.d("subs", new C0174d(hashMap, yVar));
        } else if (yVar != null) {
            yVar.a(hashMap);
            R(hashMap);
        }
    }

    @Deprecated
    public void K0(GooglePlayPurchaseResult googlePlayPurchaseResult, int i9) {
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, b8.e.g().getUserId());
        hashMap.put("signture", googlePlayPurchaseResult.getSignture());
        hashMap.put("signtureData", googlePlayPurchaseResult.getSigntureData());
        hashMap.put("sceneType", String.valueOf(this.f17941k));
        new PostRequest(Contants.GOOGLE_PAY_WAY).E(hashMap).M(new c(googlePlayPurchaseResult, String.valueOf(this.f17941k), i9));
    }

    public void M(boolean z10) {
        if (!CustomPushReceiver.f26164a) {
            this.f17947q = true;
            return;
        }
        this.f17947q = false;
        if (!I(false)) {
            n0(z10);
        } else {
            P(z10);
        }
    }

    public void O() {
        String str = (String) com.guochao.faceshow.aaspring.manager.b.c("pay", "SubPurchase", String.class);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        J0(str);
    }

    public void V(com.android.billingclient.api.m mVar) {
        if (b0() != null && !b0().isEmpty()) {
            mVar.a(new com.android.billingclient.api.e(), new ArrayList(b0()));
        }
        if (this.f17932b == null || !this.f17933c) {
            return;
        }
        l.a c10 = com.android.billingclient.api.l.c();
        c10.b(this.f17937g).c("inapp");
        if (b0() != null && !b0().isEmpty()) {
            this.f17932b.f(c10.a(), new com.android.billingclient.api.m() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.a
                @Override // com.android.billingclient.api.m
                public final void a(com.android.billingclient.api.e eVar, List list) {
                    d.this.j0(eVar, list);
                }
            });
        } else {
            this.f17932b.f(c10.a(), mVar);
        }
    }

    public void W(com.android.billingclient.api.m mVar) {
        if (d0() != null && !d0().isEmpty()) {
            mVar.a(new com.android.billingclient.api.e(), new ArrayList(d0()));
        }
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, this.f17938h);
        if (this.f17932b == null || !this.f17933c) {
            if (mVar != null) {
                mVar.a(com.android.billingclient.api.e.c().c(-1).b("").a(), null);
                return;
            }
            return;
        }
        l.a c10 = com.android.billingclient.api.l.c();
        c10.b(arrayList).c("subs");
        this.f17932b.f(c10.a(), mVar);
    }

    @Override // com.android.billingclient.api.k
    public void a(@NonNull com.android.billingclient.api.e eVar, @Nullable List<Purchase> list) {
        if (list != null && !list.isEmpty()) {
            try {
                for (Purchase purchase : list) {
                    if (eVar.b() == 0 && !purchase.f().isEmpty() && purchase.f().get(0) != null && purchase.f().get(0).startsWith("facecast")) {
                        String str = null;
                        String str2 = purchase.f().get(0);
                        double d10 = 0.0d;
                        for (SkuDetails skuDetails : b0()) {
                            if (skuDetails.f().equals(str2)) {
                                d10 = c0(skuDetails.d());
                                str = skuDetails.e();
                            }
                        }
                        if (str != null && d10 != 0.0d) {
                            AppsFlyerPayUtils.INSTANCE.trackEvent(str2, str, d10, purchase.a());
                        }
                    }
                }
            } catch (Exception unused) {
            }
            int b10 = eVar.b();
            LogUtils.i(this.f17931a, "onPurchasesUpdated billResult = " + b10 + ", purchase = " + GsonGetter.getGson().toJson(list));
            for (Purchase purchase2 : list) {
                if (!purchase2.f().isEmpty() && purchase2.f().get(0).startsWith("facecast")) {
                    HandlerGetter.getMainHandler().post(new w());
                    this.f17936f.googlePayCertificate(this.f17941k, this.f17942l, purchase2);
                    T(purchase2.d());
                    EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
                    eventTrackingV2Utils.track(EventTrackingV2Utils.g_pay_success_call, String.valueOf(this.f17943m));
                    if (b8.e.g().c().getRecharged() == 0) {
                        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_success_types, String.valueOf(this.f17943m));
                        eventTrackingV2Utils.track(EventTrackingV2Utils.first_charge_success_price, purchase2.f().get(0));
                    }
                } else if (this.f17940j) {
                    return;
                } else {
                    this.f17936f.subscribePayCertificate(purchase2, new a(), new b());
                }
            }
            return;
        }
        for (int i9 = 0; i9 < this.f17948r.size(); i9++) {
            this.f17948r.get(i9).onSubscribeFailed();
        }
    }

    @Override // com.android.billingclient.api.g
    public void b(@NonNull com.android.billingclient.api.e eVar, @NonNull String str) {
        if (eVar.b() == 0) {
            if (!this.f17948r.isEmpty()) {
                Iterator<x> it = this.f17948r.iterator();
                while (it.hasNext()) {
                    it.next().onConsumeResponse();
                }
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.g_pay_success_call);
            return;
        }
        Bundle bundle = new Bundle();
        String str2 = EventTrackingV2Utils.g_pay_error_call;
        bundle.putString(str2, "消耗失败：" + eVar.b());
        EventTrackingV2Utils eventTrackingV2Utils = EventTrackingV2Utils.INSTANCE;
        eventTrackingV2Utils.track(str2, bundle);
        eventTrackingV2Utils.track(EventTrackingV2Utils.g_pay_error, String.valueOf(this.f17943m));
        String str3 = this.f17931a;
        LogUtils.i(str3, "未消耗成功，" + eVar.b() + ", message = " + eVar.a() + ", s = " + str);
    }

    public List<SkuDetails> b0() {
        if (this.f17949s == null) {
            this.f17949s = new ArrayList();
        }
        return this.f17949s;
    }

    public List<SkuDetails> d0() {
        if (this.f17950t == null) {
            this.f17950t = new ArrayList();
        }
        return this.f17950t;
    }

    public int f0() {
        return this.f17935e;
    }

    public void n0(final boolean z10) {
        io.reactivex.k.just(1).map(new vh.o() { // from class: com.guochao.faceshow.aaspring.modulars.googlepay.c
            @Override // vh.o
            public final Object apply(Object obj) {
                Integer k02;
                k02 = d.this.k0(z10, (Integer) obj);
                return k02;
            }
        }).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe();
        L();
    }

    public void o0(x xVar) {
        this.f17948r.remove(xVar);
    }

    public void q0(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f17937g = list;
        com.guochao.faceshow.aaspring.manager.b.g("pay", "ProtectIds", list);
    }

    public void r0(List<SkuDetails> list) {
        com.guochao.faceshow.aaspring.manager.b.g("pay", "ProtectSkuDetails", list);
    }

    public void s0(List<SkuDetails> list) {
        com.guochao.faceshow.aaspring.manager.b.g("pay", "SubSkuDetails", list);
    }

    public void u0(x xVar) {
        this.f17948r.add(xVar);
    }

    /* renamed from: v0 */
    public void i0(List<SkuDetails> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            LogUtils.i("zune: ", "Current Thread is Main Thread.");
        } else {
            LogUtils.i("zune: ", "Current Thread is async Thread.");
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        b0().clear();
        b0().addAll(list);
        r0(list);
    }

    public void w0(List<SkuDetails> list) {
        if (list != null) {
            d0().clear();
            d0().addAll(list);
            s0(list);
        }
    }

    public void z0(boolean z10, int i9) {
        if (i9 < 5 && !this.f17939i) {
            this.f17940j = z10;
            if (this.f17932b == null) {
                this.f17932b = com.android.billingclient.api.a.c(BaseApplication.getInstance()).b().c(this).a();
            }
            if (!this.f17933c) {
                this.f17939i = true;
                ToastUtils.debug("正在连接Google play .......第" + i9 + "次");
                this.f17932b.g(new q(z10, i9));
                return;
            }
            if (!this.f17948r.isEmpty()) {
                Iterator<x> it = this.f17948r.iterator();
                while (it.hasNext()) {
                    it.next().onSetupResponse(true);
                }
            }
            N();
        }
    }
}
