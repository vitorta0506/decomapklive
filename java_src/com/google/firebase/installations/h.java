package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: b  reason: collision with root package name */
    public static final long f13911b = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f13912c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* renamed from: d  reason: collision with root package name */
    private static h f13913d;

    /* renamed from: a  reason: collision with root package name */
    private final o6.a f13914a;

    private h(o6.a aVar) {
        this.f13914a = aVar;
    }

    public static h c() {
        return d(o6.b.b());
    }

    public static h d(o6.a aVar) {
        if (f13913d == null) {
            f13913d = new h(aVar);
        }
        return f13913d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(@Nullable String str) {
        return f13912c.matcher(str).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(@Nullable String str) {
        return str.contains(CertificateUtil.DELIMITER);
    }

    public long a() {
        return this.f13914a.a();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(@NonNull com.google.firebase.installations.local.b bVar) {
        return TextUtils.isEmpty(bVar.b()) || bVar.h() + bVar.c() < b() + f13911b;
    }
}
