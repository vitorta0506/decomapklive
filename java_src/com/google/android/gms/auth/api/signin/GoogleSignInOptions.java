package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.login.LoginConfiguration;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.p;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements a.d, ReflectedParcelable {
    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    @NonNull
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;
    @NonNull
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    @NonNull
    public static final Scope zaa = new Scope("profile");
    @NonNull
    public static final Scope zab = new Scope("email");
    @NonNull
    public static final Scope zac = new Scope(LoginConfiguration.OPENID);
    @NonNull
    public static final Scope zad;
    @NonNull
    public static final Scope zae;
    private static Comparator zag;

    /* renamed from: a  reason: collision with root package name */
    final int f7368a;
    private final ArrayList zah;
    @Nullable
    private Account zai;
    private boolean zaj;
    private final boolean zak;
    private final boolean zal;
    @Nullable
    private String zam;
    @Nullable
    private String zan;
    private ArrayList zao;
    @Nullable
    private String zap;
    private Map zaq;

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        zad = scope;
        zae = new Scope("https://www.googleapis.com/auth/games");
        a aVar = new a();
        aVar.c();
        aVar.e();
        DEFAULT_SIGN_IN = aVar.a();
        a aVar2 = new a();
        aVar2.f(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = aVar2.a();
        CREATOR = new e();
        zag = new d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleSignInOptions(int i9, ArrayList arrayList, @Nullable Account account, boolean z10, boolean z11, boolean z12, @Nullable String str, @Nullable String str2, ArrayList arrayList2, @Nullable String str3) {
        this(i9, arrayList, account, z10, z11, z12, str, str2, l1(arrayList2), str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map l1(@Nullable List list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) it.next();
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.I()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    @Nullable
    public static GoogleSignInOptions p0(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i9 = 0; i9 < length; i9++) {
            hashSet.add(new Scope(jSONArray.getString(i9)));
        }
        String optString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(optString) ? new Account(optString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), (String) null);
    }

    @NonNull
    public final String E0() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zah, zag);
            Iterator it = this.zah.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).I());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.zai;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.zaj);
            jSONObject.put("forceCodeForRefreshToken", this.zal);
            jSONObject.put("serverAuthRequested", this.zak);
            if (!TextUtils.isEmpty(this.zam)) {
                jSONObject.put("serverClientId", this.zam);
            }
            if (!TextUtils.isEmpty(this.zan)) {
                jSONObject.put("hostedDomain", this.zan);
            }
            return jSONObject.toString();
        } catch (JSONException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Nullable
    public Account F() {
        return this.zai;
    }

    @NonNull
    public ArrayList<GoogleSignInOptionsExtensionParcelable> I() {
        return this.zao;
    }

    @Nullable
    public String K() {
        return this.zap;
    }

    @NonNull
    public ArrayList<Scope> L() {
        return new ArrayList<>(this.zah);
    }

    @Nullable
    public String M() {
        return this.zam;
    }

    public boolean P() {
        return this.zal;
    }

    public boolean R() {
        return this.zaj;
    }

    public boolean c0() {
        return this.zak;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        if (r1.equals(r4.F()) != false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@androidx.annotation.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r4 = (com.google.android.gms.auth.api.signin.GoogleSignInOptions) r4     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r1 = r3.zao     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 > 0) goto L90
            java.util.ArrayList r1 = r4.zao     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 <= 0) goto L18
            goto L90
        L18:
            java.util.ArrayList r1 = r3.zah     // Catch: java.lang.ClassCastException -> L90
            int r1 = r1.size()     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.L()     // Catch: java.lang.ClassCastException -> L90
            int r2 = r2.size()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.util.ArrayList r1 = r3.zah     // Catch: java.lang.ClassCastException -> L90
            java.util.ArrayList r2 = r4.L()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.containsAll(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L35
            goto L90
        L35:
            android.accounts.Account r1 = r3.zai     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L40
            android.accounts.Account r1 = r4.F()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L90
            goto L4a
        L40:
            android.accounts.Account r2 = r4.F()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
        L4a:
            java.lang.String r1 = r3.zam     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L5d
            java.lang.String r1 = r4.M()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.ClassCastException -> L90
            if (r1 == 0) goto L90
            goto L6a
        L5d:
            java.lang.String r1 = r3.zam     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r2 = r4.M()     // Catch: java.lang.ClassCastException -> L90
            boolean r1 = r1.equals(r2)     // Catch: java.lang.ClassCastException -> L90
            if (r1 != 0) goto L6a
            goto L90
        L6a:
            boolean r1 = r3.zal     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.P()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.zaj     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.R()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            boolean r1 = r3.zak     // Catch: java.lang.ClassCastException -> L90
            boolean r2 = r4.c0()     // Catch: java.lang.ClassCastException -> L90
            if (r1 != r2) goto L90
            java.lang.String r1 = r3.zap     // Catch: java.lang.ClassCastException -> L90
            java.lang.String r4 = r4.K()     // Catch: java.lang.ClassCastException -> L90
            boolean r4 = android.text.TextUtils.equals(r1, r4)     // Catch: java.lang.ClassCastException -> L90
            if (r4 == 0) goto L90
            r4 = 1
            return r4
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.GoogleSignInOptions.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.zah;
        int size = arrayList2.size();
        for (int i9 = 0; i9 < size; i9++) {
            arrayList.add(((Scope) arrayList2.get(i9)).I());
        }
        Collections.sort(arrayList);
        t3.a aVar = new t3.a();
        aVar.a(arrayList);
        aVar.a(this.zai);
        aVar.a(this.zam);
        aVar.c(this.zal);
        aVar.c(this.zaj);
        aVar.c(this.zak);
        aVar.a(this.zap);
        return aVar.b();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.k(parcel, 1, this.f7368a);
        x3.a.u(parcel, 2, L(), false);
        x3.a.p(parcel, 3, F(), i9, false);
        x3.a.c(parcel, 4, R());
        x3.a.c(parcel, 5, c0());
        x3.a.c(parcel, 6, P());
        x3.a.q(parcel, 7, M(), false);
        x3.a.q(parcel, 8, this.zan, false);
        x3.a.u(parcel, 9, I(), false);
        x3.a.q(parcel, 10, K(), false);
        x3.a.b(parcel, a10);
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private Set f7369a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f7370b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f7371c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f7372d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private String f7373e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private Account f7374f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private String f7375g;

        /* renamed from: h  reason: collision with root package name */
        private Map f7376h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private String f7377i;

        public a() {
            this.f7369a = new HashSet();
            this.f7376h = new HashMap();
        }

        private final String j(String str) {
            p.f(str);
            String str2 = this.f7373e;
            boolean z10 = true;
            if (str2 != null && !str2.equals(str)) {
                z10 = false;
            }
            p.b(z10, "two different server client ids provided");
            return str;
        }

        @NonNull
        public GoogleSignInOptions a() {
            if (this.f7369a.contains(GoogleSignInOptions.zae)) {
                Set set = this.f7369a;
                Scope scope = GoogleSignInOptions.zad;
                if (set.contains(scope)) {
                    this.f7369a.remove(scope);
                }
            }
            if (this.f7372d && (this.f7374f == null || !this.f7369a.isEmpty())) {
                c();
            }
            return new GoogleSignInOptions(new ArrayList(this.f7369a), this.f7374f, this.f7372d, this.f7370b, this.f7371c, this.f7373e, this.f7375g, this.f7376h, this.f7377i);
        }

        @NonNull
        public a b() {
            this.f7369a.add(GoogleSignInOptions.zab);
            return this;
        }

        @NonNull
        public a c() {
            this.f7369a.add(GoogleSignInOptions.zac);
            return this;
        }

        @NonNull
        public a d(@NonNull String str) {
            this.f7372d = true;
            j(str);
            this.f7373e = str;
            return this;
        }

        @NonNull
        public a e() {
            this.f7369a.add(GoogleSignInOptions.zaa);
            return this;
        }

        @NonNull
        public a f(@NonNull Scope scope, @NonNull Scope... scopeArr) {
            this.f7369a.add(scope);
            this.f7369a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        @NonNull
        public a g(@NonNull String str) {
            h(str, false);
            return this;
        }

        @NonNull
        public a h(@NonNull String str, boolean z10) {
            this.f7370b = true;
            j(str);
            this.f7373e = str;
            this.f7371c = z10;
            return this;
        }

        @NonNull
        public a i(@NonNull String str) {
            this.f7377i = str;
            return this;
        }

        public a(@NonNull GoogleSignInOptions googleSignInOptions) {
            this.f7369a = new HashSet();
            this.f7376h = new HashMap();
            p.j(googleSignInOptions);
            this.f7369a = new HashSet(googleSignInOptions.zah);
            this.f7370b = googleSignInOptions.zak;
            this.f7371c = googleSignInOptions.zal;
            this.f7372d = googleSignInOptions.zaj;
            this.f7373e = googleSignInOptions.zam;
            this.f7374f = googleSignInOptions.zai;
            this.f7375g = googleSignInOptions.zan;
            this.f7376h = GoogleSignInOptions.l1(googleSignInOptions.zao);
            this.f7377i = googleSignInOptions.zap;
        }
    }

    private GoogleSignInOptions(int i9, ArrayList arrayList, @Nullable Account account, boolean z10, boolean z11, boolean z12, @Nullable String str, @Nullable String str2, Map map, @Nullable String str3) {
        this.f7368a = i9;
        this.zah = arrayList;
        this.zai = account;
        this.zaj = z10;
        this.zak = z11;
        this.zal = z12;
        this.zam = str;
        this.zan = str2;
        this.zao = new ArrayList(map.values());
        this.zaq = map;
        this.zap = str3;
    }
}
