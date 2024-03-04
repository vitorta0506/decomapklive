package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class WebImage extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<WebImage> CREATOR = new d();

    /* renamed from: a  reason: collision with root package name */
    final int f7652a;
    private final Uri zab;
    private final int zac;
    private final int zad;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebImage(int i9, Uri uri, int i10, int i11) {
        this.f7652a = i9;
        this.zab = uri;
        this.zac = i10;
        this.zad = i11;
    }

    public int I() {
        return this.zad;
    }

    @NonNull
    public Uri K() {
        return this.zab;
    }

    public int L() {
        return this.zac;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof WebImage)) {
            WebImage webImage = (WebImage) obj;
            if (n.b(this.zab, webImage.zab) && this.zac == webImage.zac && this.zad == webImage.zad) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return n.c(this.zab, Integer.valueOf(this.zac), Integer.valueOf(this.zad));
    }

    @NonNull
    public String toString() {
        return String.format(Locale.US, "Image %dx%d %s", Integer.valueOf(this.zac), Integer.valueOf(this.zad), this.zab.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7652a);
        x3.a.p(parcel, 2, K(), i9, false);
        x3.a.k(parcel, 3, L());
        x3.a.k(parcel, 4, I());
        x3.a.b(parcel, a10);
    }

    public WebImage(@NonNull Uri uri, int i9, int i10) throws IllegalArgumentException {
        this(1, uri, i9, i10);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        }
        if (i9 < 0 || i10 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WebImage(@androidx.annotation.NonNull org.json.JSONObject r5) throws java.lang.IllegalArgumentException {
        /*
            r4 = this;
            android.net.Uri r0 = android.net.Uri.EMPTY
            java.lang.String r1 = "url"
            boolean r2 = r5.has(r1)
            if (r2 == 0) goto L12
            java.lang.String r1 = r5.getString(r1)     // Catch: org.json.JSONException -> L12
            android.net.Uri r0 = android.net.Uri.parse(r1)     // Catch: org.json.JSONException -> L12
        L12:
            java.lang.String r1 = "width"
            r2 = 0
            int r1 = r5.optInt(r1, r2)
            java.lang.String r3 = "height"
            int r5 = r5.optInt(r3, r2)
            r4.<init>(r0, r1, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.images.WebImage.<init>(org.json.JSONObject):void");
    }
}
