package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.List;
import yc.d;
/* loaded from: classes4.dex */
public class LineIdToken implements Parcelable {
    public static final Parcelable.Creator<LineIdToken> CREATOR = new a();
    @Nullable
    private final Address address;
    @Nullable
    private final List<String> amr;
    @NonNull
    private final String audience;
    @Nullable
    private final Date authTime;
    @Nullable
    private final String birthdate;
    @Nullable
    private final String email;
    @NonNull
    private final Date expiresAt;
    @Nullable
    private final String familyName;
    @Nullable
    private final String familyNamePronunciation;
    @Nullable
    private final String gender;
    @Nullable
    private final String givenName;
    @Nullable
    private final String givenNamePronunciation;
    @NonNull
    private final Date issuedAt;
    @NonNull
    private final String issuer;
    @Nullable
    private final String middleName;
    @Nullable
    private final String name;
    @Nullable
    private final String nonce;
    @Nullable
    private final String phoneNumber;
    @Nullable
    private final String picture;
    @NonNull
    private final String rawString;
    @NonNull
    private final String subject;

    /* loaded from: classes4.dex */
    public static class Address implements Parcelable {
        public static final Parcelable.Creator<Address> CREATOR = new a();
        @Nullable
        private final String country;
        @Nullable
        private final String locality;
        @Nullable
        private final String postalCode;
        @Nullable
        private final String region;
        @Nullable
        private final String streetAddress;

        /* loaded from: classes4.dex */
        static class a implements Parcelable.Creator<Address> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Address createFromParcel(Parcel parcel) {
                return new Address(parcel, (a) null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public Address[] newArray(int i9) {
                return new Address[i9];
            }
        }

        /* loaded from: classes4.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            private String f28034a;

            /* renamed from: b  reason: collision with root package name */
            private String f28035b;

            /* renamed from: c  reason: collision with root package name */
            private String f28036c;

            /* renamed from: d  reason: collision with root package name */
            private String f28037d;

            /* renamed from: e  reason: collision with root package name */
            private String f28038e;

            public Address f() {
                return new Address(this, (a) null);
            }

            public b g(String str) {
                this.f28038e = str;
                return this;
            }

            public b h(String str) {
                this.f28035b = str;
                return this;
            }

            public b i(String str) {
                this.f28037d = str;
                return this;
            }

            public b j(String str) {
                this.f28036c = str;
                return this;
            }

            public b k(String str) {
                this.f28034a = str;
                return this;
            }
        }

