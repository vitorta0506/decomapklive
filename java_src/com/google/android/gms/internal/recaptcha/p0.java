package com.google.android.gms.internal.recaptcha;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public final class p0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8959a = "https://www.recaptcha.net";

    /* renamed from: b  reason: collision with root package name */
    public static final ExecutorService f8960b;

    static {
        ye.a();
        f8960b = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
    }

    public static final String a() {
        String str = f8959a;
        StringBuilder sb2 = new StringBuilder(str.length() + 18);
        sb2.append(str);
        sb2.append("/recaptcha/api3/ae");
        return sb2.toString();
    }

    public static final String b() {
        String str = f8959a;
        StringBuilder sb2 = new StringBuilder(str.length() + 18);
        sb2.append(str);
        sb2.append("/recaptcha/api3/ac");
        return sb2.toString();
    }
}
