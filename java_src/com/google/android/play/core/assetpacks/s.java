package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
final class s implements c4 {

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10409g = new com.google.android.play.core.internal.g("AssetPackServiceImpl");

    /* renamed from: h  reason: collision with root package name */
    private static final Intent f10410h = new Intent("com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE").setPackage("com.android.vending");

    /* renamed from: a  reason: collision with root package name */
    private final String f10411a;

    /* renamed from: b  reason: collision with root package name */
    private final j1 f10412b;

    /* renamed from: c  reason: collision with root package name */
    private final t2 f10413c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.play.core.internal.s f10414d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.play.core.internal.s f10415e;

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f10416f = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Context context, j1 j1Var, t2 t2Var) {
        this.f10411a = context.getPackageName();
        this.f10412b = j1Var;
        this.f10413c = t2Var;
        if (com.google.android.play.core.internal.a1.b(context)) {
            Context a10 = com.google.android.play.core.internal.y0.a(context);
            com.google.android.play.core.internal.g gVar = f10409g;
            Intent intent = f10410h;
            d4 d4Var = new com.google.android.play.core.internal.n() { // from class: com.google.android.play.core.assetpacks.d4
                @Override // com.google.android.play.core.internal.n
                public final Object a(IBinder iBinder) {
                    return com.google.android.play.core.internal.v1.f(iBinder);
                }
            };
            this.f10414d = new com.google.android.play.core.internal.s(a10, gVar, "AssetPackService", intent, d4Var, null);
            this.f10415e = new com.google.android.play.core.internal.s(com.google.android.play.core.internal.y0.a(context), gVar, "AssetPackService-keepAlive", intent, d4Var, null);
        }
        f10409g.a("AssetPackService initiated.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle h() {
        Bundle bundle = new Bundle();
        bundle.putInt("playcore_version_code", 11003);
        ArrayList<Integer> arrayList = new ArrayList<>();
        arrayList.add(0);
        arrayList.add(1);
        bundle.putIntegerArrayList("supported_compression_formats", arrayList);
        ArrayList<Integer> arrayList2 = new ArrayList<>();
        arrayList2.add(1);
        arrayList2.add(2);
        bundle.putIntegerArrayList("supported_patch_formats", arrayList2);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle i(int i9) {
        Bundle bundle = new Bundle();
        bundle.putInt("session_id", i9);
        return bundle;
    }

    private static d5.d j() {
        f10409g.b("onError(%d)", -11);
        return d5.f.b(new AssetPackException(-11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(int i9, String str, int i10) {
        if (this.f10414d != null) {
            f10409g.d("notifyModuleCompleted", new Object[0]);
            d5.o oVar = new d5.o();
            this.f10414d.q(new g(this, oVar, i9, str, oVar, i10), oVar);
            return;
        }
        throw new f1("The Play Store app is not installed or is an unofficial version.", i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle l(int i9, String str, String str2, int i10) {
        Bundle y10 = y(i9, str);
        y10.putString("slice_id", str2);
        y10.putInt("chunk_number", i10);
        return y10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Bundle o(Map map) {
        Bundle h10 = h();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (Map.Entry entry : map.entrySet()) {
            Bundle bundle = new Bundle();
            bundle.putString("installed_asset_module_name", (String) entry.getKey());
            bundle.putLong("installed_asset_module_version", ((Long) entry.getValue()).longValue());
            arrayList.add(bundle);
        }
        h10.putParcelableArrayList("installed_asset_module", arrayList);
        return h10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ ArrayList u(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putString("module_name", (String) it.next());
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ List v(s sVar, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AssetPackState next = b.c((Bundle) it.next(), sVar.f10412b, sVar.f10413c).a().values().iterator().next();
            if (next == null) {
                f10409g.b("onGetSessionStates: Bundle contained no pack.", new Object[0]);
            }
            if (d0.a(next.d())) {
                arrayList.add(next.c());
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle y(int i9, String str) {
        Bundle i10 = i(i9);
        i10.putString("module_name", str);
        return i10;
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void a(int i9, String str) {
        k(i9, str, 10);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final synchronized void b() {
        if (this.f10415e == null) {
            f10409g.e("Keep alive connection manager is not initialized.", new Object[0]);
            return;
        }
        com.google.android.play.core.internal.g gVar = f10409g;
        gVar.d("keepAlive", new Object[0]);
        if (!this.f10416f.compareAndSet(false, true)) {
            gVar.d("Service is already kept alive.", new Object[0]);
            return;
        }
        d5.o oVar = new d5.o();
        this.f10415e.q(new j(this, oVar, oVar), oVar);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final d5.d c(int i9, String str, String str2, int i10) {
        if (this.f10414d == null) {
            return j();
        }
        f10409g.d("getChunkFileDescriptor(%s, %s, %d, session=%d)", str, str2, Integer.valueOf(i10), Integer.valueOf(i9));
        d5.o oVar = new d5.o();
        this.f10414d.q(new i(this, oVar, i9, str, str2, i10, oVar), oVar);
        return oVar.a();
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void d(int i9) {
        if (this.f10414d != null) {
            f10409g.d("notifySessionFailed", new Object[0]);
            d5.o oVar = new d5.o();
            this.f10414d.q(new h(this, oVar, i9, oVar), oVar);
            return;
        }
        throw new f1("The Play Store app is not installed or is an unofficial version.", i9);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void e(List list) {
        if (this.f10414d == null) {
            return;
        }
        f10409g.d("cancelDownloads(%s)", list);
        d5.o oVar = new d5.o();
        this.f10414d.q(new d(this, oVar, list, oVar), oVar);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void f(int i9, String str, String str2, int i10) {
        if (this.f10414d != null) {
            f10409g.d("notifyChunkTransferred", new Object[0]);
            d5.o oVar = new d5.o();
            this.f10414d.q(new f(this, oVar, i9, str, str2, i10, oVar), oVar);
            return;
        }
        throw new f1("The Play Store app is not installed or is an unofficial version.", i9);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final d5.d g(Map map) {
        if (this.f10414d == null) {
            return j();
        }
        f10409g.d("syncPacks", new Object[0]);
        d5.o oVar = new d5.o();
        this.f10414d.q(new e(this, oVar, map, oVar), oVar);
        return oVar.a();
    }
}
