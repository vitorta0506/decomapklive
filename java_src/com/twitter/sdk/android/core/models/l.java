package com.twitter.sdk.android.core.models;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.BaseConfig;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.util.List;
/* loaded from: classes4.dex */
public class l {
    @SerializedName(alternate = {"full_text"}, value = ViewHierarchyConstants.TEXT_KEY)
    public final String A;
    @SerializedName("display_text_range")
    public final List<Integer> B;
    @SerializedName("truncated")
    public final boolean C;
    @SerializedName("user")
    public final User D;
    @SerializedName("withheld_copyright")
    public final boolean E;
    @SerializedName("withheld_in_countries")
    public final List<String> F;
    @SerializedName("withheld_scope")
    public final String G;
    @SerializedName("card")
    public final d H;
    @SerializedName("coordinates")

    /* renamed from: a  reason: collision with root package name */
    public final e f35255a;
    @SerializedName("created_at")

    /* renamed from: b  reason: collision with root package name */
    public final String f35256b;
    @SerializedName("current_user_retweet")

    /* renamed from: c  reason: collision with root package name */
    public final Object f35257c;
    @SerializedName("entities")

    /* renamed from: d  reason: collision with root package name */
    public final n f35258d;
    @SerializedName("extended_entities")

    /* renamed from: e  reason: collision with root package name */
    public final n f35259e;
    @SerializedName("favorite_count")

    /* renamed from: f  reason: collision with root package name */
    public final Integer f35260f;
    @SerializedName("favorited")

    /* renamed from: g  reason: collision with root package name */
    public final boolean f35261g;
    @SerializedName("filter_level")

    /* renamed from: h  reason: collision with root package name */
    public final String f35262h;
    @SerializedName("id")

    /* renamed from: i  reason: collision with root package name */
    public final long f35263i;
    @SerializedName("id_str")

    /* renamed from: j  reason: collision with root package name */
    public final String f35264j;
    @SerializedName("in_reply_to_screen_name")

    /* renamed from: k  reason: collision with root package name */
    public final String f35265k;
    @SerializedName("in_reply_to_status_id")

    /* renamed from: l  reason: collision with root package name */
    public final long f35266l;
    @SerializedName("in_reply_to_status_id_str")

    /* renamed from: m  reason: collision with root package name */
    public final String f35267m;
    @SerializedName("in_reply_to_user_id")

    /* renamed from: n  reason: collision with root package name */
    public final long f35268n;
    @SerializedName("in_reply_to_user_id_str")

    /* renamed from: o  reason: collision with root package name */
    public final String f35269o;
    @SerializedName(VKApiCodes.PARAM_LANG)

    /* renamed from: p  reason: collision with root package name */
    public final String f35270p;
    @SerializedName(BaseConfig.DB_TYPE_PLACE_NAME)

    /* renamed from: q  reason: collision with root package name */
    public final k f35271q;
    @SerializedName("possibly_sensitive")

    /* renamed from: r  reason: collision with root package name */
    public final boolean f35272r;
    @SerializedName("scopes")

    /* renamed from: s  reason: collision with root package name */
    public final Object f35273s;
    @SerializedName("quoted_status_id")

    /* renamed from: t  reason: collision with root package name */
    public final long f35274t;
    @SerializedName("quoted_status_id_str")

    /* renamed from: u  reason: collision with root package name */
    public final String f35275u;
    @SerializedName("quoted_status")

    /* renamed from: v  reason: collision with root package name */
    public final l f35276v;
    @SerializedName("retweet_count")

    /* renamed from: w  reason: collision with root package name */
    public final int f35277w;
    @SerializedName("retweeted")

    /* renamed from: x  reason: collision with root package name */
    public final boolean f35278x;
    @SerializedName("retweeted_status")

    /* renamed from: y  reason: collision with root package name */
    public final l f35279y;
    @SerializedName(ShareConstants.FEED_SOURCE_PARAM)

    /* renamed from: z  reason: collision with root package name */
    public final String f35280z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private l() {
        /*
            r39 = this;
            r0 = r39
            com.twitter.sdk.android.core.models.n r5 = com.twitter.sdk.android.core.models.n.f35307f
            r4 = r5
            r1 = 0
            java.lang.Integer r6 = java.lang.Integer.valueOf(r1)
            r1 = 0
            r2 = 0
            r3 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            java.lang.String r11 = "0"
            r12 = 0
            r13 = 0
            java.lang.String r15 = "0"
            r16 = 0
            java.lang.String r18 = "0"
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r23 = 0
            java.lang.String r25 = "0"
            r26 = 0
            r27 = 0
            r28 = 0
            r29 = 0
            r30 = 0
            r31 = 0
            r32 = 0
            r33 = 0
            r34 = 0
            r35 = 0
            r36 = 0
            r37 = 0
            r38 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r11, r12, r13, r15, r16, r18, r19, r20, r21, r22, r23, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.sdk.android.core.models.l.<init>():void");
    }

    public long a() {
        return this.f35263i;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof l) && this.f35263i == ((l) obj).f35263i;
    }

    public int hashCode() {
        return (int) this.f35263i;
    }

    public l(e eVar, String str, Object obj, n nVar, n nVar2, Integer num, boolean z10, String str2, long j10, String str3, String str4, long j11, String str5, long j12, String str6, String str7, k kVar, boolean z11, Object obj2, long j13, String str8, l lVar, int i9, boolean z12, l lVar2, String str9, String str10, List<Integer> list, boolean z13, User user, boolean z14, List<String> list2, String str11, d dVar) {
        this.f35255a = eVar;
        this.f35256b = str;
        this.f35257c = obj;
        this.f35258d = nVar == null ? n.f35307f : nVar;
        this.f35259e = nVar2 == null ? n.f35307f : nVar2;
        this.f35260f = num;
        this.f35261g = z10;
        this.f35262h = str2;
        this.f35263i = j10;
        this.f35264j = str3;
        this.f35265k = str4;
        this.f35266l = j11;
        this.f35267m = str5;
        this.f35268n = j12;
        this.f35269o = str6;
        this.f35270p = str7;
        this.f35271q = kVar;
        this.f35272r = z11;
        this.f35273s = obj2;
        this.f35274t = j13;
        this.f35275u = str8;
        this.f35276v = lVar;
        this.f35277w = i9;
        this.f35278x = z12;
        this.f35279y = lVar2;
        this.f35280z = str9;
        this.A = str10;
        this.B = j.a(list);
        this.C = z13;
        this.D = user;
        this.E = z14;
        this.F = j.a(list2);
        this.G = str11;
        this.H = dVar;
    }
}
