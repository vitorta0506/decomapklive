.class public final Lcom/google/cloud/audit/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/google/protobuf/Descriptors$b;

.field static final n:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/google/protobuf/Descriptors$b;

.field static final p:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static q:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const-string v0, "\n\"google/cloud/audit/audit_log.proto\u0012\u0012google.cloud.audit\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a*google/rpc/context/attribute_context.proto\u001a\u0017google/rpc/status.proto\"\u00fe\u0004\n\u0008AuditLog\u0012\u0014\n\u000cservice_name\u0018\u0007 \u0001(\t\u0012\u0013\n\u000bmethod_name\u0018\u0008 \u0001(\t\u0012\u0015\n\rresource_name\u0018\u000b \u0001(\t\u0012?\n\u0011resource_location\u0018\u0014 \u0001(\u000b2$.google.cloud.audit.ResourceLocation\u00128\n\u0017resource_original_state\u0018\u0013 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\u001a\n\u0012num_response_items\u0018\u000c \u0001(\u0003\u0012\"\n\u0006status\u0018\u0002 \u0001(\u000b2\u0012.google.rpc.Status\u0012C\n\u0013authentication_info\u0018\u0003 \u0001(\u000b2&.google.cloud.audit.AuthenticationInfo\u0012A\n\u0012authorization_info\u0018\t \u0003(\u000b2%.google.cloud.audit.AuthorizationInfo\u0012=\n\u0010request_metadata\u0018\u0004 \u0001(\u000b2#.google.cloud.audit.RequestMetadata\u0012(\n\u0007request\u0018\u0010 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012)\n\u0008response\u0018\u0011 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012)\n\u0008metadata\u0018\u0012 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012.\n\u000cservice_data\u0018\u000f \u0001(\u000b2\u0014.google.protobuf.AnyB\u0002\u0018\u0001\"\u0099\u0002\n\u0012AuthenticationInfo\u0012\u0017\n\u000fprincipal_email\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012authority_selector\u0018\u0002 \u0001(\t\u00126\n\u0015third_party_principal\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012 \n\u0018service_account_key_name\u0018\u0005 \u0001(\t\u0012Y\n\u001fservice_account_delegation_info\u0018\u0006 \u0003(\u000b20.google.cloud.audit.ServiceAccountDelegationInfo\u0012\u0019\n\u0011principal_subject\u0018\u0008 \u0001(\t\"\u0096\u0001\n\u0011AuthorizationInfo\u0012\u0010\n\u0008resource\u0018\u0001 \u0001(\t\u0012\u0012\n\npermission\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007granted\u0018\u0003 \u0001(\u0008\u0012J\n\u0013resource_attributes\u0018\u0005 \u0001(\u000b2-.google.rpc.context.AttributeContext.Resource\"\u00f5\u0001\n\u000fRequestMetadata\u0012\u0011\n\tcaller_ip\u0018\u0001 \u0001(\t\u0012\"\n\u001acaller_supplied_user_agent\u0018\u0002 \u0001(\t\u0012\u0016\n\u000ecaller_network\u0018\u0003 \u0001(\t\u0012H\n\u0012request_attributes\u0018\u0007 \u0001(\u000b2,.google.rpc.context.AttributeContext.Request\u0012I\n\u0016destination_attributes\u0018\u0008 \u0001(\u000b2).google.rpc.context.AttributeContext.Peer\"I\n\u0010ResourceLocation\u0012\u0019\n\u0011current_locations\u0018\u0001 \u0003(\t\u0012\u001a\n\u0012original_locations\u0018\u0002 \u0003(\t\"\u00c3\u0003\n\u001cServiceAccountDelegationInfo\u0012\u0019\n\u0011principal_subject\u0018\u0003 \u0001(\t\u0012e\n\u0015first_party_principal\u0018\u0001 \u0001(\u000b2D.google.cloud.audit.ServiceAccountDelegationInfo.FirstPartyPrincipalH\u0000\u0012e\n\u0015third_party_principal\u0018\u0002 \u0001(\u000b2D.google.cloud.audit.ServiceAccountDelegationInfo.ThirdPartyPrincipalH\u0000\u001aa\n\u0013FirstPartyPrincipal\u0012\u0017\n\u000fprincipal_email\u0018\u0001 \u0001(\t\u00121\n\u0010service_metadata\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u001aJ\n\u0013ThirdPartyPrincipal\u00123\n\u0012third_party_claims\u0018\u0001 \u0001(\u000b2\u0017.google.protobuf.StructB\u000b\n\tAuthorityBe\n\u0016com.google.cloud.auditB\rAuditLogProtoP\u0001Z7google.golang.org/genproto/googleapis/cloud/audit;audit\u00f8\u0001\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 3
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 4
    invoke-static {}, Lcom/google/rpc/context/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 5
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 6
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/cloud/audit/a;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7
    invoke-static {}, Lcom/google/cloud/audit/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/audit/a;->a:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "ServiceName"

    const-string v9, "MethodName"

    const-string v10, "ResourceName"

    const-string v11, "ResourceLocation"

    const-string v12, "ResourceOriginalState"

    const-string v13, "NumResponseItems"

    const-string v14, "Status"

    const-string v15, "AuthenticationInfo"

    const-string v16, "AuthorizationInfo"

    const-string v17, "RequestMetadata"

    const-string v18, "Request"

    const-string v19, "Response"

    const-string v20, "Metadata"

    const-string v21, "ServiceData"

    filled-new-array/range {v8 .. v21}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/audit/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lcom/google/cloud/audit/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/audit/a;->c:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "PrincipalEmail"

    const-string v9, "AuthoritySelector"

    const-string v10, "ThirdPartyPrincipal"

    const-string v11, "ServiceAccountKeyName"

    const-string v12, "ServiceAccountDelegationInfo"

    const-string v13, "PrincipalSubject"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/audit/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-static {}, Lcom/google/cloud/audit/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/audit/a;->e:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Resource"

    const-string v6, "Permission"

    const-string v8, "Granted"

    const-string v9, "ResourceAttributes"

    filled-new-array {v3, v6, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/audit/a;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 13
    invoke-static {}, Lcom/google/cloud/audit/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/audit/a;->g:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "CallerIp"

    const-string v6, "CallerSuppliedUserAgent"

    const-string v7, "CallerNetwork"

    const-string v8, "RequestAttributes"

    const-string v9, "DestinationAttributes"

    filled-new-array {v3, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/audit/a;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lcom/google/cloud/audit/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/audit/a;->i:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "CurrentLocations"

    const-string v3, "OriginalLocations"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/audit/a;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lcom/google/cloud/audit/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/audit/a;->k:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "PrincipalSubject"

    const-string v3, "FirstPartyPrincipal"

    const-string v6, "ThirdPartyPrincipal"

    const-string v7, "Authority"

    filled-new-array {v2, v3, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/audit/a;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lcom/google/cloud/audit/a;->m:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "PrincipalEmail"

    const-string v4, "ServiceMetadata"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/cloud/audit/a;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/cloud/audit/a;->o:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ThirdPartyClaims"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/cloud/audit/a;->p:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lcom/google/rpc/context/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lcom/google/rpc/d;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/a;->q:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
