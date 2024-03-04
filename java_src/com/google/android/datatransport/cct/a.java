package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import n1.g;
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: c  reason: collision with root package name */
    static final String f5218c;

    /* renamed from: d  reason: collision with root package name */
    static final String f5219d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f5220e;

    /* renamed from: f  reason: collision with root package name */
    private static final Set<l1.b> f5221f;

    /* renamed from: g  reason: collision with root package name */
    public static final a f5222g;

    /* renamed from: h  reason: collision with root package name */
    public static final a f5223h;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f5224a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f5225b;

    static {
        String a10 = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f5218c = a10;
        String a11 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f5219d = a11;
        String a12 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f5220e = a12;
        f5221f = Collections.unmodifiableSet(new HashSet(Arrays.asList(l1.b.b("proto"), l1.b.b("json"))));
        f5222g = new a(a10, null);
        f5223h = new a(a11, a12);
    }

    public a(@NonNull String str, @Nullable String str2) {
        this.f5224a = str;
        this.f5225b = str2;
    }

    @NonNull
    public static a c(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new a(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // n1.g
    public Set<l1.b> a() {
        return f5221f;
    }

    @Nullable
    public byte[] b() {
        String str = this.f5225b;
        if (str == null && this.f5224a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.f5224a;
        objArr[2] = "\\";
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    @Nullable
    public String d() {
        return this.f5225b;
    }

    @NonNull
    public String e() {
        return this.f5224a;
    }

    @Override // n1.f
    @Nullable
    public byte[] getExtras() {
        return b();
    }

    @Override // n1.f
    @NonNull
    public String getName() {
        return "cct";
    }
}
