package com.google.android.gms.internal.recaptcha;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class ja extends j3 {

    /* renamed from: a  reason: collision with root package name */
    private h8<Integer> f8774a;

    /* renamed from: b  reason: collision with root package name */
    private h8<Integer> f8775b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private i9 f8776c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private HttpURLConnection f8777d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ja() {
        m7 m7Var = new h8() { // from class: com.google.android.gms.internal.recaptcha.m7
            @Override // com.google.android.gms.internal.recaptcha.h8
            public final Object zza() {
                return -1;
            }
        };
        l8 l8Var = new h8() { // from class: com.google.android.gms.internal.recaptcha.l8
            @Override // com.google.android.gms.internal.recaptcha.h8
            public final Object zza() {
                return -1;
            }
        };
        this.f8774a = m7Var;
        this.f8775b = l8Var;
        this.f8776c = null;
    }

    public final HttpURLConnection b(i9 i9Var, int i9, int i10) throws IOException {
        this.f8774a = new h8(21504) { // from class: com.google.android.gms.internal.recaptcha.l5
            @Override // com.google.android.gms.internal.recaptcha.h8
            public final Object zza() {
                return 21504;
            }
        };
        this.f8775b = new h8(-1) { // from class: com.google.android.gms.internal.recaptcha.l6
            @Override // com.google.android.gms.internal.recaptcha.h8
            public final Object zza() {
                return -1;
            }
        };
        this.f8776c = i9Var;
        k4.b(this.f8774a.zza().intValue(), this.f8775b.zza().intValue());
        i9 i9Var2 = this.f8776c;
        Objects.requireNonNull(i9Var2);
        HttpURLConnection httpURLConnection = (HttpURLConnection) i9Var2.zza();
        this.f8777d = httpURLConnection;
        return httpURLConnection;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HttpURLConnection httpURLConnection = this.f8777d;
        k4.a();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}
