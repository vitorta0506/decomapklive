package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public abstract class f<T extends IInterface> extends d<T> implements a.f {
    private final e F;
    private final Set G;
    @Nullable
    private final Account H;

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public f(@NonNull Context context, @NonNull Looper looper, int i9, @NonNull e eVar, @NonNull d.a aVar, @NonNull d.b bVar) {
        this(context, looper, i9, eVar, (v3.c) aVar, (v3.h) bVar);
    }

    private final Set i0(@NonNull Set set) {
        Set<Scope> h02 = h0(set);
        for (Scope scope : h02) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return h02;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final e g0() {
        return this.F;
    }

    @Override // com.google.android.gms.common.api.a.f
    @NonNull
    public Set<Scope> h() {
        return f() ? this.G : Collections.emptySet();
    }

    @NonNull
    protected Set<Scope> h0(@NonNull Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.d
    @Nullable
    public final Account r() {
        return this.H;
    }

    @Override // com.google.android.gms.common.internal.d
    @Nullable
    protected final Executor t() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.d
    @NonNull
    protected final Set<Scope> z() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f(@NonNull Context context, @NonNull Looper looper, int i9, @NonNull e eVar, @NonNull v3.c cVar, @NonNull v3.h hVar) {
        this(context, looper, g.b(context), com.google.android.gms.common.a.m(), i9, eVar, (v3.c) p.j(cVar), (v3.h) p.j(hVar));
    }

    protected f(@NonNull Context context, @NonNull Looper looper, @NonNull g gVar, @NonNull com.google.android.gms.common.a aVar, int i9, @NonNull e eVar, @Nullable v3.c cVar, @Nullable v3.h hVar) {
        super(context, looper, gVar, aVar, i9, cVar == null ? null : new e0(cVar), hVar == null ? null : new f0(hVar), eVar.j());
        this.F = eVar;
        this.H = eVar.a();
        this.G = i0(eVar.d());
    }
}
