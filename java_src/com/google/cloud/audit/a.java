package com.google.cloud.audit;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.g;
import com.google.protobuf.v2;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f11780a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f11781b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f11782c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f11783d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f11784e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f11785f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f11786g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f11787h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f11788i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f11789j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f11790k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f11791l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f11792m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f11793n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f11794o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f11795p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f11796q = Descriptors.FileDescriptor.s(new String[]{"\n\"google/cloud/audit/audit_log.proto\u0012\u0012google.cloud.audit\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a*google/rpc/context/attribute_context.proto\u001a\u0017google/rpc/status.proto\"þ\u0004\n\bAuditLog\u0012\u0014\n\fservice_name\u0018\u0007 \u0001(\t\u0012\u0013\n\u000bmethod_name\u0018\b \u0001(\t\u0012\u0015\n\rresource_name\u0018\u000b \u0001(\t\u0012?\n\u0011resource_location\u0018\u0014 \u0001(\u000b2$.google.cloud.audit.ResourceLocation\u00128\n\u0017resource_original_state\u0018\u0013 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\u001a\n\u0012num_response_items\u0018\f \u0001(\u0003\u0012\"\n\u0006status\u0018\u0002 \u0001(\u000b2\u0012.google.rpc.Status\u0012C\n\u0013authentication_info\u0018\u0003 \u0001(\u000b2&.google.cloud.audit.AuthenticationInfo\u0012A\n\u0012authorization_info\u0018\t \u0003(\u000b2%.google.cloud.audit.AuthorizationInfo\u0012=\n\u0010request_metadata\u0018\u0004 \u0001(\u000b2#.google.cloud.audit.RequestMetadata\u0012(\n\u0007request\u0018\u0010 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012)\n\bresponse\u0018\u0011 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012)\n\bmetadata\u0018\u0012 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012.\n\fservice_data\u0018\u000f \u0001(\u000b2\u0014.google.protobuf.AnyB\u0002\u0018\u0001\"\u0099\u0002\n\u0012AuthenticationInfo\u0012\u0017\n\u000fprincipal_email\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012authority_selector\u0018\u0002 \u0001(\t\u00126\n\u0015third_party_principal\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012 \n\u0018service_account_key_name\u0018\u0005 \u0001(\t\u0012Y\n\u001fservice_account_delegation_info\u0018\u0006 \u0003(\u000b20.google.cloud.audit.ServiceAccountDelegationInfo\u0012\u0019\n\u0011principal_subject\u0018\b \u0001(\t\"\u0096\u0001\n\u0011AuthorizationInfo\u0012\u0010\n\bresource\u0018\u0001 \u0001(\t\u0012\u0012\n\npermission\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007granted\u0018\u0003 \u0001(\b\u0012J\n\u0013resource_attributes\u0018\u0005 \u0001(\u000b2-.google.rpc.context.AttributeContext.Resource\"õ\u0001\n\u000fRequestMetadata\u0012\u0011\n\tcaller_ip\u0018\u0001 \u0001(\t\u0012\"\n\u001acaller_supplied_user_agent\u0018\u0002 \u0001(\t\u0012\u0016\n\u000ecaller_network\u0018\u0003 \u0001(\t\u0012H\n\u0012request_attributes\u0018\u0007 \u0001(\u000b2,.google.rpc.context.AttributeContext.Request\u0012I\n\u0016destination_attributes\u0018\b \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\"I\n\u0010ResourceLocation\u0012\u0019\n\u0011current_locations\u0018\u0001 \u0003(\t\u0012\u001a\n\u0012original_locations\u0018\u0002 \u0003(\t\"Ã\u0003\n\u001cServiceAccountDelegationInfo\u0012\u0019\n\u0011principal_subject\u0018\u0003 \u0001(\t\u0012e\n\u0015first_party_principal\u0018\u0001 \u0001(\u000b2D.google.cloud.audit.ServiceAccountDelegationInfo.FirstPartyPrincipalH\u0000\u0012e\n\u0015third_party_principal\u0018\u0002 \u0001(\u000b2D.google.cloud.audit.ServiceAccountDelegationInfo.ThirdPartyPrincipalH\u0000\u001aa\n\u0013FirstPartyPrincipal\u0012\u0017\n\u000fprincipal_email\u0018\u0001 \u0001(\t\u00121\n\u0010service_metadata\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u001aJ\n\u0013ThirdPartyPrincipal\u00123\n\u0012third_party_claims\u0018\u0001 \u0001(\u000b2\u0017.google.protobuf.StructB\u000b\n\tAuthorityBe\n\u0016com.google.cloud.auditB\rAuditLogProtoP\u0001Z7google.golang.org/genproto/googleapis/cloud/audit;auditø\u0001\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), v2.a(), com.google.rpc.context.a.a(), com.google.rpc.d.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f11780a = bVar;
        f11781b = new GeneratedMessageV3.e(bVar, new String[]{"ServiceName", "MethodName", "ResourceName", "ResourceLocation", "ResourceOriginalState", "NumResponseItems", "Status", "AuthenticationInfo", "AuthorizationInfo", "RequestMetadata", "Request", "Response", "Metadata", "ServiceData"});
        Descriptors.b bVar2 = a().m().get(1);
        f11782c = bVar2;
        f11783d = new GeneratedMessageV3.e(bVar2, new String[]{"PrincipalEmail", "AuthoritySelector", "ThirdPartyPrincipal", "ServiceAccountKeyName", "ServiceAccountDelegationInfo", "PrincipalSubject"});
        Descriptors.b bVar3 = a().m().get(2);
        f11784e = bVar3;
        f11785f = new GeneratedMessageV3.e(bVar3, new String[]{"Resource", "Permission", "Granted", "ResourceAttributes"});
        Descriptors.b bVar4 = a().m().get(3);
        f11786g = bVar4;
        f11787h = new GeneratedMessageV3.e(bVar4, new String[]{"CallerIp", "CallerSuppliedUserAgent", "CallerNetwork", "RequestAttributes", "DestinationAttributes"});
        Descriptors.b bVar5 = a().m().get(4);
        f11788i = bVar5;
        f11789j = new GeneratedMessageV3.e(bVar5, new String[]{"CurrentLocations", "OriginalLocations"});
        Descriptors.b bVar6 = a().m().get(5);
        f11790k = bVar6;
        f11791l = new GeneratedMessageV3.e(bVar6, new String[]{"PrincipalSubject", "FirstPartyPrincipal", "ThirdPartyPrincipal", "Authority"});
        Descriptors.b bVar7 = bVar6.o().get(0);
        f11792m = bVar7;
        f11793n = new GeneratedMessageV3.e(bVar7, new String[]{"PrincipalEmail", "ServiceMetadata"});
        Descriptors.b bVar8 = bVar6.o().get(1);
        f11794o = bVar8;
        f11795p = new GeneratedMessageV3.e(bVar8, new String[]{"ThirdPartyClaims"});
        g.a();
        v2.a();
        com.google.rpc.context.a.a();
        com.google.rpc.d.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f11796q;
    }
}
