package com.google.android.gms.internal.recaptcha;

import com.google.android.gms.internal.recaptcha.u6;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes2.dex */
abstract class f6<T extends u6> implements u6 {

    /* renamed from: a  reason: collision with root package name */
    private final T f8665a;

    /* renamed from: b  reason: collision with root package name */
    private final UUID f8666b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8667c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f6(String str, T t10) {
        Objects.requireNonNull(str);
        this.f8667c = str;
        this.f8665a = t10;
        this.f8666b = t10.E();
    }

    @Override // com.google.android.gms.internal.recaptcha.u6
    public final String D() {
        return this.f8667c;
    }

    @Override // com.google.android.gms.internal.recaptcha.u6
    public final UUID E() {
        return this.f8666b;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        d7.f(this);
    }

    public final String toString() {
        return d7.d(this);
    }

    @Override // com.google.android.gms.internal.recaptcha.u6
    public final T zza() {
        return this.f8665a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f6(String str, UUID uuid) {
        Objects.requireNonNull(str);
        this.f8667c = str;
        this.f8665a = null;
        this.f8666b = uuid;
    }
}
