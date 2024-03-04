package com.google.android.gms.measurement.internal;

import android.util.Pair;
import androidx.annotation.WorkerThread;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import n3.a;
/* loaded from: classes2.dex */
public final class a8 extends t8 {

    /* renamed from: d  reason: collision with root package name */
    private final Map f9271d;

    /* renamed from: e  reason: collision with root package name */
    public final t3 f9272e;

    /* renamed from: f  reason: collision with root package name */
    public final t3 f9273f;

    /* renamed from: g  reason: collision with root package name */
    public final t3 f9274g;

    /* renamed from: h  reason: collision with root package name */
    public final t3 f9275h;

    /* renamed from: i  reason: collision with root package name */
    public final t3 f9276i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a8(d9 d9Var) {
        super(d9Var);
        this.f9271d = new HashMap();
        x3 F = this.f9432a.F();
        F.getClass();
        this.f9272e = new t3(F, "last_delete_stale", 0L);
        x3 F2 = this.f9432a.F();
        F2.getClass();
        this.f9273f = new t3(F2, "backoff", 0L);
        x3 F3 = this.f9432a.F();
        F3.getClass();
        this.f9274g = new t3(F3, "last_upload", 0L);
        x3 F4 = this.f9432a.F();
        F4.getClass();
        this.f9275h = new t3(F4, "last_upload_attempt", 0L);
        x3 F5 = this.f9432a.F();
        F5.getClass();
        this.f9276i = new t3(F5, "midnight_offset", 0L);
    }

    @Override // com.google.android.gms.measurement.internal.t8
    protected final boolean l() {
        return false;
    }

    @WorkerThread
    @Deprecated
    final Pair m(String str) {
        z7 z7Var;
        a.C0580a a10;
        h();
        long b10 = this.f9432a.c().b();
        z7 z7Var2 = (z7) this.f9271d.get(str);
        if (z7Var2 != null && b10 < z7Var2.f10096c) {
            return new Pair(z7Var2.f10094a, Boolean.valueOf(z7Var2.f10095b));
        }
        n3.a.b(true);
        long r10 = b10 + this.f9432a.z().r(str, z2.f10030c);
        try {
            a10 = n3.a.a(this.f9432a.f());
        } catch (Exception e10) {
            this.f9432a.b().q().b("Unable to get advertising id", e10);
            z7Var = new z7("", false, r10);
        }
        if (a10 == null) {
            return new Pair("", Boolean.FALSE);
        }
        String a11 = a10.a();
        if (a11 != null) {
            z7Var = new z7(a11, a10.b(), r10);
        } else {
            z7Var = new z7("", a10.b(), r10);
        }
        this.f9271d.put(str, z7Var);
        n3.a.b(false);
        return new Pair(z7Var.f10094a, Boolean.valueOf(z7Var.f10095b));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final Pair n(String str, p4.a aVar) {
        if (aVar.i(zzah.AD_STORAGE)) {
            return m(str);
        }
        return new Pair("", Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    @Deprecated
    public final String o(String str, boolean z10) {
        h();
        String str2 = z10 ? (String) m(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest t10 = k9.t();
        if (t10 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, t10.digest(str2.getBytes())));
    }
}
