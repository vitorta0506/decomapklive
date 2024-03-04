package com.linecorp.linesdk.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.Locale;
import qc.e;
import yc.d;
/* loaded from: classes4.dex */
public class LineAuthenticationParams implements Parcelable {
    public static final Parcelable.Creator<LineAuthenticationParams> CREATOR = new a();
    @Nullable
    private final BotPrompt botPrompt;
    @Nullable
    private final String nonce;
    @NonNull
    private final List<e> scopes;
    @Nullable
    private final Locale uiLocale;

    /* loaded from: classes4.dex */
    public enum BotPrompt {
        normal,
        aggressive
    }

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<LineAuthenticationParams> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineAuthenticationParams createFromParcel(Parcel parcel) {
            return new LineAuthenticationParams(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineAuthenticationParams[] newArray(int i9) {
            return new LineAuthenticationParams[i9];
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private List<e> f28068a;

        /* renamed from: b  reason: collision with root package name */
        private String f28069b;

        /* renamed from: c  reason: collision with root package name */
        private BotPrompt f28070c;

        /* renamed from: d  reason: collision with root package name */
        private Locale f28071d;

        public LineAuthenticationParams e() {
            return new LineAuthenticationParams(this, (a) null);
        }

        public b f(List<e> list) {
            this.f28068a = list;
            return this;
        }
    }

    /* synthetic */ LineAuthenticationParams(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Nullable
    public BotPrompt a() {
        return this.botPrompt;
    }

    @Nullable
    public String b() {
        return this.nonce;
    }

    @NonNull
    public List<e> c() {
        return this.scopes;
    }

    @Nullable
    public Locale d() {
        return this.uiLocale;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeStringList(e.a(this.scopes));
        parcel.writeString(this.nonce);
        d.d(parcel, this.botPrompt);
        parcel.writeSerializable(this.uiLocale);
    }

    /* synthetic */ LineAuthenticationParams(b bVar, a aVar) {
        this(bVar);
    }

    private LineAuthenticationParams(b bVar) {
        this.scopes = bVar.f28068a;
        this.nonce = bVar.f28069b;
        this.botPrompt = bVar.f28070c;
        this.uiLocale = bVar.f28071d;
    }

    private LineAuthenticationParams(@NonNull Parcel parcel) {
        this.scopes = e.b(parcel.createStringArrayList());
        this.nonce = parcel.readString();
        this.botPrompt = (BotPrompt) d.b(parcel, BotPrompt.class);
        this.uiLocale = (Locale) parcel.readSerializable();
    }
}
