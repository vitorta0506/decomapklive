package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes2.dex */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final int VERSION_CODE = 2;

    /* renamed from: a  reason: collision with root package name */
    final int f7362a;

    /* renamed from: b  reason: collision with root package name */
    Bundle f7363b;
    @NonNull
    public final byte[] body;
    public final int httpMethod;
    public final long timeoutMillis;
    @NonNull
    public final String url;
    @NonNull
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new a();
    public static final int HTTP_METHOD_GET = 0;
    public static final int HTTP_METHOD_POST = 1;
    public static final int HTTP_METHOD_PUT = 2;
    public static final int HTTP_METHOD_DELETE = 3;
    public static final int HTTP_METHOD_HEAD = 4;
    public static final int HTTP_METHOD_OPTIONS = 5;
    public static final int HTTP_METHOD_TRACE = 6;
    public static final int HTTP_METHOD_PATCH = 7;
    public static final int LAST_CODE = 7;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProxyRequest(int i9, String str, int i10, long j10, byte[] bArr, Bundle bundle) {
        this.f7362a = i9;
        this.url = str;
        this.httpMethod = i10;
        this.timeoutMillis = j10;
        this.body = bArr;
        this.f7363b = bundle;
    }

    @NonNull
    public String toString() {
        String str = this.url;
        int i9 = this.httpMethod;
        return "ProxyRequest[ url: " + str + ", method: " + i9 + " ]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.q(parcel, 1, this.url, false);
        x3.a.k(parcel, 2, this.httpMethod);
        x3.a.m(parcel, 3, this.timeoutMillis);
        x3.a.f(parcel, 4, this.body, false);
        x3.a.e(parcel, 5, this.f7363b, false);
        x3.a.k(parcel, 1000, this.f7362a);
        x3.a.b(parcel, a10);
    }
}
