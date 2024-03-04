package com.linecorp.linesdk.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.LineCredential;
import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.LineProfile;
import java.util.Objects;
import qc.c;
import yc.d;
/* loaded from: classes4.dex */
public class LineLoginResult implements Parcelable {
    public static final Parcelable.Creator<LineLoginResult> CREATOR = new a();
    @NonNull
    private final LineApiError errorData;
    @Nullable
    private final Boolean friendshipStatusChanged;
    @Nullable
    private final LineCredential lineCredential;
    @Nullable
    private final LineIdToken lineIdToken;
    @Nullable
    private final LineProfile lineProfile;
    @Nullable
    private final String nonce;
    @NonNull
    private final LineApiResponseCode responseCode;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements Parcelable.Creator<LineLoginResult> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineLoginResult createFromParcel(Parcel parcel) {
            return new LineLoginResult(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineLoginResult[] newArray(int i9) {
            return new LineLoginResult[i9];
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        private String f28073b;

        /* renamed from: c  reason: collision with root package name */
        private LineProfile f28074c;

        /* renamed from: d  reason: collision with root package name */
        private LineIdToken f28075d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f28076e;

        /* renamed from: f  reason: collision with root package name */
        private LineCredential f28077f;

        /* renamed from: a  reason: collision with root package name */
        private LineApiResponseCode f28072a = LineApiResponseCode.SUCCESS;

        /* renamed from: g  reason: collision with root package name */
        private LineApiError f28078g = LineApiError.DEFAULT;

        public LineLoginResult h() {
            return new LineLoginResult(this, (a) null);
        }

        public b i(LineApiError lineApiError) {
            this.f28078g = lineApiError;
            return this;
        }

        public b j(Boolean bool) {
            this.f28076e = bool;
            return this;
        }

        public b k(LineCredential lineCredential) {
            this.f28077f = lineCredential;
            return this;
        }

        public b l(LineIdToken lineIdToken) {
            this.f28075d = lineIdToken;
            return this;
        }

        public b m(LineProfile lineProfile) {
            this.f28074c = lineProfile;
            return this;
        }

        public b n(String str) {
            this.f28073b = str;
            return this;
        }

        public b o(LineApiResponseCode lineApiResponseCode) {
            this.f28072a = lineApiResponseCode;
            return this;
        }
    }

    /* synthetic */ LineLoginResult(Parcel parcel, a aVar) {
        this(parcel);
    }

    public static LineLoginResult a(@NonNull LineApiError lineApiError) {
        return c(LineApiResponseCode.AUTHENTICATION_AGENT_ERROR, lineApiError);
    }

    public static LineLoginResult b() {
        return c(LineApiResponseCode.CANCEL, LineApiError.DEFAULT);
    }

    public static LineLoginResult c(@NonNull LineApiResponseCode lineApiResponseCode, @NonNull LineApiError lineApiError) {
        return new b().o(lineApiResponseCode).i(lineApiError).h();
    }

    public static LineLoginResult d(@NonNull c<?> cVar) {
        return c(cVar.d(), cVar.c());
    }

    public static LineLoginResult l(@NonNull LineApiError lineApiError) {
        return c(LineApiResponseCode.INTERNAL_ERROR, lineApiError);
    }

    public static LineLoginResult m(@NonNull String str) {
        return l(new LineApiError(str));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public LineApiError e() {
        return this.errorData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LineLoginResult) {
            LineLoginResult lineLoginResult = (LineLoginResult) obj;
            return k() == lineLoginResult.k() && Objects.equals(j(), lineLoginResult.j()) && Objects.equals(i(), lineLoginResult.i()) && Objects.equals(h(), lineLoginResult.h()) && Objects.equals(f(), lineLoginResult.f()) && Objects.equals(g(), lineLoginResult.g()) && e().equals(lineLoginResult.e());
        }
        return false;
    }

    @NonNull
    public Boolean f() {
        Boolean bool = this.friendshipStatusChanged;
        return bool == null ? Boolean.FALSE : bool;
    }

    @Nullable
    public LineCredential g() {
        return this.lineCredential;
    }

    @Nullable
    public LineIdToken h() {
        return this.lineIdToken;
    }

    public int hashCode() {
        return Objects.hash(k(), j(), i(), h(), f(), g(), e());
    }

    @Nullable
    public LineProfile i() {
        return this.lineProfile;
    }

    @Nullable
    public String j() {
        return this.nonce;
    }

    @NonNull
    public LineApiResponseCode k() {
        return this.responseCode;
    }

    public String toString() {
        return "LineLoginResult{responseCode=" + this.responseCode + ", nonce='" + this.nonce + "', lineProfile=" + this.lineProfile + ", lineIdToken=" + this.lineIdToken + ", friendshipStatusChanged=" + this.friendshipStatusChanged + ", lineCredential=" + this.lineCredential + ", errorData=" + this.errorData + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        d.d(parcel, this.responseCode);
        parcel.writeString(this.nonce);
        parcel.writeParcelable(this.lineProfile, i9);
        parcel.writeParcelable(this.lineIdToken, i9);
        parcel.writeValue(this.friendshipStatusChanged);
        parcel.writeParcelable(this.lineCredential, i9);
        parcel.writeParcelable(this.errorData, i9);
    }

    /* synthetic */ LineLoginResult(b bVar, a aVar) {
        this(bVar);
    }

    private LineLoginResult(b bVar) {
        this.responseCode = bVar.f28072a;
        this.nonce = bVar.f28073b;
        this.lineProfile = bVar.f28074c;
        this.lineIdToken = bVar.f28075d;
        this.friendshipStatusChanged = bVar.f28076e;
        this.lineCredential = bVar.f28077f;
        this.errorData = bVar.f28078g;
    }

    private LineLoginResult(@NonNull Parcel parcel) {
        this.responseCode = (LineApiResponseCode) d.b(parcel, LineApiResponseCode.class);
        this.nonce = parcel.readString();
        this.lineProfile = (LineProfile) parcel.readParcelable(LineProfile.class.getClassLoader());
        this.lineIdToken = (LineIdToken) parcel.readParcelable(LineIdToken.class.getClassLoader());
        this.friendshipStatusChanged = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
        this.lineCredential = (LineCredential) parcel.readParcelable(LineCredential.class.getClassLoader());
        this.errorData = (LineApiError) parcel.readParcelable(LineApiError.class.getClassLoader());
    }
}
