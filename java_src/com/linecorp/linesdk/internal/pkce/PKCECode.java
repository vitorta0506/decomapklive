package com.linecorp.linesdk.internal.pkce;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import yc.e;
/* loaded from: classes4.dex */
public class PKCECode implements Parcelable {
    public static final Parcelable.Creator<PKCECode> CREATOR = new a();
    private static final int LENGTH_VERIFIER = 64;
    @NonNull
    private final String challenge;
    @NonNull
    private final String verifier;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<PKCECode> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PKCECode createFromParcel(Parcel parcel) {
            return new PKCECode(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PKCECode[] newArray(int i9) {
            return new PKCECode[i9];
        }
    }

    /* synthetic */ PKCECode(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    private static String a(@NonNull String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static String b() {
        return e.a(64);
    }

    public static PKCECode e() {
        return new PKCECode(b());
    }

    @NonNull
    public String c() {
        return this.challenge;
    }

    @NonNull
    public String d() {
        return this.verifier;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PKCECode) {
            PKCECode pKCECode = (PKCECode) obj;
            if (this.verifier.equals(pKCECode.verifier)) {
                return this.challenge.equals(pKCECode.challenge);
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return (this.verifier.hashCode() * 31) + this.challenge.hashCode();
    }

    public String toString() {
        return "PKCECode{verifier='" + this.verifier + "', challenge='" + this.challenge + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.verifier);
    }

    private PKCECode(@NonNull String str) {
        this.verifier = str;
        this.challenge = a(str);
    }

    private PKCECode(Parcel parcel) {
        String readString = parcel.readString();
        this.verifier = readString;
        this.challenge = a(readString);
    }
}