        /* synthetic */ Address(Parcel parcel, a aVar) {
            this(parcel);
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
            Address address = (Address) obj;
            String str = this.streetAddress;
            if (str == null ? address.streetAddress == null : str.equals(address.streetAddress)) {
                String str2 = this.locality;
                if (str2 == null ? address.locality == null : str2.equals(address.locality)) {
                    String str3 = this.region;
                    if (str3 == null ? address.region == null : str3.equals(address.region)) {
                        String str4 = this.postalCode;
                        if (str4 == null ? address.postalCode == null : str4.equals(address.postalCode)) {
                            String str5 = this.country;
                            String str6 = address.country;
                            return str5 != null ? str5.equals(str6) : str6 == null;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            String str = this.streetAddress;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.locality;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.region;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.postalCode;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.country;
            return hashCode4 + (str5 != null ? str5.hashCode() : 0);
        }

        public String toString() {
            return "Address{streetAddress='" + this.streetAddress + "', locality='" + this.locality + "', region='" + this.region + "', postalCode='" + this.postalCode + "', country='" + this.country + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.streetAddress);
            parcel.writeString(this.locality);
            parcel.writeString(this.region);
            parcel.writeString(this.postalCode);
            parcel.writeString(this.country);
        }

        /* synthetic */ Address(b bVar, a aVar) {
            this(bVar);
        }

        private Address(b bVar) {
            this.streetAddress = bVar.f28034a;
            this.locality = bVar.f28035b;
            this.region = bVar.f28036c;
            this.postalCode = bVar.f28037d;
            this.country = bVar.f28038e;
        }

        private Address(@NonNull Parcel parcel) {
            this.streetAddress = parcel.readString();
            this.locality = parcel.readString();
            this.region = parcel.readString();
            this.postalCode = parcel.readString();
            this.country = parcel.readString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements Parcelable.Creator<LineIdToken> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public LineIdToken createFromParcel(Parcel parcel) {
            return new LineIdToken(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public LineIdToken[] newArray(int i9) {
            return new LineIdToken[i9];
        }
    }

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f28039a;

        /* renamed from: b  reason: collision with root package name */
        private String f28040b;

        /* renamed from: c  reason: collision with root package name */
        private String f28041c;

        /* renamed from: d  reason: collision with root package name */
        private String f28042d;

        /* renamed from: e  reason: collision with root package name */
        private Date f28043e;

        /* renamed from: f  reason: collision with root package name */
        private Date f28044f;

        /* renamed from: g  reason: collision with root package name */
        private Date f28045g;

        /* renamed from: h  reason: collision with root package name */
        private String f28046h;

        /* renamed from: i  reason: collision with root package name */
        private List<String> f28047i;

        /* renamed from: j  reason: collision with root package name */
        private String f28048j;

        /* renamed from: k  reason: collision with root package name */
        private String f28049k;

        /* renamed from: l  reason: collision with root package name */
        private String f28050l;

        /* renamed from: m  reason: collision with root package name */
        private String f28051m;

        /* renamed from: n  reason: collision with root package name */
        private String f28052n;

        /* renamed from: o  reason: collision with root package name */
        private String f28053o;

        /* renamed from: p  reason: collision with root package name */
        private Address f28054p;

        /* renamed from: q  reason: collision with root package name */
        private String f28055q;

        /* renamed from: r  reason: collision with root package name */
        private String f28056r;

        /* renamed from: s  reason: collision with root package name */
        private String f28057s;

        /* renamed from: t  reason: collision with root package name */
        private String f28058t;

        /* renamed from: u  reason: collision with root package name */
        private String f28059u;

        public LineIdToken A() {
            return new LineIdToken(this, (a) null);
        }

        public b B(String str) {
            this.f28051m = str;
            return this;
        }

        public b C(Date date) {
            this.f28043e = date;
            return this;
        }

        public b D(String str) {
            this.f28058t = str;
            return this;
        }

        public b E(String str) {
            this.f28059u = str;
            return this;
        }

        public b F(String str) {
            this.f28052n = str;
            return this;
        }

        public b G(String str) {
            this.f28055q = str;
            return this;
        }

        public b H(String str) {
            this.f28056r = str;
            return this;
        }

        public b I(Date date) {
            this.f28044f = date;
            return this;
        }

        public b J(String str) {
            this.f28040b = str;
            return this;
        }

        public b K(String str) {
            this.f28057s = str;
            return this;
        }

        public b L(String str) {
            this.f28048j = str;
            return this;
        }

        public b M(String str) {
            this.f28046h = str;
            return this;
        }

        public b N(String str) {
            this.f28050l = str;
            return this;
        }

        public b O(String str) {
            this.f28049k = str;
            return this;
        }

        public b P(String str) {
            this.f28039a = str;
            return this;
        }

        public b Q(String str) {
            this.f28041c = str;
            return this;
        }

        public b v(Address address) {
            this.f28054p = address;
            return this;
        }

        public b w(List<String> list) {
            this.f28047i = list;
            return this;
        }

        public b x(String str) {
            this.f28042d = str;
            return this;
        }

        public b y(Date date) {
            this.f28045g = date;
            return this;
        }

        public b z(String str) {
            this.f28053o = str;
            return this;
        }
    }

    /* synthetic */ LineIdToken(Parcel parcel, a aVar) {
        this(parcel);
    }

    @NonNull
    public String a() {
        return this.audience;
    }

    @NonNull
    public Date b() {
        return this.expiresAt;
    }

    @NonNull
    public Date c() {
        return this.issuedAt;
    }

    @NonNull
    public String d() {
        return this.issuer;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public String e() {
        return this.nonce;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineIdToken lineIdToken = (LineIdToken) obj;
        if (this.rawString.equals(lineIdToken.rawString) && this.issuer.equals(lineIdToken.issuer) && this.subject.equals(lineIdToken.subject) && this.audience.equals(lineIdToken.audience) && this.expiresAt.equals(lineIdToken.expiresAt) && this.issuedAt.equals(lineIdToken.issuedAt)) {
            Date date = this.authTime;
            if (date == null ? lineIdToken.authTime == null : date.equals(lineIdToken.authTime)) {
                String str = this.nonce;
                if (str == null ? lineIdToken.nonce == null : str.equals(lineIdToken.nonce)) {
                    List<String> list = this.amr;
                    if (list == null ? lineIdToken.amr == null : list.equals(lineIdToken.amr)) {
                        String str2 = this.name;
                        if (str2 == null ? lineIdToken.name == null : str2.equals(lineIdToken.name)) {
                            String str3 = this.picture;
                            if (str3 == null ? lineIdToken.picture == null : str3.equals(lineIdToken.picture)) {
                                String str4 = this.phoneNumber;
                                if (str4 == null ? lineIdToken.phoneNumber == null : str4.equals(lineIdToken.phoneNumber)) {
                                    String str5 = this.email;
                                    if (str5 == null ? lineIdToken.email == null : str5.equals(lineIdToken.email)) {
                                        String str6 = this.gender;
                                        if (str6 == null ? lineIdToken.gender == null : str6.equals(lineIdToken.gender)) {
                                            String str7 = this.birthdate;
                                            if (str7 == null ? lineIdToken.birthdate == null : str7.equals(lineIdToken.birthdate)) {
                                                Address address = this.address;
                                                if (address == null ? lineIdToken.address == null : address.equals(lineIdToken.address)) {
                                                    String str8 = this.givenName;
                                                    if (str8 == null ? lineIdToken.givenName == null : str8.equals(lineIdToken.givenName)) {
                                                        String str9 = this.givenNamePronunciation;
                                                        if (str9 == null ? lineIdToken.givenNamePronunciation == null : str9.equals(lineIdToken.givenNamePronunciation)) {
                                                            String str10 = this.middleName;
                                                            if (str10 == null ? lineIdToken.middleName == null : str10.equals(lineIdToken.middleName)) {
                                                                String str11 = this.familyName;
                                                                if (str11 == null ? lineIdToken.familyName == null : str11.equals(lineIdToken.familyName)) {
                                                                    String str12 = this.familyNamePronunciation;
                                                                    String str13 = lineIdToken.familyNamePronunciation;
                                                                    return str12 != null ? str12.equals(str13) : str13 == null;
                                                                }
                                                                return false;
                                                            }
                                                            return false;
                                                        }
                                                        return false;
                                                    }
                                                    return false;
                                                }
                                                return false;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @NonNull
    public String f() {
        return this.subject;
    }

    public int hashCode() {
        int hashCode = ((((((((((this.rawString.hashCode() * 31) + this.issuer.hashCode()) * 31) + this.subject.hashCode()) * 31) + this.audience.hashCode()) * 31) + this.expiresAt.hashCode()) * 31) + this.issuedAt.hashCode()) * 31;
        Date date = this.authTime;
        int hashCode2 = (hashCode + (date != null ? date.hashCode() : 0)) * 31;
        String str = this.nonce;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        List<String> list = this.amr;
        int hashCode4 = (hashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.name;
        int hashCode5 = (hashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.picture;
        int hashCode6 = (hashCode5 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.phoneNumber;
        int hashCode7 = (hashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.email;
        int hashCode8 = (hashCode7 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.gender;
        int hashCode9 = (hashCode8 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.birthdate;
        int hashCode10 = (hashCode9 + (str7 != null ? str7.hashCode() : 0)) * 31;
        Address address = this.address;
        int hashCode11 = (hashCode10 + (address != null ? address.hashCode() : 0)) * 31;
        String str8 = this.givenName;
        int hashCode12 = (hashCode11 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.givenNamePronunciation;
        int hashCode13 = (hashCode12 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.middleName;
        int hashCode14 = (hashCode13 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.familyName;
        int hashCode15 = (hashCode14 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.familyNamePronunciation;
        return hashCode15 + (str12 != null ? str12.hashCode() : 0);
    }

    public String toString() {
        return "LineIdToken{rawString='" + this.rawString + "', issuer='" + this.issuer + "', subject='" + this.subject + "', audience='" + this.audience + "', expiresAt=" + this.expiresAt + ", issuedAt=" + this.issuedAt + ", authTime=" + this.authTime + ", nonce='" + this.nonce + "', amr=" + this.amr + ", name='" + this.name + "', picture='" + this.picture + "', phoneNumber='" + this.phoneNumber + "', email='" + this.email + "', gender='" + this.gender + "', birthdate='" + this.birthdate + "', address=" + this.address + ", givenName='" + this.givenName + "', givenNamePronunciation='" + this.givenNamePronunciation + "', middleName='" + this.middleName + "', familyName='" + this.familyName + "', familyNamePronunciation='" + this.familyNamePronunciation + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.rawString);
        parcel.writeString(this.issuer);
        parcel.writeString(this.subject);
        parcel.writeString(this.audience);
        d.c(parcel, this.expiresAt);
        d.c(parcel, this.issuedAt);
        d.c(parcel, this.authTime);
        parcel.writeString(this.nonce);
        parcel.writeStringList(this.amr);
        parcel.writeString(this.name);
        parcel.writeString(this.picture);
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.email);
        parcel.writeString(this.gender);
        parcel.writeString(this.birthdate);
        parcel.writeParcelable(this.address, i9);
        parcel.writeString(this.givenName);
        parcel.writeString(this.givenNamePronunciation);
        parcel.writeString(this.middleName);
        parcel.writeString(this.familyName);
        parcel.writeString(this.familyNamePronunciation);
    }

    /* synthetic */ LineIdToken(b bVar, a aVar) {
        this(bVar);
    }

    private LineIdToken(b bVar) {
        this.rawString = bVar.f28039a;
        this.issuer = bVar.f28040b;
        this.subject = bVar.f28041c;
        this.audience = bVar.f28042d;
        this.expiresAt = bVar.f28043e;
        this.issuedAt = bVar.f28044f;
        this.authTime = bVar.f28045g;
        this.nonce = bVar.f28046h;
        this.amr = bVar.f28047i;
        this.name = bVar.f28048j;
        this.picture = bVar.f28049k;
        this.phoneNumber = bVar.f28050l;
        this.email = bVar.f28051m;
        this.gender = bVar.f28052n;
        this.birthdate = bVar.f28053o;
        this.address = bVar.f28054p;
        this.givenName = bVar.f28055q;
        this.givenNamePronunciation = bVar.f28056r;
        this.middleName = bVar.f28057s;
        this.familyName = bVar.f28058t;
        this.familyNamePronunciation = bVar.f28059u;
    }

    private LineIdToken(@NonNull Parcel parcel) {
        this.rawString = parcel.readString();
        this.issuer = parcel.readString();
        this.subject = parcel.readString();
        this.audience = parcel.readString();
        this.expiresAt = d.a(parcel);
        this.issuedAt = d.a(parcel);
        this.authTime = d.a(parcel);
        this.nonce = parcel.readString();
        this.amr = parcel.createStringArrayList();
        this.name = parcel.readString();
        this.picture = parcel.readString();
        this.phoneNumber = parcel.readString();
        this.email = parcel.readString();
        this.gender = parcel.readString();
        this.birthdate = parcel.readString();
        this.address = (Address) parcel.readParcelable(Address.class.getClassLoader());
        this.givenName = parcel.readString();
        this.givenNamePronunciation = parcel.readString();
        this.middleName = parcel.readString();
        this.familyName = parcel.readString();
        this.familyNamePronunciation = parcel.readString();
    }
}
