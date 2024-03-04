package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public final class n1 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8898a = "https://www.recaptcha.net";

    /* renamed from: b  reason: collision with root package name */
    public static final ExecutorService f8899b;

    static {
        ye.a();
        f8899b = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
    }

    public static final String a() {
        String str = f8898a;
        StringBuilder sb2 = new StringBuilder(str.length() + 32);
        sb2.append(str);
        sb2.append("/recaptcha/api3/accountchallenge");
        return sb2.toString();
    }

    public static final String b() {
        String str = f8898a;
        StringBuilder sb2 = new StringBuilder(str.length() + 29);
        sb2.append(str);
        sb2.append("/recaptcha/api3/accountverify");
        return sb2.toString();
    }
}
