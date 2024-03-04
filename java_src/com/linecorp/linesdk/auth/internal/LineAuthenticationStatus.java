package com.linecorp.linesdk.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.linecorp.linesdk.internal.pkce.PKCECode;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class LineAuthenticationStatus implements Parcelable {
    public static final Parcelable.Creator<LineAuthenticationStatus> CREATOR = new a();
    @Nullable
    private String oAuthState;
    @Nullable
    private String openIdNonce;
    @Nullable
    private PKCECode pkceCode;
    @Nullable
    private String sentRedirectUri;
    private b status;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineAuthenticationStatus> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineAuthenticationStatus createFromParcel(Parcel parcel) {
            return new LineAuthenticationStatus(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineAuthenticationStatus[] newArray(int i9) {
            return new LineAuthenticationStatus[i9];
        }
    }

    /* loaded from: classes4.dex */
    enum b {
        INIT,
        STARTED,
        INTENT_RECEIVED,
        INTENT_HANDLED
    }

    /* synthetic */ LineAuthenticationStatus(Parcel parcel, a aVar) {
        this(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.status = b.INTENT_HANDLED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.status = b.INTENT_RECEIVED;
    }

    public void c() {
        this.status = b.STARTED;
    }

    @Nullable
    public String d() {
        return this.oAuthState;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public String e() {
        return this.openIdNonce;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public PKCECode f() {
        return this.pkceCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String g() {
        return this.sentRedirectUri;
    }

    @NonNull
    public b h() {
        return this.status;
    }

    public void i(@Nullable String str) {
        this.oAuthState = str;
    }

    public void j(@Nullable String str) {
        this.openIdNonce = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(@Nullable PKCECode pKCECode) {
        this.pkceCode = pKCECode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(@Nullable String str) {
        this.sentRedirectUri = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.pkceCode, i9);
        parcel.writeString(this.sentRedirectUri);
        parcel.writeByte((byte) this.status.ordinal());
        parcel.writeString(this.oAuthState);
        parcel.writeString(this.openIdNonce);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LineAuthenticationStatus() {
        this.status = b.INIT;
    }

    private LineAuthenticationStatus(@NonNull Parcel parcel) {
        this.status = b.INIT;
        this.pkceCode = (PKCECode) parcel.readParcelable(PKCECode.class.getClassLoader());
        this.sentRedirectUri = parcel.readString();
        this.status = b.values()[parcel.readByte()];
        this.oAuthState = parcel.readString();
        this.openIdNonce = parcel.readString();
    }
}
