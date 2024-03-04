package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import qc.e;
/* loaded from: classes4.dex */
public class LineCredential implements Parcelable {
    public static final Parcelable.Creator<LineCredential> CREATOR = new a();
    @NonNull
    private final LineAccessToken accessToken;
    @NonNull
    private final List<e> scopes;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineCredential> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineCredential createFromParcel(Parcel parcel) {
            return new LineCredential(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineCredential[] newArray(int i9) {
            return new LineCredential[i9];
        }
    }

    /* synthetic */ LineCredential(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    public LineAccessToken a() {
        return this.accessToken;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineCredential lineCredential = (LineCredential) obj;
        if (this.accessToken.equals(lineCredential.accessToken)) {
            return this.scopes.equals(lineCredential.scopes);
        }
        return false;
    }

    public int hashCode() {
        return (this.accessToken.hashCode() * 31) + this.scopes.hashCode();
    }

    public String toString() {
        return "LineCredential{accessToken=" + yc.a.a(this.accessToken) + ", scopes=" + this.scopes + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.accessToken, i9);
        parcel.writeStringList(e.a(this.scopes));
    }

    public LineCredential(@NonNull LineAccessToken lineAccessToken, @NonNull List<e> list) {
        this.accessToken = lineAccessToken;
        this.scopes = list;
    }

    private LineCredential(@NonNull Parcel parcel) {
        this.accessToken = (LineAccessToken) parcel.readParcelable(LineAccessToken.class.getClassLoader());
        ArrayList arrayList = new ArrayList(8);
        parcel.readStringList(arrayList);
        this.scopes = e.b(arrayList);
    }
}
