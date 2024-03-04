package com.linecorp.linesdk.auth;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.linecorp.linesdk.ManifestParser;
import com.linecorp.linesdk.api.LineDefaultEnvConfig;
import com.linecorp.linesdk.api.LineEnvConfig;
/* loaded from: classes4.dex */
public class LineAuthenticationConfig implements Parcelable {
    @NonNull
    private final Uri apiBaseUrl;
    @NonNull
    private final String channelId;
    private final boolean isEncryptorPreparationDisabled;
    private final boolean isLineAppAuthenticationDisabled;
    @NonNull
    private final Uri openidDiscoveryDocumentUrl;
    @NonNull
    private final Uri webLoginPageUrl;
    public static final Parcelable.Creator<LineAuthenticationConfig> CREATOR = new a();
    private static int FLAGS_LINE_APP_AUTHENTICATION_DISABLED = 1;
    private static int FLAGS_ENCRYPTOR_PREPARATION_DISABLED = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements Parcelable.Creator<LineAuthenticationConfig> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineAuthenticationConfig createFromParcel(Parcel parcel) {
            return new LineAuthenticationConfig(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineAuthenticationConfig[] newArray(int i9) {
            return new LineAuthenticationConfig[i9];
        }
    }

    /* loaded from: classes4.dex */
    public static class b {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final String f28062a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private Uri f28063b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private Uri f28064c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private Uri f28065d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f28066e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f28067f;

        public b(@NonNull String str, @Nullable Context context) {
            this(str, context, new ManifestParser());
        }

        @NonNull
        public LineAuthenticationConfig g() {
            return new LineAuthenticationConfig(this, (a) null);
        }

        @NonNull
        public b h() {
            this.f28066e = true;
            return this;
        }

        @VisibleForTesting
        b(@NonNull String str, @Nullable Context context, @NonNull ManifestParser manifestParser) {
            if (!TextUtils.isEmpty(str)) {
                this.f28062a = str;
                LineEnvConfig parse = context != null ? manifestParser.parse(context) : null;
                parse = parse == null ? new LineDefaultEnvConfig() : parse;
                this.f28063b = Uri.parse(parse.getOpenIdDiscoveryDocumentUrl());
                this.f28064c = Uri.parse(parse.getApiServerBaseUri());
                this.f28065d = Uri.parse(parse.getWebLoginPageUrl());
                return;
            }
            throw new IllegalArgumentException("channelId is empty.");
        }
    }

    /* synthetic */ LineAuthenticationConfig(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    public Uri a() {
        return this.apiBaseUrl;
    }

    @NonNull
    public String b() {
        return this.channelId;
    }

    @NonNull
    public Uri c() {
        return this.openidDiscoveryDocumentUrl;
    }

    @NonNull
    public Uri d() {
        return this.webLoginPageUrl;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean e() {
        return this.isEncryptorPreparationDisabled;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineAuthenticationConfig lineAuthenticationConfig = (LineAuthenticationConfig) obj;
        if (this.isLineAppAuthenticationDisabled == lineAuthenticationConfig.isLineAppAuthenticationDisabled && this.isEncryptorPreparationDisabled == lineAuthenticationConfig.isEncryptorPreparationDisabled && this.channelId.equals(lineAuthenticationConfig.channelId) && this.openidDiscoveryDocumentUrl.equals(lineAuthenticationConfig.openidDiscoveryDocumentUrl) && this.apiBaseUrl.equals(lineAuthenticationConfig.apiBaseUrl)) {
            return this.webLoginPageUrl.equals(lineAuthenticationConfig.webLoginPageUrl);
        }
        return false;
    }

    public boolean f() {
        return this.isLineAppAuthenticationDisabled;
    }

    public int hashCode() {
        return (((((((((this.channelId.hashCode() * 31) + this.openidDiscoveryDocumentUrl.hashCode()) * 31) + this.apiBaseUrl.hashCode()) * 31) + this.webLoginPageUrl.hashCode()) * 31) + (this.isLineAppAuthenticationDisabled ? 1 : 0)) * 31) + (this.isEncryptorPreparationDisabled ? 1 : 0);
    }

    public String toString() {
        return "LineAuthenticationConfig{channelId='" + this.channelId + "', openidDiscoveryDocumentUrl=" + this.openidDiscoveryDocumentUrl + ", apiBaseUrl=" + this.apiBaseUrl + ", webLoginPageUrl=" + this.webLoginPageUrl + ", isLineAppAuthenticationDisabled=" + this.isLineAppAuthenticationDisabled + ", isEncryptorPreparationDisabled=" + this.isEncryptorPreparationDisabled + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.channelId);
        parcel.writeParcelable(this.openidDiscoveryDocumentUrl, i9);
        parcel.writeParcelable(this.apiBaseUrl, i9);
        parcel.writeParcelable(this.webLoginPageUrl, i9);
        parcel.writeInt((this.isLineAppAuthenticationDisabled ? FLAGS_LINE_APP_AUTHENTICATION_DISABLED : 0) | 0 | (this.isEncryptorPreparationDisabled ? FLAGS_ENCRYPTOR_PREPARATION_DISABLED : 0));
    }

    /* synthetic */ LineAuthenticationConfig(b bVar, a aVar) {
        this(bVar);
    }

    private LineAuthenticationConfig(@NonNull b bVar) {
        this.channelId = bVar.f28062a;
        this.openidDiscoveryDocumentUrl = bVar.f28063b;
        this.apiBaseUrl = bVar.f28064c;
        this.webLoginPageUrl = bVar.f28065d;
        this.isLineAppAuthenticationDisabled = bVar.f28066e;
        this.isEncryptorPreparationDisabled = bVar.f28067f;
    }

    private LineAuthenticationConfig(@NonNull Parcel parcel) {
        this.channelId = parcel.readString();
        this.openidDiscoveryDocumentUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.apiBaseUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.webLoginPageUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        int readInt = parcel.readInt();
        this.isLineAppAuthenticationDisabled = (FLAGS_LINE_APP_AUTHENTICATION_DISABLED & readInt) > 0;
        this.isEncryptorPreparationDisabled = (readInt & FLAGS_ENCRYPTOR_PREPARATION_DISABLED) > 0;
    }
}
