package com.google.android.play.core.assetpacks;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class y1 {

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10525g = new com.google.android.play.core.internal.g("ExtractorSessionStoreView");

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10526a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10527b;

    /* renamed from: c  reason: collision with root package name */
    private final j1 f10528c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10529d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f10530e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final ReentrantLock f10531f = new ReentrantLock();

    /* JADX INFO: Access modifiers changed from: package-private */
    public y1(e0 e0Var, com.google.android.play.core.internal.g1 g1Var, j1 j1Var, com.google.android.play.core.internal.g1 g1Var2) {
        this.f10526a = e0Var;
        this.f10527b = g1Var;
        this.f10528c = j1Var;
        this.f10529d = g1Var2;
    }

    private final v1 o(int i9) {
        Map map = this.f10530e;
        Integer valueOf = Integer.valueOf(i9);
        v1 v1Var = (v1) map.get(valueOf);
        if (v1Var != null) {
            return v1Var;
        }
        throw new f1(String.format("Could not find session %d while trying to get it", valueOf), i9);
    }

    private final Object p(x1 x1Var) {
        try {
            this.f10531f.lock();
            return x1Var.zza();
        } finally {
            this.f10531f.unlock();
        }
    }

    private static String q(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        if (stringArrayList != null && !stringArrayList.isEmpty()) {
            return stringArrayList.get(0);
        }
        throw new f1("Session without pack received.");
    }

    private static List r(List list) {
        return list == null ? Collections.emptyList() : list;
    }

    private final Map s(final List list) {
        return (Map) p(new x1() { // from class: com.google.android.play.core.assetpacks.r1
            @Override // com.google.android.play.core.assetpacks.x1
            public final Object zza() {
                return y1.this.g(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean a(Bundle bundle) {
        int i9 = bundle.getInt("session_id");
        if (i9 == 0) {
            return Boolean.TRUE;
        }
        Map map = this.f10530e;
        Integer valueOf = Integer.valueOf(i9);
        if (!map.containsKey(valueOf)) {
            return Boolean.TRUE;
        }
        v1 v1Var = (v1) this.f10530e.get(valueOf);
        if (v1Var.f10457c.f10445d == 6) {
            return Boolean.FALSE;
        }
        return Boolean.valueOf(!d0.c(v1Var.f10457c.f10445d, bundle.getInt(u4.b.a("status", q(bundle)))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Boolean b(Bundle bundle) {
        int i9 = bundle.getInt("session_id");
        if (i9 == 0) {
            return Boolean.FALSE;
        }
        Map map = this.f10530e;
        Integer valueOf = Integer.valueOf(i9);
        boolean z10 = true;
        if (map.containsKey(valueOf)) {
            v1 o10 = o(i9);
            int i10 = bundle.getInt(u4.b.a("status", o10.f10457c.f10442a));
            u1 u1Var = o10.f10457c;
            int i11 = u1Var.f10445d;
            if (d0.c(i11, i10)) {
                f10525g.a("Found stale update for session %s with status %d.", valueOf, Integer.valueOf(i11));
                u1 u1Var2 = o10.f10457c;
                String str = u1Var2.f10442a;
                int i12 = u1Var2.f10445d;
                if (i12 == 4) {
                    ((c4) this.f10527b.zza()).a(i9, str);
                } else if (i12 == 5) {
                    ((c4) this.f10527b.zza()).d(i9);
                } else if (i12 == 6) {
                    ((c4) this.f10527b.zza()).e(Arrays.asList(str));
                }
            } else {
                u1Var.f10445d = i10;
                if (d0.d(i10)) {
                    l(i9);
                    this.f10528c.c(o10.f10457c.f10442a);
                } else {
                    for (w1 w1Var : u1Var.f10447f) {
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList(u4.b.b("chunk_intents", o10.f10457c.f10442a, w1Var.f10468a));
                        if (parcelableArrayList != null) {
                            for (int i13 = 0; i13 < parcelableArrayList.size(); i13++) {
                                if (parcelableArrayList.get(i13) != null && ((Intent) parcelableArrayList.get(i13)).getData() != null) {
                                    ((s1) w1Var.f10471d.get(i13)).f10418a = true;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            String q10 = q(bundle);
            long j10 = bundle.getLong(u4.b.a("pack_version", q10));
            String string = bundle.getString(u4.b.a("pack_version_tag", q10), "");
            int i14 = bundle.getInt(u4.b.a("status", q10));
            long j11 = bundle.getLong(u4.b.a("total_bytes_to_download", q10));
            ArrayList<String> stringArrayList = bundle.getStringArrayList(u4.b.a("slice_ids", q10));
            ArrayList arrayList = new ArrayList();
            for (String str2 : r(stringArrayList)) {
                ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(u4.b.b("chunk_intents", q10, str2));
                ArrayList arrayList2 = new ArrayList();
                for (Intent intent : r(parcelableArrayList2)) {
                    if (intent == null) {
                        z10 = false;
                    }
                    arrayList2.add(new s1(z10));
                    z10 = true;
                }
                String string2 = bundle.getString(u4.b.b("uncompressed_hash_sha256", q10, str2));
                long j12 = bundle.getLong(u4.b.b("uncompressed_size", q10, str2));
                int i15 = bundle.getInt(u4.b.b("patch_format", q10, str2), 0);
                arrayList.add(i15 != 0 ? new w1(str2, string2, j12, arrayList2, 0, i15) : new w1(str2, string2, j12, arrayList2, bundle.getInt(u4.b.b("compression_format", q10, str2), 0), 0));
                z10 = true;
            }
            this.f10530e.put(Integer.valueOf(i9), new v1(i9, bundle.getInt(TPDownloadProxyEnum.USER_APP_VERSION_CODE), new u1(q10, j10, i14, j11, arrayList, string)));
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object c(String str, int i9, long j10) {
        v1 v1Var = (v1) s(Arrays.asList(str)).get(str);
        if (v1Var == null || d0.d(v1Var.f10457c.f10445d)) {
            f10525g.b(String.format("Could not find pack %s while trying to complete it", str), new Object[0]);
        }
        this.f10526a.d(str, i9, j10);
        v1Var.f10457c.f10445d = 4;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object d(int i9, int i10) {
        o(i9).f10457c.f10445d = 5;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object e(int i9) {
        v1 o10 = o(i9);
        u1 u1Var = o10.f10457c;
        if (d0.d(u1Var.f10445d)) {
            this.f10526a.d(u1Var.f10442a, o10.f10456b, u1Var.f10443b);
            u1 u1Var2 = o10.f10457c;
            int i10 = u1Var2.f10445d;
            if (i10 == 5 || i10 == 6) {
                this.f10526a.e(u1Var2.f10442a, o10.f10456b, u1Var2.f10443b);
                return null;
            }
            return null;
        }
        throw new f1(String.format("Could not safely delete session %d because it is not in a terminal state.", Integer.valueOf(i9)), i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map f() {
        return this.f10530e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map g(List list) {
        HashMap hashMap = new HashMap();
        for (v1 v1Var : this.f10530e.values()) {
            String str = v1Var.f10457c.f10442a;
            if (list.contains(str)) {
                v1 v1Var2 = (v1) hashMap.get(str);
                if ((v1Var2 == null ? -1 : v1Var2.f10455a) < v1Var.f10455a) {
                    hashMap.put(str, v1Var);
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        this.f10531f.lock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(final String str, final int i9, final long j10) {
        p(new x1() { // from class: com.google.android.play.core.assetpacks.q1
            @Override // com.google.android.play.core.assetpacks.x1
            public final Object zza() {
                y1.this.c(str, i9, j10);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        this.f10531f.unlock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k(final int i9, int i10) {
        p(new x1(i9, 5) { // from class: com.google.android.play.core.assetpacks.n1

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ int f10346b;

            @Override // com.google.android.play.core.assetpacks.x1
            public final Object zza() {
                y1.this.d(this.f10346b, 5);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(final int i9) {
        p(new x1() { // from class: com.google.android.play.core.assetpacks.m1
            @Override // com.google.android.play.core.assetpacks.x1
            public final Object zza() {
                y1.this.e(i9);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m(final Bundle bundle) {
        return ((Boolean) p(new x1() { // from class: com.google.android.play.core.assetpacks.o1
            @Override // com.google.android.play.core.assetpacks.x1
            public final Object zza() {
                return y1.this.a(bundle);
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n(final Bundle bundle) {
        return ((Boolean) p(new x1() { // from class: com.google.android.play.core.assetpacks.p1
            @Override // com.google.android.play.core.assetpacks.x1
            public final Object zza() {
                return y1.this.b(bundle);
            }
        })).booleanValue();
    }
}
