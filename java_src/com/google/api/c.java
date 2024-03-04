package com.google.api;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f10955a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f10956b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f10957c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f10958d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f10959e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f10960f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f10961g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f10962h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f10963i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f10964j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f10965k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f10966l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f10967m = Descriptors.FileDescriptor.s(new String[]{"\n\u0015google/api/auth.proto\u0012\ngoogle.api\"l\n\u000eAuthentication\u0012-\n\u0005rules\u0018\u0003 \u0003(\u000b2\u001e.google.api.AuthenticationRule\u0012+\n\tproviders\u0018\u0004 \u0003(\u000b2\u0018.google.api.AuthProvider\"©\u0001\n\u0012AuthenticationRule\u0012\u0010\n\bselector\u0018\u0001 \u0001(\t\u0012,\n\u0005oauth\u0018\u0002 \u0001(\u000b2\u001d.google.api.OAuthRequirements\u0012 \n\u0018allow_without_credential\u0018\u0005 \u0001(\b\u00121\n\frequirements\u0018\u0007 \u0003(\u000b2\u001b.google.api.AuthRequirement\"L\n\u000bJwtLocation\u0012\u0010\n\u0006header\u0018\u0001 \u0001(\tH\u0000\u0012\u000f\n\u0005query\u0018\u0002 \u0001(\tH\u0000\u0012\u0014\n\fvalue_prefix\u0018\u0003 \u0001(\tB\u0004\n\u0002in\"\u009a\u0001\n\fAuthProvider\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006issuer\u0018\u0002 \u0001(\t\u0012\u0010\n\bjwks_uri\u0018\u0003 \u0001(\t\u0012\u0011\n\taudiences\u0018\u0004 \u0001(\t\u0012\u0019\n\u0011authorization_url\u0018\u0005 \u0001(\t\u0012.\n\rjwt_locations\u0018\u0006 \u0003(\u000b2\u0017.google.api.JwtLocation\"-\n\u0011OAuthRequirements\u0012\u0018\n\u0010canonical_scopes\u0018\u0001 \u0001(\t\"9\n\u000fAuthRequirement\u0012\u0013\n\u000bprovider_id\u0018\u0001 \u0001(\t\u0012\u0011\n\taudiences\u0018\u0002 \u0001(\tBk\n\u000ecom.google.apiB\tAuthProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig¢\u0002\u0004GAPIb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    static {
        Descriptors.b bVar = a().m().get(0);
        f10955a = bVar;
        f10956b = new GeneratedMessageV3.e(bVar, new String[]{"Rules", "Providers"});
        Descriptors.b bVar2 = a().m().get(1);
        f10957c = bVar2;
        f10958d = new GeneratedMessageV3.e(bVar2, new String[]{"Selector", "Oauth", "AllowWithoutCredential", "Requirements"});
        Descriptors.b bVar3 = a().m().get(2);
        f10959e = bVar3;
        f10960f = new GeneratedMessageV3.e(bVar3, new String[]{"Header", "Query", "ValuePrefix", "In"});
        Descriptors.b bVar4 = a().m().get(3);
        f10961g = bVar4;
        f10962h = new GeneratedMessageV3.e(bVar4, new String[]{"Id", "Issuer", "JwksUri", "Audiences", "AuthorizationUrl", "JwtLocations"});
        Descriptors.b bVar5 = a().m().get(4);
        f10963i = bVar5;
        f10964j = new GeneratedMessageV3.e(bVar5, new String[]{"CanonicalScopes"});
        Descriptors.b bVar6 = a().m().get(5);
        f10965k = bVar6;
        f10966l = new GeneratedMessageV3.e(bVar6, new String[]{"ProviderId", "Audiences"});
    }

    public static Descriptors.FileDescriptor a() {
        return f10967m;
    }
}
