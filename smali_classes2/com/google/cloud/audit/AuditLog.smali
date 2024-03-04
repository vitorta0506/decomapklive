.class public final Lcom/google/cloud/audit/AuditLog;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/audit/AuditLog$b;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_INFO_FIELD_NUMBER:I = 0x3

.field public static final AUTHORIZATION_INFO_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

.field public static final METADATA_FIELD_NUMBER:I = 0x12

.field public static final METHOD_NAME_FIELD_NUMBER:I = 0x8

.field public static final NUM_RESPONSE_ITEMS_FIELD_NUMBER:I = 0xc

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/audit/AuditLog;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x10

.field public static final REQUEST_METADATA_FIELD_NUMBER:I = 0x4

.field public static final RESOURCE_LOCATION_FIELD_NUMBER:I = 0x14

.field public static final RESOURCE_NAME_FIELD_NUMBER:I = 0xb

.field public static final RESOURCE_ORIGINAL_STATE_FIELD_NUMBER:I = 0x13

.field public static final RESPONSE_FIELD_NUMBER:I = 0x11

.field public static final SERVICE_DATA_FIELD_NUMBER:I = 0xf

.field public static final SERVICE_NAME_FIELD_NUMBER:I = 0x7

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

.field private authorizationInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private metadata_:Lcom/google/protobuf/Struct;

.field private volatile methodName_:Ljava/lang/Object;

.field private numResponseItems_:J

.field private requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

.field private request_:Lcom/google/protobuf/Struct;

.field private resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

.field private volatile resourceName_:Ljava/lang/Object;

.field private resourceOriginalState_:Lcom/google/protobuf/Struct;

.field private response_:Lcom/google/protobuf/Struct;

.field private serviceData_:Lcom/google/protobuf/Any;

.field private volatile serviceName_:Ljava/lang/Object;

