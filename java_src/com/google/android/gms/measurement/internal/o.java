package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import androidx.annotation.WorkerThread;
import androidx.core.content.ContextCompat;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class o extends h5 {

    /* renamed from: c  reason: collision with root package name */
    private long f9711c;

    /* renamed from: d  reason: collision with root package name */
    private String f9712d;

    /* renamed from: e  reason: collision with root package name */
    private AccountManager f9713e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f9714f;

    /* renamed from: g  reason: collision with root package name */
    private long f9715g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n4 n4Var) {
        super(n4Var);
    }

    @Override // com.google.android.gms.measurement.internal.h5
    protected final boolean j() {
        Calendar calendar = Calendar.getInstance();
        this.f9711c = TimeUnit.MINUTES.convert(calendar.get(15) + calendar.get(16), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        this.f9712d = lowerCase + "-" + lowerCase2;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final long o() {
        h();
        return this.f9715g;
    }

    public final long p() {
        k();
        return this.f9711c;
    }

    public final String q() {
        k();
        return this.f9712d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void r() {
        h();
        this.f9714f = null;
        this.f9715g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean s() {
        Account[] result;
        h();
        long a10 = this.f9432a.c().a();
        if (a10 - this.f9715g > 86400000) {
            this.f9714f = null;
        }
        Boolean bool = this.f9714f;
        if (bool == null) {
            if (ContextCompat.checkSelfPermission(this.f9432a.f(), "android.permission.GET_ACCOUNTS") != 0) {
                this.f9432a.b().y().a("Permission error checking for dasher/unicorn accounts");
                this.f9715g = a10;
                this.f9714f = Boolean.FALSE;
                return false;
            }
            if (this.f9713e == null) {
                this.f9713e = AccountManager.get(this.f9432a.f());
            }
            try {
                result = this.f9713e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            } catch (AuthenticatorException | OperationCanceledException | IOException e10) {
                this.f9432a.b().t().b("Exception checking account types", e10);
            }
            if (result != null && result.length > 0) {
                this.f9714f = Boolean.TRUE;
                this.f9715g = a10;
                return true;
            }
            Account[] result2 = this.f9713e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
            if (result2 != null && result2.length > 0) {
                this.f9714f = Boolean.TRUE;
                this.f9715g = a10;
                return true;
            }
            this.f9715g = a10;
            this.f9714f = Boolean.FALSE;
            return false;
        }
        return bool.booleanValue();
    }
}
