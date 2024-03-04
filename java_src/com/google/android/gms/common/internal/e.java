package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Scope;
import com.huawei.hms.api.HuaweiApiClientImpl;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final Account f7714a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f7715b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f7716c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f7717d;

    /* renamed from: e  reason: collision with root package name */
    private final int f7718e;

    /* renamed from: f  reason: collision with root package name */
    private final View f7719f;

    /* renamed from: g  reason: collision with root package name */
    private final String f7720g;

    /* renamed from: h  reason: collision with root package name */
    private final String f7721h;

    /* renamed from: i  reason: collision with root package name */
    private final q4.a f7722i;

    /* renamed from: j  reason: collision with root package name */
    private Integer f7723j;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Account f7724a;

        /* renamed from: b  reason: collision with root package name */
        private ArraySet f7725b;

        /* renamed from: c  reason: collision with root package name */
        private String f7726c;

        /* renamed from: d  reason: collision with root package name */
        private String f7727d;

        /* renamed from: e  reason: collision with root package name */
        private q4.a f7728e = q4.a.f57106j;

        @NonNull
        public e a() {
            return new e(this.f7724a, this.f7725b, null, 0, null, this.f7726c, this.f7727d, this.f7728e, false);
        }

        @NonNull
        public a b(@NonNull String str) {
            this.f7726c = str;
            return this;
        }

        @NonNull
        public final a c(@NonNull Collection collection) {
            if (this.f7725b == null) {
                this.f7725b = new ArraySet();
            }
            this.f7725b.addAll(collection);
            return this;
        }

        @NonNull
        public final a d(Account account) {
            this.f7724a = account;
            return this;
        }

        @NonNull
        public final a e(@NonNull String str) {
            this.f7727d = str;
            return this;
        }
    }

    public e(Account account, @NonNull Set set, @NonNull Map map, int i9, View view, @NonNull String str, @NonNull String str2, q4.a aVar, boolean z10) {
        this.f7714a = account;
        Set emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.f7715b = emptySet;
        map = map == null ? Collections.emptyMap() : map;
        this.f7717d = map;
        this.f7719f = view;
        this.f7718e = i9;
        this.f7720g = str;
        this.f7721h = str2;
        this.f7722i = aVar == null ? q4.a.f57106j : aVar;
        HashSet hashSet = new HashSet(emptySet);
        for (z zVar : map.values()) {
            hashSet.addAll(zVar.f7799a);
        }
        this.f7716c = Collections.unmodifiableSet(hashSet);
    }

    @Nullable
    public Account a() {
        return this.f7714a;
    }

    @Nullable
    @Deprecated
    public String b() {
        Account account = this.f7714a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    @NonNull
    public Account c() {
        Account account = this.f7714a;
        return account != null ? account : new Account(HuaweiApiClientImpl.DEFAULT_ACCOUNT, "com.google");
    }

    @NonNull
    public Set<Scope> d() {
        return this.f7716c;
    }

    @NonNull
    public Set<Scope> e(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        z zVar = (z) this.f7717d.get(aVar);
        if (zVar != null && !zVar.f7799a.isEmpty()) {
            HashSet hashSet = new HashSet(this.f7715b);
            hashSet.addAll(zVar.f7799a);
            return hashSet;
        }
        return this.f7715b;
    }

    @NonNull
    public String f() {
        return this.f7720g;
    }

    @NonNull
    public Set<Scope> g() {
        return this.f7715b;
    }

    @NonNull
    public final q4.a h() {
        return this.f7722i;
    }

    @Nullable
    public final Integer i() {
        return this.f7723j;
    }

    @Nullable
    public final String j() {
        return this.f7721h;
    }

    public final void k(@NonNull Integer num) {
        this.f7723j = num;
    }
}
