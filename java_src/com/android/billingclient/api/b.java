package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.e;
import com.google.android.gms.internal.play_billing.zzp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b extends a {

    /* renamed from: a */
    private volatile int f3919a;

    /* renamed from: b */
    private final String f3920b;

    /* renamed from: c */
    private final Handler f3921c;

    /* renamed from: d */
    private volatile f0 f3922d;

    /* renamed from: e */
    private Context f3923e;

    /* renamed from: f */
    private Context f3924f;

    /* renamed from: g */
    private volatile com.google.android.gms.internal.play_billing.d f3925g;

    /* renamed from: h */
    private volatile s f3926h;

    /* renamed from: i */
    private boolean f3927i;

    /* renamed from: j */
    private boolean f3928j;

    /* renamed from: k */
    private int f3929k;

    /* renamed from: l */
    private boolean f3930l;

    /* renamed from: m */
    private boolean f3931m;

    /* renamed from: n */
    private boolean f3932n;

    /* renamed from: o */
    private boolean f3933o;

    /* renamed from: p */
    private boolean f3934p;

    /* renamed from: q */
    private boolean f3935q;

    /* renamed from: r */
    private boolean f3936r;

    /* renamed from: s */
    private boolean f3937s;

    /* renamed from: t */
    private boolean f3938t;

    /* renamed from: u */
    private ExecutorService f3939u;

    @AnyThread
    private b(Context context, boolean z10, k kVar, String str, String str2) {
        this.f3919a = 0;
        this.f3921c = new Handler(Looper.getMainLooper());
        this.f3929k = 0;
        this.f3920b = str;
        h(context, kVar, z10);
    }

    private void h(Context context, k kVar, boolean z10) {
        Context applicationContext = context.getApplicationContext();
        this.f3924f = applicationContext;
        this.f3922d = new f0(applicationContext, kVar);
        this.f3923e = context;
        this.f3938t = z10;
    }

    public final Handler m() {
        return Looper.myLooper() == null ? this.f3921c : new Handler(Looper.myLooper());
    }

    private final e n(final e eVar) {
        if (Thread.interrupted()) {
            return eVar;
        }
        this.f3921c.post(new Runnable() { // from class: com.android.billingclient.api.k0
            @Override // java.lang.Runnable
            public final void run() {
                b.this.F(eVar);
            }
        });
        return eVar;
    }

    public final e o() {
        if (this.f3919a != 0 && this.f3919a != 3) {
            return w.f4026l;
        }
        return w.f4031q;
    }

    @Nullable
    public final <T> Future<T> p(Callable<T> callable, long j10, @Nullable final Runnable runnable, Handler handler) {
        long j11 = (long) (j10 * 0.95d);
        if (this.f3939u == null) {
            this.f3939u = Executors.newFixedThreadPool(com.google.android.gms.internal.play_billing.a.f8467a, new p(this));
        }
        try {
            final Future<T> submit = this.f3939u.submit(callable);
            handler.postDelayed(new Runnable() { // from class: com.android.billingclient.api.p0
                @Override // java.lang.Runnable
                public final void run() {
                    Future future = submit;
                    Runnable runnable2 = runnable;
                    if (future.isDone() || future.isCancelled()) {
                        return;
                    }
                    future.cancel(true);
                    com.google.android.gms.internal.play_billing.a.j("BillingClient", "Async task is taking too long, cancel it!");
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, j11);
            return submit;
        } catch (Exception e10) {
            String valueOf = String.valueOf(e10);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 28);
            sb2.append("Async task throws exception ");
            sb2.append(valueOf);
            com.google.android.gms.internal.play_billing.a.j("BillingClient", sb2.toString());
            return null;
        }
    }

    public static /* synthetic */ t x(b bVar, String str) {
        String valueOf = String.valueOf(str);
        com.google.android.gms.internal.play_billing.a.i("BillingClient", valueOf.length() != 0 ? "Querying purchase history, item type: ".concat(valueOf) : new String("Querying purchase history, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle e10 = com.google.android.gms.internal.play_billing.a.e(bVar.f3932n, bVar.f3938t, bVar.f3920b);
        String str2 = null;
        while (bVar.f3930l) {
            try {
                Bundle h02 = bVar.f3925g.h0(6, bVar.f3924f.getPackageName(), str, str2, e10);
                e a10 = y.a(h02, "BillingClient", "getPurchaseHistory()");
                if (a10 != w.f4030p) {
                    return new t(a10, null);
                }
                ArrayList<String> stringArrayList = h02.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = h02.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = h02.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i9 = 0; i9 < stringArrayList2.size(); i9++) {
                    String str3 = stringArrayList2.get(i9);
                    String str4 = stringArrayList3.get(i9);
                    String valueOf2 = String.valueOf(stringArrayList.get(i9));
                    com.google.android.gms.internal.play_billing.a.i("BillingClient", valueOf2.length() != 0 ? "Purchase record found for sku : ".concat(valueOf2) : new String("Purchase record found for sku : "));
                    try {
                        PurchaseHistoryRecord purchaseHistoryRecord = new PurchaseHistoryRecord(str3, str4);
                        if (TextUtils.isEmpty(purchaseHistoryRecord.c())) {
                            com.google.android.gms.internal.play_billing.a.j("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(purchaseHistoryRecord);
                    } catch (JSONException e11) {
                        String valueOf3 = String.valueOf(e11);
                        StringBuilder sb2 = new StringBuilder(valueOf3.length() + 48);
                        sb2.append("Got an exception trying to decode the purchase: ");
                        sb2.append(valueOf3);
                        com.google.android.gms.internal.play_billing.a.j("BillingClient", sb2.toString());
                        return new t(w.f4026l, null);
                    }
                }
                str2 = h02.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(str2);
                com.google.android.gms.internal.play_billing.a.i("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
                if (TextUtils.isEmpty(str2)) {
                    return new t(w.f4030p, arrayList);
                }
            } catch (RemoteException e12) {
                String valueOf5 = String.valueOf(e12);
                StringBuilder sb3 = new StringBuilder(valueOf5.length() + 64);
                sb3.append("Got exception trying to get purchase history: ");
                sb3.append(valueOf5);
                sb3.append("; try to reconnect");
                com.google.android.gms.internal.play_billing.a.j("BillingClient", sb3.toString());
                return new t(w.f4031q, null);
            }
        }
        com.google.android.gms.internal.play_billing.a.j("BillingClient", "getPurchaseHistory is not supported on current device");
        return new t(w.f4024j, null);
    }

    public static /* synthetic */ Purchase.a z(b bVar, String str) {
        Bundle t10;
        String valueOf = String.valueOf(str);
        com.google.android.gms.internal.play_billing.a.i("BillingClient", valueOf.length() != 0 ? "Querying owned items, item type: ".concat(valueOf) : new String("Querying owned items, item type: "));
        ArrayList arrayList = new ArrayList();
        Bundle e10 = com.google.android.gms.internal.play_billing.a.e(bVar.f3932n, bVar.f3938t, bVar.f3920b);
        String str2 = null;
        do {
            try {
                if (bVar.f3932n) {
                    t10 = bVar.f3925g.T(9, bVar.f3924f.getPackageName(), str, str2, e10);
                } else {
                    t10 = bVar.f3925g.t(3, bVar.f3924f.getPackageName(), str, str2);
                }
                e a10 = y.a(t10, "BillingClient", "getPurchase()");
                if (a10 != w.f4030p) {
                    return new Purchase.a(a10, null);
                }
                ArrayList<String> stringArrayList = t10.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = t10.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = t10.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                for (int i9 = 0; i9 < stringArrayList2.size(); i9++) {
                    String str3 = stringArrayList2.get(i9);
                    String str4 = stringArrayList3.get(i9);
                    String valueOf2 = String.valueOf(stringArrayList.get(i9));
                    com.google.android.gms.internal.play_billing.a.i("BillingClient", valueOf2.length() != 0 ? "Sku is owned: ".concat(valueOf2) : new String("Sku is owned: "));
                    try {
                        Purchase purchase = new Purchase(str3, str4);
                        if (TextUtils.isEmpty(purchase.d())) {
                            com.google.android.gms.internal.play_billing.a.j("BillingClient", "BUG: empty/null token!");
                        }
                        arrayList.add(purchase);
                    } catch (JSONException e11) {
                        String valueOf3 = String.valueOf(e11);
                        StringBuilder sb2 = new StringBuilder(valueOf3.length() + 48);
                        sb2.append("Got an exception trying to decode the purchase: ");
                        sb2.append(valueOf3);
                        com.google.android.gms.internal.play_billing.a.j("BillingClient", sb2.toString());
                        return new Purchase.a(w.f4026l, null);
                    }
                }
                str2 = t10.getString("INAPP_CONTINUATION_TOKEN");
                String valueOf4 = String.valueOf(str2);
                com.google.android.gms.internal.play_billing.a.i("BillingClient", valueOf4.length() != 0 ? "Continuation token: ".concat(valueOf4) : new String("Continuation token: "));
            } catch (Exception e12) {
                String valueOf5 = String.valueOf(e12);
                StringBuilder sb3 = new StringBuilder(valueOf5.length() + 57);
                sb3.append("Got exception trying to get purchases: ");
                sb3.append(valueOf5);
                sb3.append("; try to reconnect");
                com.google.android.gms.internal.play_billing.a.j("BillingClient", sb3.toString());
                return new Purchase.a(w.f4031q, null);
            }
        } while (!TextUtils.isEmpty(str2));
        return new Purchase.a(w.f4030p, arrayList);
    }

    public final /* synthetic */ Object C(f fVar, g gVar) throws Exception {
        int j10;
        String str;
        String a10 = fVar.a();
        try {
            String valueOf = String.valueOf(a10);
            com.google.android.gms.internal.play_billing.a.i("BillingClient", valueOf.length() != 0 ? "Consuming purchase with token: ".concat(valueOf) : new String("Consuming purchase with token: "));
            if (this.f3932n) {
                Bundle e02 = this.f3925g.e0(9, this.f3924f.getPackageName(), a10, com.google.android.gms.internal.play_billing.a.b(fVar, this.f3932n, this.f3920b));
                j10 = e02.getInt("RESPONSE_CODE");
                str = com.google.android.gms.internal.play_billing.a.g(e02, "BillingClient");
            } else {
                j10 = this.f3925g.j(3, this.f3924f.getPackageName(), a10);
                str = "";
            }
            e.a c10 = e.c();
            c10.c(j10);
            c10.b(str);
            e a11 = c10.a();
            if (j10 == 0) {
                com.google.android.gms.internal.play_billing.a.i("BillingClient", "Successfully consumed purchase.");
                gVar.b(a11, a10);
                return null;
            }
            StringBuilder sb2 = new StringBuilder(63);
            sb2.append("Error consuming purchase with token. Response code: ");
            sb2.append(j10);
            com.google.android.gms.internal.play_billing.a.j("BillingClient", sb2.toString());
            gVar.b(a11, a10);
            return null;
        } catch (Exception e10) {
            String valueOf2 = String.valueOf(e10);
            StringBuilder sb3 = new StringBuilder(valueOf2.length() + 30);
            sb3.append("Error consuming purchase; ex: ");
            sb3.append(valueOf2);
            com.google.android.gms.internal.play_billing.a.j("BillingClient", sb3.toString());
            gVar.b(w.f4031q, a10);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x008d, code lost:
        r0 = null;
        r4 = 4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object D(java.lang.String r22, java.util.List r23, java.lang.String r24, com.android.billingclient.api.m r25) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.b.D(java.lang.String, java.util.List, java.lang.String, com.android.billingclient.api.m):java.lang.Object");
    }

    public final /* synthetic */ void F(e eVar) {
        this.f3922d.b().a(eVar, null);
    }

    @Override // com.android.billingclient.api.a
    public final void a(final f fVar, final g gVar) {
        if (!i()) {
            gVar.b(w.f4031q, fVar.a());
        } else if (p(new Callable() { // from class: com.android.billingclient.api.h0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b.this.C(fVar, gVar);
                return null;
            }
        }, 30000L, new Runnable() { // from class: com.android.billingclient.api.l0
            @Override // java.lang.Runnable
            public final void run() {
                g.this.b(w.f4032r, fVar.a());
            }
        }, m()) == null) {
            gVar.b(o(), fVar.a());
        }
    }

    @Override // com.android.billingclient.api.a
    public final e b(Activity activity, final d dVar) {
        String str;
        String str2;
        String str3;
        Future p10;
        boolean z10;
        final int i9;
        int i10;
        String str4;
        String str5 = "BUY_INTENT";
        if (!i()) {
            e eVar = w.f4031q;
            n(eVar);
            return eVar;
        }
        ArrayList<SkuDetails> l10 = dVar.l();
        final SkuDetails skuDetails = l10.get(0);
        final String i11 = skuDetails.i();
        if (i11.equals("subs") && !this.f3927i) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Current client doesn't support subscriptions.");
            e eVar2 = w.f4033s;
            n(eVar2);
            return eVar2;
        } else if (dVar.o() && !this.f3930l) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Current client doesn't support extra params for buy intent.");
            e eVar3 = w.f4022h;
            n(eVar3);
            return eVar3;
        } else if (l10.size() > 1 && !this.f3937s) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Current client doesn't support multi-item purchases.");
            e eVar4 = w.f4035u;
            n(eVar4);
            return eVar4;
        } else {
            String str6 = "";
            for (int i12 = 0; i12 < l10.size(); i12++) {
                String valueOf = String.valueOf(str6);
                String valueOf2 = String.valueOf(l10.get(i12));
                StringBuilder sb2 = new StringBuilder(valueOf.length() + valueOf2.length());
                sb2.append(valueOf);
                sb2.append(valueOf2);
                String sb3 = sb2.toString();
                if (i12 < l10.size() - 1) {
                    sb3 = String.valueOf(sb3).concat(", ");
                }
                str6 = sb3;
            }
            StringBuilder sb4 = new StringBuilder(String.valueOf(str6).length() + 41 + i11.length());
            sb4.append("Constructing buy intent for ");
            sb4.append(str6);
            sb4.append(", item type: ");
            sb4.append(i11);
            com.google.android.gms.internal.play_billing.a.i("BillingClient", sb4.toString());
            if (this.f3930l) {
                final Bundle d10 = com.google.android.gms.internal.play_billing.a.d(dVar, this.f3932n, this.f3938t, this.f3920b);
                ArrayList<String> arrayList = new ArrayList<>();
                ArrayList<String> arrayList2 = new ArrayList<>();
                ArrayList<String> arrayList3 = new ArrayList<>();
                ArrayList<Integer> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                str2 = "; try to reconnect";
                int size = l10.size();
                str3 = str6;
                int i13 = 0;
                boolean z11 = false;
                boolean z12 = false;
                boolean z13 = false;
                boolean z14 = false;
                while (i13 < size) {
                    SkuDetails skuDetails2 = l10.get(i13);
                    if (skuDetails2.n().isEmpty()) {
                        i10 = size;
                    } else {
                        i10 = size;
                        arrayList.add(skuDetails2.n());
                    }
                    String str7 = str5;
                    try {
                        str4 = new JSONObject(skuDetails2.c()).optString("offer_id_token");
                    } catch (JSONException unused) {
                        str4 = "";
                    }
                    String k10 = skuDetails2.k();
                    int j10 = skuDetails2.j();
                    String m10 = skuDetails2.m();
                    arrayList2.add(str4);
                    z11 |= !TextUtils.isEmpty(str4);
                    arrayList3.add(k10);
                    z12 |= !TextUtils.isEmpty(k10);
                    arrayList4.add(Integer.valueOf(j10));
                    z13 |= j10 != 0;
                    z14 |= !TextUtils.isEmpty(m10);
                    arrayList5.add(m10);
                    i13++;
                    size = i10;
                    str5 = str7;
                }
                str = str5;
                if (!arrayList.isEmpty()) {
                    d10.putStringArrayList("skuDetailsTokens", arrayList);
                }
                if (z11) {
                    if (!this.f3935q) {
                        e eVar5 = w.f4023i;
                        n(eVar5);
                        return eVar5;
                    }
                    d10.putStringArrayList("SKU_OFFER_ID_TOKEN_LIST", arrayList2);
                }
                if (z12) {
                    d10.putStringArrayList("SKU_OFFER_ID_LIST", arrayList3);
                }
                if (z13) {
                    d10.putIntegerArrayList("SKU_OFFER_TYPE_LIST", arrayList4);
                }
                if (z14) {
                    d10.putStringArrayList("SKU_SERIALIZED_DOCID_LIST", arrayList5);
                }
                if (TextUtils.isEmpty(skuDetails.l())) {
                    z10 = false;
                } else {
                    d10.putString("skuPackageName", skuDetails.l());
                    z10 = true;
                }
                if (!TextUtils.isEmpty(null)) {
                    d10.putString("accountName", null);
                }
                if (l10.size() > 1) {
                    ArrayList<String> arrayList6 = new ArrayList<>(l10.size() - 1);
                    ArrayList<String> arrayList7 = new ArrayList<>(l10.size() - 1);
                    for (int i14 = 1; i14 < l10.size(); i14++) {
                        arrayList6.add(l10.get(i14).f());
                        arrayList7.add(l10.get(i14).i());
                    }
                    d10.putStringArrayList("additionalSkus", arrayList6);
                    d10.putStringArrayList("additionalSkuTypes", arrayList7);
                }
                if (!TextUtils.isEmpty(activity.getIntent().getStringExtra("PROXY_PACKAGE"))) {
                    String stringExtra = activity.getIntent().getStringExtra("PROXY_PACKAGE");
                    d10.putString("proxyPackage", stringExtra);
                    try {
                        d10.putString("proxyPackageVersion", this.f3924f.getPackageManager().getPackageInfo(stringExtra, 0).versionName);
                    } catch (PackageManager.NameNotFoundException unused2) {
                        d10.putString("proxyPackageVersion", "package not found");
                    }
                }
                if (this.f3936r && z10) {
                    i9 = 15;
                } else if (this.f3932n) {
                    i9 = 9;
                } else {
                    i9 = dVar.a() ? 7 : 6;
                }
                p10 = p(new Callable() { // from class: com.android.billingclient.api.q0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return b.this.u(i9, skuDetails, i11, dVar, d10);
                    }
                }, 5000L, null, this.f3921c);
            } else {
                str = "BUY_INTENT";
                str2 = "; try to reconnect";
                str3 = str6;
                p10 = p(new Callable() { // from class: com.android.billingclient.api.i0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return b.this.v(skuDetails, i11);
                    }
                }, 5000L, null, this.f3921c);
            }
            try {
                Bundle bundle = (Bundle) p10.get(5000L, TimeUnit.MILLISECONDS);
                int a10 = com.google.android.gms.internal.play_billing.a.a(bundle, "BillingClient");
                String g10 = com.google.android.gms.internal.play_billing.a.g(bundle, "BillingClient");
                if (a10 != 0) {
                    StringBuilder sb5 = new StringBuilder(52);
                    sb5.append("Unable to buy item, Error response code: ");
                    sb5.append(a10);
                    com.google.android.gms.internal.play_billing.a.j("BillingClient", sb5.toString());
                    e.a c10 = e.c();
                    c10.c(a10);
                    c10.b(g10);
                    e a11 = c10.a();
                    n(a11);
                    return a11;
                }
                Intent intent = new Intent(activity, ProxyBillingActivity.class);
                String str8 = str;
                intent.putExtra(str8, (PendingIntent) bundle.getParcelable(str8));
                activity.startActivity(intent);
                return w.f4030p;
            } catch (CancellationException | TimeoutException unused3) {
                String str9 = str3;
                StringBuilder sb6 = new StringBuilder(String.valueOf(str9).length() + 68);
                sb6.append("Time out while launching billing flow: ; for sku: ");
                sb6.append(str9);
                sb6.append(str2);
                com.google.android.gms.internal.play_billing.a.j("BillingClient", sb6.toString());
                e eVar6 = w.f4032r;
                n(eVar6);
                return eVar6;
            } catch (Exception unused4) {
                StringBuilder sb7 = new StringBuilder(String.valueOf(str3).length() + 69);
                sb7.append("Exception while launching billing flow: ; for sku: ");
                sb7.append(str3);
                sb7.append(str2);
                com.google.android.gms.internal.play_billing.a.j("BillingClient", sb7.toString());
                e eVar7 = w.f4031q;
                n(eVar7);
                return eVar7;
            }
        }
    }

    @Override // com.android.billingclient.api.a
    public final void d(String str, final i iVar) {
        if (!i()) {
            iVar.a(w.f4031q, null);
        } else if (p(new o(this, str, iVar), 30000L, new Runnable() { // from class: com.android.billingclient.api.m0
            @Override // java.lang.Runnable
            public final void run() {
                i.this.a(w.f4032r, null);
            }
        }, m()) == null) {
            iVar.a(o(), null);
        }
    }

    @Override // com.android.billingclient.api.a
    public void e(String str, final j jVar) {
        if (!i()) {
            jVar.a(w.f4031q, zzp.zzg());
        } else if (TextUtils.isEmpty(str)) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Please provide a valid SKU type.");
            jVar.a(w.f4021g, zzp.zzg());
        } else if (p(new n(this, str, jVar), 30000L, new Runnable() { // from class: com.android.billingclient.api.n0
            @Override // java.lang.Runnable
            public final void run() {
                j.this.a(w.f4032r, zzp.zzg());
            }
        }, m()) == null) {
            jVar.a(o(), zzp.zzg());
        }
    }

    @Override // com.android.billingclient.api.a
    public final void f(l lVar, final m mVar) {
        if (!i()) {
            mVar.a(w.f4031q, null);
            return;
        }
        String a10 = lVar.a();
        List<String> b10 = lVar.b();
        if (TextUtils.isEmpty(a10)) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Please fix the input params. SKU type can't be empty.");
            mVar.a(w.f4021g, null);
        } else if (b10 != null) {
            ArrayList arrayList = new ArrayList();
            for (String str : b10) {
                b0 b0Var = new b0(null);
                b0Var.a(str);
                arrayList.add(b0Var.b());
            }
            if (p(new Callable(a10, arrayList, null, mVar) { // from class: com.android.billingclient.api.j0

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ String f3977b;

                /* renamed from: c  reason: collision with root package name */
                public final /* synthetic */ List f3978c;

                /* renamed from: d  reason: collision with root package name */
                public final /* synthetic */ m f3979d;

                {
                    this.f3979d = mVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    b.this.D(this.f3977b, this.f3978c, null, this.f3979d);
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.o0
                @Override // java.lang.Runnable
                public final void run() {
                    m.this.a(w.f4032r, null);
                }
            }, m()) == null) {
                mVar.a(o(), null);
            }
        } else {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Please fix the input params. The list of SKUs can't be empty - set SKU list or SkuWithOffer list.");
            mVar.a(w.f4020f, null);
        }
    }

    @Override // com.android.billingclient.api.a
    public final void g(c cVar) {
        ServiceInfo serviceInfo;
        if (i()) {
            com.google.android.gms.internal.play_billing.a.i("BillingClient", "Service connection is valid. No need to re-initialize.");
            cVar.a(w.f4030p);
        } else if (this.f3919a == 1) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Client is already in the process of connecting to billing service.");
            cVar.a(w.f4018d);
        } else if (this.f3919a == 3) {
            com.google.android.gms.internal.play_billing.a.j("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            cVar.a(w.f4031q);
        } else {
            this.f3919a = 1;
            this.f3922d.c();
            com.google.android.gms.internal.play_billing.a.i("BillingClient", "Starting in-app billing setup.");
            this.f3926h = new s(this, cVar, null);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f3924f.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = queryIntentServices.get(0).serviceInfo) != null) {
                String str = serviceInfo.packageName;
                String str2 = serviceInfo.name;
                if ("com.android.vending".equals(str) && str2 != null) {
                    ComponentName componentName = new ComponentName(str, str2);
                    Intent intent2 = new Intent(intent);
                    intent2.setComponent(componentName);
                    intent2.putExtra("playBillingLibraryVersion", this.f3920b);
                    if (this.f3924f.bindService(intent2, this.f3926h, 1)) {
                        com.google.android.gms.internal.play_billing.a.i("BillingClient", "Service was bonded successfully.");
                        return;
                    }
                    com.google.android.gms.internal.play_billing.a.j("BillingClient", "Connection to Billing service is blocked.");
                } else {
                    com.google.android.gms.internal.play_billing.a.j("BillingClient", "The device doesn't have valid Play Store.");
                }
            }
            this.f3919a = 0;
            com.google.android.gms.internal.play_billing.a.i("BillingClient", "Billing service unavailable on device.");
            cVar.a(w.f4017c);
        }
    }

    public final boolean i() {
        return (this.f3919a != 2 || this.f3925g == null || this.f3926h == null) ? false : true;
    }

    public final /* synthetic */ Bundle u(int i9, SkuDetails skuDetails, String str, d dVar, Bundle bundle) throws Exception {
        return this.f3925g.I(i9, this.f3924f.getPackageName(), skuDetails.f(), str, null, bundle);
    }

    public final /* synthetic */ Bundle v(SkuDetails skuDetails, String str) throws Exception {
        return this.f3925g.n0(3, this.f3924f.getPackageName(), skuDetails.f(), str, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @androidx.annotation.AnyThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(@androidx.annotation.Nullable java.lang.String r7, boolean r8, android.content.Context r9, com.android.billingclient.api.k r10) {
        /*
            r6 = this;
            java.lang.String r7 = "com.android.billingclient.ktx.BuildConfig"
            java.lang.Class r7 = java.lang.Class.forName(r7)     // Catch: java.lang.Exception -> L14
            java.lang.String r0 = "VERSION_NAME"
            java.lang.reflect.Field r7 = r7.getField(r0)     // Catch: java.lang.Exception -> L14
            r0 = 0
            java.lang.Object r7 = r7.get(r0)     // Catch: java.lang.Exception -> L14
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Exception -> L14
            goto L16
        L14:
            java.lang.String r7 = "4.0.0"
        L16:
            r4 = r7
            r5 = 0
            r0 = r6
            r1 = r9
            r2 = r8
            r3 = r10
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.b.<init>(java.lang.String, boolean, android.content.Context, com.android.billingclient.api.k):void");
    }
}