.field private status_:Lcom/google/rpc/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/cloud/audit/AuditLog;

    invoke-direct {v0}, Lcom/google/cloud/audit/AuditLog;-><init>()V

    sput-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    .line 2
    new-instance v0, Lcom/google/cloud/audit/AuditLog$a;

    invoke-direct {v0}, Lcom/google/cloud/audit/AuditLog$a;-><init>()V

    sput-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/cloud/audit/AuditLog;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lcom/google/cloud/audit/AuditLog;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/cloud/audit/AuditLog$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/cloud/audit/AuditLog;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_c

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 15
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    goto/16 :goto_2

    .line 16
    :sswitch_0
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {v4}, Lcom/google/cloud/audit/ResourceLocation;->toBuilder()Lcom/google/cloud/audit/ResourceLocation$b;

    move-result-object v5

    .line 18
    :cond_1
    invoke-static {}, Lcom/google/cloud/audit/ResourceLocation;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 19
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/audit/ResourceLocation;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v4}, Lcom/google/cloud/audit/ResourceLocation$b;->g0(Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/ResourceLocation$b;

    .line 21
    invoke-virtual {v5}, Lcom/google/cloud/audit/ResourceLocation$b;->Y()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    goto :goto_0

    .line 22
    :sswitch_1
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v4}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v5

    .line 24
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Struct;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    .line 26
    invoke-virtual {v5}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 27
    :sswitch_2
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    if-eqz v4, :cond_3

    .line 28
    invoke-virtual {v4}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v5

    .line 29
    :cond_3
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Struct;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    .line 31
    invoke-virtual {v5}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 32
    :sswitch_3
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-eqz v4, :cond_4

    .line 33
    invoke-virtual {v4}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v5

    .line 34
    :cond_4
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Struct;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    .line 36
    invoke-virtual {v5}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    goto/16 :goto_0

    .line 37
    :sswitch_4
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-eqz v4, :cond_5

    .line 38
    invoke-virtual {v4}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v5

    .line 39
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Struct;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 40
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    .line 41
    invoke-virtual {v5}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    goto/16 :goto_0

    .line 42
    :sswitch_5
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-eqz v4, :cond_6

    .line 43
    invoke-virtual {v4}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$b;

    move-result-object v5

    .line 44
    :cond_6
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Any;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Any$b;->d0(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    .line 46
    invoke-virtual {v5}, Lcom/google/protobuf/Any$b;->Y()Lcom/google/protobuf/Any;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    goto/16 :goto_0

    .line 47
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    goto/16 :goto_0

    .line 48
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 49
    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_7

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 51
    :cond_7
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/google/cloud/audit/AuthorizationInfo;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    .line 53
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 54
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 56
    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 57
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 58
    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 59
    :sswitch_b
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v4, :cond_8

    .line 60
    invoke-virtual {v4}, Lcom/google/cloud/audit/RequestMetadata;->toBuilder()Lcom/google/cloud/audit/RequestMetadata$b;

    move-result-object v5

    .line 61
    :cond_8
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 62
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/audit/RequestMetadata;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {v5, v4}, Lcom/google/cloud/audit/RequestMetadata$b;->e0(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata$b;

    .line 64
    invoke-virtual {v5}, Lcom/google/cloud/audit/RequestMetadata$b;->Y()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    goto/16 :goto_0

    .line 65
    :sswitch_c
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-eqz v4, :cond_9

    .line 66
    invoke-virtual {v4}, Lcom/google/cloud/audit/AuthenticationInfo;->toBuilder()Lcom/google/cloud/audit/AuthenticationInfo$b;

    move-result-object v5

    .line 67
    :cond_9
    invoke-static {}, Lcom/google/cloud/audit/AuthenticationInfo;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 68
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/cloud/audit/AuthenticationInfo;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v5, v4}, Lcom/google/cloud/audit/AuthenticationInfo$b;->g0(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuthenticationInfo$b;

    .line 70
    invoke-virtual {v5}, Lcom/google/cloud/audit/AuthenticationInfo$b;->Y()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    goto/16 :goto_0

    .line 71
    :sswitch_d
    iget-object v4, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    if-eqz v4, :cond_a

    .line 72
    invoke-virtual {v4}, Lcom/google/rpc/Status;->toBuilder()Lcom/google/rpc/Status$b;

    move-result-object v5

    .line 73
    :cond_a
    invoke-static {}, Lcom/google/rpc/Status;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/Status;

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    if-eqz v5, :cond_0

    .line 74
    invoke-virtual {v5, v4}, Lcom/google/rpc/Status$b;->i0(Lcom/google/rpc/Status;)Lcom/google/rpc/Status$b;

    .line 75
    invoke-virtual {v5}, Lcom/google/rpc/Status$b;->Y()Lcom/google/rpc/Status;

    move-result-object v4

    iput-object v4, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_e
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 76
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_b

    .line 78
    iget-object p2, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    .line 79
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 80
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 81
    throw p1

    :cond_c
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_d

    .line 82
    iget-object p1, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    .line 83
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 84
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x3a -> :sswitch_a
        0x42 -> :sswitch_9
        0x4a -> :sswitch_8
        0x5a -> :sswitch_7
        0x60 -> :sswitch_6
        0x7a -> :sswitch_5
        0x82 -> :sswitch_4
        0x8a -> :sswitch_3
        0x92 -> :sswitch_2
        0x9a -> :sswitch_1
        0xa2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/cloud/audit/AuditLog$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/cloud/audit/AuditLog;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)Lcom/google/rpc/Status;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuthenticationInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/cloud/audit/AuditLog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/cloud/audit/AuditLog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/RequestMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/cloud/audit/AuditLog;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/cloud/audit/AuditLog;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/cloud/audit/AuditLog;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/cloud/audit/AuditLog;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/ResourceLocation;)Lcom/google/cloud/audit/ResourceLocation;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 0

    iput-object p1, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/cloud/audit/AuditLog;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/google/cloud/audit/AuditLog;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/cloud/audit/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->toBuilder()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->toBuilder()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/cloud/audit/AuditLog$b;->h0(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/cloud/audit/AuditLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/audit/AuditLog;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/audit/AuditLog;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/cloud/audit/AuditLog;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/cloud/audit/AuditLog;

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResourceLocation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasResourceLocation()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResourceLocation()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/cloud/audit/ResourceLocation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResourceOriginalState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasResourceOriginalState()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResourceOriginalState()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 12
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceOriginalState()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResourceOriginalState()Lcom/google/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 13
    :cond_8
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getNumResponseItems()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getNumResponseItems()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    .line 14
    :cond_9
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasStatus()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasStatus()Z

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    .line 15
    :cond_a
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 16
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/rpc/Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 17
    :cond_b
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasAuthenticationInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasAuthenticationInfo()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 18
    :cond_c
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasAuthenticationInfo()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 19
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/cloud/audit/AuthenticationInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 20
    :cond_d
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 21
    :cond_e
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasRequestMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasRequestMetadata()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 22
    :cond_f
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasRequestMetadata()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 23
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/cloud/audit/RequestMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 24
    :cond_10
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasRequest()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasRequest()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 25
    :cond_11
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 26
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 27
    :cond_12
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResponse()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasResponse()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    .line 28
    :cond_13
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 29
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 30
    :cond_14
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasMetadata()Z

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 31
    :cond_15
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 32
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 33
    :cond_16
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasServiceData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->hasServiceData()Z

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 34
    :cond_17
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasServiceData()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 35
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 36
    :cond_18
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/audit/AuthenticationInfo;->getDefaultInstance()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAuthenticationInfoOrBuilder()Lcom/google/cloud/audit/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationInfo(I)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/AuthorizationInfo;

    return-object p1
.end method

.method public getAuthorizationInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAuthorizationInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getAuthorizationInfoOrBuilder(I)Lcom/google/cloud/audit/c;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/cloud/audit/c;

    return-object p1
.end method

.method public getAuthorizationInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/cloud/audit/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/cloud/audit/AuditLog;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getDefaultInstanceForType()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getDefaultInstanceForType()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/protobuf/Struct;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataOrBuilder()Lcom/google/protobuf/u2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNumResponseItems()J
    .locals 2

    iget-wide v0, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/cloud/audit/AuditLog;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/audit/AuditLog;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRequest()Lcom/google/protobuf/Struct;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/audit/RequestMetadata;->getDefaultInstance()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestMetadataOrBuilder()Lcom/google/cloud/audit/d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRequestOrBuilder()Lcom/google/protobuf/u2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/audit/ResourceLocation;->getDefaultInstance()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResourceLocationOrBuilder()Lcom/google/cloud/audit/e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v0

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResourceOriginalState()Lcom/google/protobuf/Struct;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResourceOriginalStateOrBuilder()Lcom/google/protobuf/u2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceOriginalState()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/Struct;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponseOrBuilder()Lcom/google/protobuf/u2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x7

    .line 9
    iget-object v3, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x8

    .line 11
    iget-object v3, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/16 v2, 0x9

    .line 13
    iget-object v3, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0xb

    .line 16
    iget-object v2, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    iget-wide v1, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v3, 0xc

    .line 18
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-eqz v1, :cond_9

    const/16 v1, 0xf

    .line 20
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_9
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-eqz v1, :cond_a

    const/16 v1, 0x10

    .line 22
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_a
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-eqz v1, :cond_b

    const/16 v1, 0x11

    .line 24
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_b
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    if-eqz v1, :cond_c

    const/16 v1, 0x12

    .line 26
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_c
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    if-eqz v1, :cond_d

    const/16 v1, 0x13

    .line 28
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceOriginalState()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_d
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    if-eqz v1, :cond_e

    const/16 v1, 0x14

    .line 30
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getServiceData()Lcom/google/protobuf/Any;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServiceDataOrBuilder()Lcom/google/protobuf/f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getServiceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()Lcom/google/rpc/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/Status;->getDefaultInstance()Lcom/google/rpc/Status;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatusOrBuilder()Lcom/google/rpc/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAuthenticationInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequest()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestMetadata()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResourceLocation()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResourceOriginalState()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponse()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServiceData()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResourceLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/audit/ResourceLocation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResourceOriginalState()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceOriginalState()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getNumResponseItems()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/Status;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasAuthenticationInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/audit/AuthenticationInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasRequestMetadata()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/cloud/audit/RequestMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_8
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_9
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->hasServiceData()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 27
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/cloud/audit/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/cloud/audit/AuditLog;

    const-class v2, Lcom/google/cloud/audit/AuditLog$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/cloud/audit/AuditLog;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/cloud/audit/AuditLog;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/cloud/audit/AuditLog$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->newBuilder()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/audit/AuditLog$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/cloud/audit/AuditLog$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/cloud/audit/AuditLog$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/cloud/audit/AuditLog$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->newBuilderForType()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/cloud/audit/AuditLog;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->newBuilderForType()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/cloud/audit/AuditLog;

    invoke-direct {p1}, Lcom/google/cloud/audit/AuditLog;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/cloud/audit/AuditLog$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/cloud/audit/AuditLog;->DEFAULT_INSTANCE:Lcom/google/cloud/audit/AuditLog;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/cloud/audit/AuditLog$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/audit/AuditLog$b;-><init>(Lcom/google/cloud/audit/AuditLog$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/cloud/audit/AuditLog$b;

    invoke-direct {v0, v1}, Lcom/google/cloud/audit/AuditLog$b;-><init>(Lcom/google/cloud/audit/AuditLog$a;)V

    invoke-virtual {v0, p0}, Lcom/google/cloud/audit/AuditLog$b;->h0(Lcom/google/cloud/audit/AuditLog;)Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->toBuilder()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->toBuilder()Lcom/google/cloud/audit/AuditLog$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->status_:Lcom/google/rpc/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->authenticationInfo_:Lcom/google/cloud/audit/AuthenticationInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->requestMetadata_:Lcom/google/cloud/audit/RequestMetadata;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x7

    .line 8
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->serviceName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    .line 10
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->methodName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/16 v1, 0x9

    .line 12
    iget-object v2, p0, Lcom/google/cloud/audit/AuditLog;->authorizationInfo_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0xb

    .line 14
    iget-object v1, p0, Lcom/google/cloud/audit/AuditLog;->resourceName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    :cond_6
    iget-wide v0, p0, Lcom/google/cloud/audit/AuditLog;->numResponseItems_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v2, 0xc

    .line 16
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->serviceData_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    .line 18
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->request_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_9

    const/16 v0, 0x10

    .line 20
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->response_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_a

    const/16 v0, 0x11

    .line 22
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->metadata_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_b

    const/16 v0, 0x12

    .line 24
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getMetadata()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceOriginalState_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_c

    const/16 v0, 0x13

    .line 26
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceOriginalState()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog;->resourceLocation_:Lcom/google/cloud/audit/ResourceLocation;

    if-eqz v0, :cond_d

    const/16 v0, 0x14

    .line 28
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog;->getResourceLocation()Lcom/google/cloud/audit/ResourceLocation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
