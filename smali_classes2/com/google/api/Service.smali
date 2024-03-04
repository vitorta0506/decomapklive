.class public final Lcom/google/api/Service;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Service$b;
    }
.end annotation


# static fields
.field public static final APIS_FIELD_NUMBER:I = 0x3

.field public static final AUTHENTICATION_FIELD_NUMBER:I = 0xb

.field public static final BACKEND_FIELD_NUMBER:I = 0x8

.field public static final BILLING_FIELD_NUMBER:I = 0x1a

.field public static final CONFIG_VERSION_FIELD_NUMBER:I = 0x14

.field public static final CONTEXT_FIELD_NUMBER:I = 0xc

.field public static final CONTROL_FIELD_NUMBER:I = 0x15

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Service;

.field public static final DOCUMENTATION_FIELD_NUMBER:I = 0x6

.field public static final ENDPOINTS_FIELD_NUMBER:I = 0x12

.field public static final ENUMS_FIELD_NUMBER:I = 0x5

.field public static final HTTP_FIELD_NUMBER:I = 0x9

.field public static final ID_FIELD_NUMBER:I = 0x21

.field public static final LOGGING_FIELD_NUMBER:I = 0x1b

.field public static final LOGS_FIELD_NUMBER:I = 0x17

.field public static final METRICS_FIELD_NUMBER:I = 0x18

.field public static final MONITORED_RESOURCES_FIELD_NUMBER:I = 0x19

.field public static final MONITORING_FIELD_NUMBER:I = 0x1c

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Service;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_PROJECT_ID_FIELD_NUMBER:I = 0x16

.field public static final QUOTA_FIELD_NUMBER:I = 0xa

.field public static final SOURCE_INFO_FIELD_NUMBER:I = 0x25

.field public static final SYSTEM_PARAMETERS_FIELD_NUMBER:I = 0x1d

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TYPES_FIELD_NUMBER:I = 0x4

.field public static final USAGE_FIELD_NUMBER:I = 0xf

.field private static final serialVersionUID:J


# instance fields
.field private apis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field private authentication_:Lcom/google/api/Authentication;

.field private backend_:Lcom/google/api/Backend;

.field private billing_:Lcom/google/api/Billing;

.field private configVersion_:Lcom/google/protobuf/UInt32Value;

.field private context_:Lcom/google/api/Context;

.field private control_:Lcom/google/api/Control;

.field private documentation_:Lcom/google/api/Documentation;

.field private endpoints_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private enums_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation
.end field

.field private http_:Lcom/google/api/Http;

.field private volatile id_:Ljava/lang/Object;

.field private logging_:Lcom/google/api/Logging;

.field private logs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private metrics_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private monitoredResources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private monitoring_:Lcom/google/api/Monitoring;

.field private volatile name_:Ljava/lang/Object;

.field private volatile producerProjectId_:Ljava/lang/Object;

.field private quota_:Lcom/google/api/Quota;

.field private sourceInfo_:Lcom/google/api/SourceInfo;

.field private systemParameters_:Lcom/google/api/SystemParameters;

.field private volatile title_:Ljava/lang/Object;

.field private types_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation
.end field

.field private usage_:Lcom/google/api/Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/Service;

    invoke-direct {v0}, Lcom/google/api/Service;-><init>()V

    sput-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    .line 2
    new-instance v0, Lcom/google/api/Service$a;

    invoke-direct {v0}, Lcom/google/api/Service$a;-><init>()V

    sput-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/api/Service;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/google/api/Service;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/Service$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/Service;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/google/api/Service;-><init>()V

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1d

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 22
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 23
    :sswitch_0
    iget-object v3, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v3, :cond_1

    .line 24
    invoke-virtual {v3}, Lcom/google/api/SourceInfo;->toBuilder()Lcom/google/api/SourceInfo$b;

    move-result-object v5

    .line 25
    :cond_1
    invoke-static {}, Lcom/google/api/SourceInfo;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/SourceInfo;

    iput-object v3, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual {v5, v3}, Lcom/google/api/SourceInfo$b;->g0(Lcom/google/api/SourceInfo;)Lcom/google/api/SourceInfo$b;

    .line 27
    invoke-virtual {v5}, Lcom/google/api/SourceInfo$b;->Y()Lcom/google/api/SourceInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    goto :goto_0

    .line 28
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 29
    iput-object v3, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_2
    iget-object v3, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v3, :cond_2

    .line 31
    invoke-virtual {v3}, Lcom/google/api/SystemParameters;->toBuilder()Lcom/google/api/SystemParameters$b;

    move-result-object v5

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/api/SystemParameters;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/SystemParameters;

    iput-object v3, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {v5, v3}, Lcom/google/api/SystemParameters$b;->g0(Lcom/google/api/SystemParameters;)Lcom/google/api/SystemParameters$b;

    .line 34
    invoke-virtual {v5}, Lcom/google/api/SystemParameters$b;->Y()Lcom/google/api/SystemParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    goto :goto_0

    .line 35
    :sswitch_3
    iget-object v3, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v3, :cond_3

    .line 36
    invoke-virtual {v3}, Lcom/google/api/Monitoring;->toBuilder()Lcom/google/api/Monitoring$b;

    move-result-object v5

    .line 37
    :cond_3
    invoke-static {}, Lcom/google/api/Monitoring;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Monitoring;

    iput-object v3, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v5, v3}, Lcom/google/api/Monitoring$b;->i0(Lcom/google/api/Monitoring;)Lcom/google/api/Monitoring$b;

    .line 39
    invoke-virtual {v5}, Lcom/google/api/Monitoring$b;->Y()Lcom/google/api/Monitoring;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    goto :goto_0

    .line 40
    :sswitch_4
    iget-object v3, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v3, :cond_4

    .line 41
    invoke-virtual {v3}, Lcom/google/api/Logging;->toBuilder()Lcom/google/api/Logging$b;

    move-result-object v5

    .line 42
    :cond_4
    invoke-static {}, Lcom/google/api/Logging;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Logging;

    iput-object v3, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v5, v3}, Lcom/google/api/Logging$b;->i0(Lcom/google/api/Logging;)Lcom/google/api/Logging$b;

    .line 44
    invoke-virtual {v5}, Lcom/google/api/Logging$b;->Y()Lcom/google/api/Logging;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    goto/16 :goto_0

    .line 45
    :sswitch_5
    iget-object v3, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v3, :cond_5

    .line 46
    invoke-virtual {v3}, Lcom/google/api/Billing;->toBuilder()Lcom/google/api/Billing$c;

    move-result-object v5

    .line 47
    :cond_5
    invoke-static {}, Lcom/google/api/Billing;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Billing;

    iput-object v3, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {v5, v3}, Lcom/google/api/Billing$c;->g0(Lcom/google/api/Billing;)Lcom/google/api/Billing$c;

    .line 49
    invoke-virtual {v5}, Lcom/google/api/Billing$c;->Y()Lcom/google/api/Billing;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_6

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 51
    :cond_6
    iget-object v3, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 53
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 54
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_7

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 56
    :cond_7
    iget-object v3, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    .line 57
    invoke-static {}, Lcom/google/api/MetricDescriptor;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 58
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_8

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 60
    :cond_8
    iget-object v3, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    .line 61
    invoke-static {}, Lcom/google/api/LogDescriptor;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 62
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 63
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 64
    iput-object v3, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 65
    :sswitch_a
    iget-object v3, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v3, :cond_9

    .line 66
    invoke-virtual {v3}, Lcom/google/api/Control;->toBuilder()Lcom/google/api/Control$b;

    move-result-object v5

    .line 67
    :cond_9
    invoke-static {}, Lcom/google/api/Control;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Control;

    iput-object v3, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v5, v3}, Lcom/google/api/Control$b;->d0(Lcom/google/api/Control;)Lcom/google/api/Control$b;

    .line 69
    invoke-virtual {v5}, Lcom/google/api/Control$b;->Y()Lcom/google/api/Control;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    goto/16 :goto_0

    .line 70
    :sswitch_b
    iget-object v3, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_a

    .line 71
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 72
    :cond_a
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v5, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 74
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_b

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 76
    :cond_b
    iget-object v3, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    .line 77
    invoke-static {}, Lcom/google/api/Endpoint;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 78
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :sswitch_d
    iget-object v3, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v3, :cond_c

    .line 80
    invoke-virtual {v3}, Lcom/google/api/Usage;->toBuilder()Lcom/google/api/Usage$b;

    move-result-object v5

    .line 81
    :cond_c
    invoke-static {}, Lcom/google/api/Usage;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Usage;

    iput-object v3, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {v5, v3}, Lcom/google/api/Usage$b;->h0(Lcom/google/api/Usage;)Lcom/google/api/Usage$b;

    .line 83
    invoke-virtual {v5}, Lcom/google/api/Usage$b;->Y()Lcom/google/api/Usage;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    goto/16 :goto_0

    .line 84
    :sswitch_e
    iget-object v3, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v3, :cond_d

    .line 85
    invoke-virtual {v3}, Lcom/google/api/Context;->toBuilder()Lcom/google/api/Context$b;

    move-result-object v5

    .line 86
    :cond_d
    invoke-static {}, Lcom/google/api/Context;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Context;

    iput-object v3, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v5, :cond_0

    .line 87
    invoke-virtual {v5, v3}, Lcom/google/api/Context$b;->g0(Lcom/google/api/Context;)Lcom/google/api/Context$b;

    .line 88
    invoke-virtual {v5}, Lcom/google/api/Context$b;->Y()Lcom/google/api/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    goto/16 :goto_0

    .line 89
    :sswitch_f
    iget-object v3, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v3, :cond_e

    .line 90
    invoke-virtual {v3}, Lcom/google/api/Authentication;->toBuilder()Lcom/google/api/Authentication$b;

    move-result-object v5

    .line 91
    :cond_e
    invoke-static {}, Lcom/google/api/Authentication;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Authentication;

    iput-object v3, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v5, v3}, Lcom/google/api/Authentication$b;->i0(Lcom/google/api/Authentication;)Lcom/google/api/Authentication$b;

    .line 93
    invoke-virtual {v5}, Lcom/google/api/Authentication$b;->Y()Lcom/google/api/Authentication;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    goto/16 :goto_0

    .line 94
    :sswitch_10
    iget-object v3, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v3, :cond_f

    .line 95
    invoke-virtual {v3}, Lcom/google/api/Quota;->toBuilder()Lcom/google/api/Quota$b;

    move-result-object v5

    .line 96
    :cond_f
    invoke-static {}, Lcom/google/api/Quota;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Quota;

    iput-object v3, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v5, v3}, Lcom/google/api/Quota$b;->i0(Lcom/google/api/Quota;)Lcom/google/api/Quota$b;

    .line 98
    invoke-virtual {v5}, Lcom/google/api/Quota$b;->Y()Lcom/google/api/Quota;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    goto/16 :goto_0

    .line 99
    :sswitch_11
    iget-object v3, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v3, :cond_10

    .line 100
    invoke-virtual {v3}, Lcom/google/api/Http;->toBuilder()Lcom/google/api/Http$b;

    move-result-object v5

    .line 101
    :cond_10
    invoke-static {}, Lcom/google/api/Http;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Http;

    iput-object v3, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v5, v3}, Lcom/google/api/Http$b;->g0(Lcom/google/api/Http;)Lcom/google/api/Http$b;

    .line 103
    invoke-virtual {v5}, Lcom/google/api/Http$b;->Y()Lcom/google/api/Http;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    goto/16 :goto_0

    .line 104
    :sswitch_12
    iget-object v3, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v3, :cond_11

    .line 105
    invoke-virtual {v3}, Lcom/google/api/Backend;->toBuilder()Lcom/google/api/Backend$b;

    move-result-object v5

    .line 106
    :cond_11
    invoke-static {}, Lcom/google/api/Backend;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Backend;

    iput-object v3, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {v5, v3}, Lcom/google/api/Backend$b;->g0(Lcom/google/api/Backend;)Lcom/google/api/Backend$b;

    .line 108
    invoke-virtual {v5}, Lcom/google/api/Backend$b;->Y()Lcom/google/api/Backend;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    goto/16 :goto_0

    .line 109
    :sswitch_13
    iget-object v3, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v3, :cond_12

    .line 110
    invoke-virtual {v3}, Lcom/google/api/Documentation;->toBuilder()Lcom/google/api/Documentation$b;

    move-result-object v5

    .line 111
    :cond_12
    invoke-static {}, Lcom/google/api/Documentation;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/api/Documentation;

    iput-object v3, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v5, :cond_0

    .line 112
    invoke-virtual {v5, v3}, Lcom/google/api/Documentation$b;->i0(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$b;

    .line 113
    invoke-virtual {v5}, Lcom/google/api/Documentation$b;->Y()Lcom/google/api/Documentation;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    goto/16 :goto_0

    :sswitch_14
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_13

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 115
    :cond_13
    iget-object v3, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-static {}, Lcom/google/protobuf/Enum;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_15
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_14

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 117
    :cond_14
    iget-object v3, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-static {}, Lcom/google/protobuf/Type;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_16
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_15

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 119
    :cond_15
    iget-object v3, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-static {}, Lcom/google/protobuf/Api;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 120
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 121
    iput-object v3, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 123
    iput-object v3, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_19
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 124
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 125
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_16

    .line 126
    iget-object p2, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_17

    .line 127
    iget-object p2, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    :cond_17
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_18

    .line 128
    iget-object p2, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    :cond_18
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_19

    .line 129
    iget-object p2, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    :cond_19
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_1a

    .line 130
    iget-object p2, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_1b

    .line 131
    iget-object p2, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_1c

    .line 132
    iget-object p2, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    .line 133
    :cond_1c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 134
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 135
    throw p1

    :cond_1d
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_1e

    .line 136
    iget-object p1, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    :cond_1e
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1f

    .line 137
    iget-object p1, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    :cond_1f
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_20

    .line 138
    iget-object p1, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    :cond_20
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_21

    .line 139
    iget-object p1, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    :cond_21
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_22

    .line 140
    iget-object p1, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    :cond_22
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_23

    .line 141
    iget-object p1, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    :cond_23
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_24

    .line 142
    iget-object p1, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    .line 143
    :cond_24
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 144
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_19
        0xa -> :sswitch_18
        0x12 -> :sswitch_17
        0x1a -> :sswitch_16
        0x22 -> :sswitch_15
        0x2a -> :sswitch_14
        0x32 -> :sswitch_13
        0x42 -> :sswitch_12
        0x4a -> :sswitch_11
        0x52 -> :sswitch_10
        0x5a -> :sswitch_f
        0x62 -> :sswitch_e
        0x7a -> :sswitch_d
        0x92 -> :sswitch_c
        0xa2 -> :sswitch_b
        0xaa -> :sswitch_a
        0xb2 -> :sswitch_9
        0xba -> :sswitch_8
        0xc2 -> :sswitch_7
        0xca -> :sswitch_6
        0xd2 -> :sswitch_5
        0xda -> :sswitch_4
        0xe2 -> :sswitch_3
        0xea -> :sswitch_2
        0x10a -> :sswitch_1
        0x12a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/api/Service$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Service;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/api/Service;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/api/Service;Lcom/google/api/Documentation;)Lcom/google/api/Documentation;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/api/Service;Lcom/google/api/Backend;)Lcom/google/api/Backend;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/api/Service;Lcom/google/api/Http;)Lcom/google/api/Http;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/api/Service;Lcom/google/api/Quota;)Lcom/google/api/Quota;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/api/Service;Lcom/google/api/Authentication;)Lcom/google/api/Authentication;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/api/Service;Lcom/google/api/Context;)Lcom/google/api/Context;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/api/Service;Lcom/google/api/Usage;)Lcom/google/api/Usage;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/api/Service;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/google/api/Service;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/api/Service;Lcom/google/api/Control;)Lcom/google/api/Control;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/api/Service;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/google/api/Service;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/api/Service;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/google/api/Service;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/api/Service;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/google/api/Service;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/api/Service;Lcom/google/api/Billing;)Lcom/google/api/Billing;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/api/Service;Lcom/google/api/Logging;)Lcom/google/api/Logging;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/api/Service;Lcom/google/api/Monitoring;)Lcom/google/api/Monitoring;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)Lcom/google/api/SystemParameters;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)Lcom/google/api/SourceInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/google/api/Service;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Service;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/api/Service;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Service;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/api/Service;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/api/Service;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/api/Service;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/api/Service;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/google/api/Service;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/api/Service;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/api/Service;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/api/Service;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/api/Service;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/api/Service;
    .locals 1

    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/f1;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Service$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->toBuilder()Lcom/google/api/Service$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Service;)Lcom/google/api/Service$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->toBuilder()Lcom/google/api/Service$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/Service$b;->D0(Lcom/google/api/Service;)Lcom/google/api/Service$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Service;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/api/Service;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/api/Service;

    .line 4
    invoke-virtual {p0}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/Service;->getApisList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getApisList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/api/Service;->getTypesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getTypesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/api/Service;->getEnumsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getEnumsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/api/Service;->hasDocumentation()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasDocumentation()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/google/api/Service;->hasDocumentation()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 13
    invoke-virtual {p0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Documentation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/google/api/Service;->hasBackend()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasBackend()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/google/api/Service;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 16
    invoke-virtual {p0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Backend;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 17
    :cond_c
    invoke-virtual {p0}, Lcom/google/api/Service;->hasHttp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasHttp()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 18
    :cond_d
    invoke-virtual {p0}, Lcom/google/api/Service;->hasHttp()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 19
    invoke-virtual {p0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Http;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 20
    :cond_e
    invoke-virtual {p0}, Lcom/google/api/Service;->hasQuota()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasQuota()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 21
    :cond_f
    invoke-virtual {p0}, Lcom/google/api/Service;->hasQuota()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 22
    invoke-virtual {p0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Quota;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 23
    :cond_10
    invoke-virtual {p0}, Lcom/google/api/Service;->hasAuthentication()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasAuthentication()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 24
    :cond_11
    invoke-virtual {p0}, Lcom/google/api/Service;->hasAuthentication()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 25
    invoke-virtual {p0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Authentication;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 26
    :cond_12
    invoke-virtual {p0}, Lcom/google/api/Service;->hasContext()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasContext()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    .line 27
    :cond_13
    invoke-virtual {p0}, Lcom/google/api/Service;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 28
    invoke-virtual {p0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Context;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 29
    :cond_14
    invoke-virtual {p0}, Lcom/google/api/Service;->hasUsage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasUsage()Z

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 30
    :cond_15
    invoke-virtual {p0}, Lcom/google/api/Service;->hasUsage()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 31
    invoke-virtual {p0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Usage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 32
    :cond_16
    invoke-virtual {p0}, Lcom/google/api/Service;->getEndpointsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getEndpointsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 33
    :cond_17
    invoke-virtual {p0}, Lcom/google/api/Service;->hasControl()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasControl()Z

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 34
    :cond_18
    invoke-virtual {p0}, Lcom/google/api/Service;->hasControl()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 35
    invoke-virtual {p0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Control;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 36
    :cond_19
    invoke-virtual {p0}, Lcom/google/api/Service;->getLogsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getLogsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 37
    :cond_1a
    invoke-virtual {p0}, Lcom/google/api/Service;->getMetricsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getMetricsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    .line 38
    :cond_1b
    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoredResourcesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getMonitoredResourcesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 39
    :cond_1c
    invoke-virtual {p0}, Lcom/google/api/Service;->hasBilling()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasBilling()Z

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    .line 40
    :cond_1d
    invoke-virtual {p0}, Lcom/google/api/Service;->hasBilling()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 41
    invoke-virtual {p0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Billing;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 42
    :cond_1e
    invoke-virtual {p0}, Lcom/google/api/Service;->hasLogging()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasLogging()Z

    move-result v3

    if-eq v1, v3, :cond_1f

    return v2

    .line 43
    :cond_1f
    invoke-virtual {p0}, Lcom/google/api/Service;->hasLogging()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 44
    invoke-virtual {p0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Logging;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    .line 45
    :cond_20
    invoke-virtual {p0}, Lcom/google/api/Service;->hasMonitoring()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasMonitoring()Z

    move-result v3

    if-eq v1, v3, :cond_21

    return v2

    .line 46
    :cond_21
    invoke-virtual {p0}, Lcom/google/api/Service;->hasMonitoring()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 47
    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/Monitoring;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    .line 48
    :cond_22
    invoke-virtual {p0}, Lcom/google/api/Service;->hasSystemParameters()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasSystemParameters()Z

    move-result v3

    if-eq v1, v3, :cond_23

    return v2

    .line 49
    :cond_23
    invoke-virtual {p0}, Lcom/google/api/Service;->hasSystemParameters()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 50
    invoke-virtual {p0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/SystemParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    .line 51
    :cond_24
    invoke-virtual {p0}, Lcom/google/api/Service;->hasSourceInfo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasSourceInfo()Z

    move-result v3

    if-eq v1, v3, :cond_25

    return v2

    .line 52
    :cond_25
    invoke-virtual {p0}, Lcom/google/api/Service;->hasSourceInfo()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 53
    invoke-virtual {p0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/SourceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    .line 54
    :cond_26
    invoke-virtual {p0}, Lcom/google/api/Service;->hasConfigVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/Service;->hasConfigVersion()Z

    move-result v3

    if-eq v1, v3, :cond_27

    return v2

    .line 55
    :cond_27
    invoke-virtual {p0}, Lcom/google/api/Service;->hasConfigVersion()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 56
    invoke-virtual {p0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    .line 57
    :cond_28
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public getApis(I)Lcom/google/protobuf/Api;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Api;

    return-object p1
.end method

.method public getApisCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    return-object v0
.end method

.method public getApisOrBuilder(I)Lcom/google/protobuf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/h;

    return-object p1
.end method

.method public getApisOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    return-object v0
.end method

.method public getAuthentication()Lcom/google/api/Authentication;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/api/Authentication;->getDefaultInstance()Lcom/google/api/Authentication;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAuthenticationOrBuilder()Lcom/google/api/f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()Lcom/google/api/Backend;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Backend;->getDefaultInstance()Lcom/google/api/Backend;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBackendOrBuilder()Lcom/google/api/h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v0

    return-object v0
.end method

.method public getBilling()Lcom/google/api/Billing;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Billing;->getDefaultInstance()Lcom/google/api/Billing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBillingOrBuilder()Lcom/google/api/k;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v0

    return-object v0
.end method

.method public getConfigVersion()Lcom/google/protobuf/UInt32Value;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfigVersionOrBuilder()Lcom/google/protobuf/e3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/google/api/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Context;->getDefaultInstance()Lcom/google/api/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContextOrBuilder()Lcom/google/api/p;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v0

    return-object v0
.end method

.method public getControl()Lcom/google/api/Control;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Control;->getDefaultInstance()Lcom/google/api/Control;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getControlOrBuilder()Lcom/google/api/s;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/api/Service;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Service;->getDefaultInstanceForType()Lcom/google/api/Service;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Service;->getDefaultInstanceForType()Lcom/google/api/Service;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentation()Lcom/google/api/Documentation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDocumentationOrBuilder()Lcom/google/api/w;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoints(I)Lcom/google/api/Endpoint;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Endpoint;

    return-object p1
.end method

.method public getEndpointsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEndpointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    return-object v0
.end method

.method public getEndpointsOrBuilder(I)Lcom/google/api/z;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/z;

    return-object p1
.end method

.method public getEndpointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/z;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    return-object v0
.end method

.method public getEnums(I)Lcom/google/protobuf/Enum;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Enum;

    return-object p1
.end method

.method public getEnumsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    return-object v0
.end method

.method public getEnumsOrBuilder(I)Lcom/google/protobuf/a0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a0;

    return-object p1
.end method

.method public getEnumsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/a0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    return-object v0
.end method

.method public getHttp()Lcom/google/api/Http;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Http;->getDefaultInstance()Lcom/google/api/Http;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHttpOrBuilder()Lcom/google/api/e0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLogging()Lcom/google/api/Logging;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Logging;->getDefaultInstance()Lcom/google/api/Logging;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoggingOrBuilder()Lcom/google/api/n0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v0

    return-object v0
.end method

.method public getLogs(I)Lcom/google/api/LogDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LogDescriptor;

    return-object p1
.end method

.method public getLogsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    return-object v0
.end method

.method public getLogsOrBuilder(I)Lcom/google/api/l0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/l0;

    return-object p1
.end method

.method public getLogsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/l0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    return-object v0
.end method

.method public getMetrics(I)Lcom/google/api/MetricDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor;

    return-object p1
.end method

.method public getMetricsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    return-object v0
.end method

.method public getMetricsOrBuilder(I)Lcom/google/api/p0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/p0;

    return-object p1
.end method

.method public getMetricsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/p0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    return-object v0
.end method

.method public getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p1
.end method

.method public getMonitoredResourcesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMonitoredResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    return-object v0
.end method

.method public getMonitoredResourcesOrBuilder(I)Lcom/google/api/s0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/s0;

    return-object p1
.end method

.method public getMonitoredResourcesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/s0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    return-object v0
.end method

.method public getMonitoring()Lcom/google/api/Monitoring;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Monitoring;->getDefaultInstance()Lcom/google/api/Monitoring;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMonitoringOrBuilder()Lcom/google/api/u0;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/Service;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getProducerProjectId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    return-object v0
.end method

.method public getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getQuota()Lcom/google/api/Quota;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Quota;->getDefaultInstance()Lcom/google/api/Quota;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getQuotaOrBuilder()Lcom/google/api/a1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 8
    :goto_2
    iget-object v3, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x4

    .line 9
    iget-object v4, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 10
    :goto_3
    iget-object v3, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x5

    .line 11
    iget-object v4, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14
    :cond_6
    iget-object v2, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    .line 15
    invoke-virtual {p0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16
    :cond_7
    iget-object v2, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    .line 17
    invoke-virtual {p0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    :cond_8
    iget-object v2, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    .line 19
    invoke-virtual {p0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20
    :cond_9
    iget-object v2, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    .line 21
    invoke-virtual {p0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22
    :cond_a
    iget-object v2, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    .line 23
    invoke-virtual {p0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    :cond_b
    iget-object v2, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v2, :cond_c

    const/16 v2, 0xf

    .line 25
    invoke-virtual {p0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    const/4 v2, 0x0

    .line 26
    :goto_4
    iget-object v3, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    const/16 v3, 0x12

    .line 27
    iget-object v4, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 28
    :cond_d
    iget-object v2, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_e

    const/16 v2, 0x14

    .line 29
    invoke-virtual {p0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30
    :cond_e
    iget-object v2, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v2, :cond_f

    const/16 v2, 0x15

    .line 31
    invoke-virtual {p0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32
    :cond_f
    iget-object v2, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/16 v2, 0x16

    .line 33
    iget-object v3, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    const/4 v2, 0x0

    .line 34
    :goto_5
    iget-object v3, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    const/16 v3, 0x17

    .line 35
    iget-object v4, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    .line 36
    :goto_6
    iget-object v3, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    const/16 v3, 0x18

    .line 37
    iget-object v4, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 38
    :cond_12
    :goto_7
    iget-object v2, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    const/16 v2, 0x19

    .line 39
    iget-object v3, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    .line 40
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 41
    :cond_13
    iget-object v1, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v1, :cond_14

    const/16 v1, 0x1a

    .line 42
    invoke-virtual {p0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_14
    iget-object v1, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v1, :cond_15

    const/16 v1, 0x1b

    .line 44
    invoke-virtual {p0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_15
    iget-object v1, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v1, :cond_16

    const/16 v1, 0x1c

    .line 46
    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_16
    iget-object v1, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v1, :cond_17

    const/16 v1, 0x1d

    .line 48
    invoke-virtual {p0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_17
    iget-object v1, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const/16 v1, 0x21

    .line 50
    iget-object v2, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_18
    iget-object v1, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v1, :cond_19

    const/16 v1, 0x25

    .line 52
    invoke-virtual {p0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_19
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSourceInfo()Lcom/google/api/SourceInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/SourceInfo;->getDefaultInstance()Lcom/google/api/SourceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceInfoOrBuilder()Lcom/google/api/g1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemParameters()Lcom/google/api/SystemParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/api/SystemParameters;->getDefaultInstance()Lcom/google/api/SystemParameters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSystemParametersOrBuilder()Lcom/google/api/l1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTypes(I)Lcom/google/protobuf/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type;

    return-object p1
.end method

.method public getTypesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    return-object v0
.end method

.method public getTypesOrBuilder(I)Lcom/google/protobuf/b3;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/b3;

    return-object p1
.end method

.method public getTypesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/b3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUsage()Lcom/google/api/Usage;
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Usage;->getDefaultInstance()Lcom/google/api/Usage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUsageOrBuilder()Lcom/google/api/m1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthentication()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBackend()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBilling()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConfigVersion()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasControl()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentation()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttp()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogging()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMonitoring()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuota()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSystemParameters()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUsage()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lcom/google/api/Service;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lcom/google/api/Service;->getApisCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/api/Service;->getApisList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/Service;->getTypesCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/api/Service;->getTypesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/Service;->getEnumsCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/api/Service;->getEnumsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/Service;->hasDocumentation()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Documentation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/google/api/Service;->hasBackend()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Backend;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/Service;->hasHttp()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Http;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/google/api/Service;->hasQuota()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Quota;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/api/Service;->hasAuthentication()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Authentication;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_8
    invoke-virtual {p0}, Lcom/google/api/Service;->hasContext()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Context;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_9
    invoke-virtual {p0}, Lcom/google/api/Service;->hasUsage()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Usage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_a
    invoke-virtual {p0}, Lcom/google/api/Service;->getEndpointsCount()I

    move-result v1

    if-lez v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lcom/google/api/Service;->getEndpointsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_b
    invoke-virtual {p0}, Lcom/google/api/Service;->hasControl()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Control;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_c
    invoke-virtual {p0}, Lcom/google/api/Service;->getLogsCount()I

    move-result v1

    if-lez v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 32
    invoke-virtual {p0}, Lcom/google/api/Service;->getLogsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_d
    invoke-virtual {p0}, Lcom/google/api/Service;->getMetricsCount()I

    move-result v1

    if-lez v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 34
    invoke-virtual {p0}, Lcom/google/api/Service;->getMetricsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_e
    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoredResourcesCount()I

    move-result v1

    if-lez v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 36
    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoredResourcesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_f
    invoke-virtual {p0}, Lcom/google/api/Service;->hasBilling()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Billing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_10
    invoke-virtual {p0}, Lcom/google/api/Service;->hasLogging()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 40
    invoke-virtual {p0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Logging;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_11
    invoke-virtual {p0}, Lcom/google/api/Service;->hasMonitoring()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/Monitoring;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_12
    invoke-virtual {p0}, Lcom/google/api/Service;->hasSystemParameters()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x35

    .line 44
    invoke-virtual {p0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/SystemParameters;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_13
    invoke-virtual {p0}, Lcom/google/api/Service;->hasSourceInfo()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x35

    .line 46
    invoke-virtual {p0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/SourceInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_14
    invoke-virtual {p0}, Lcom/google/api/Service;->hasConfigVersion()Z

    move-result v1

    if-eqz v1, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 48
    invoke-virtual {p0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    mul-int/lit8 v0, v0, 0x1d

    .line 49
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/f1;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/Service;

    const-class v2, Lcom/google/api/Service$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/api/Service;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/api/Service;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/api/Service$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/api/Service;->newBuilder()Lcom/google/api/Service$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/Service$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/api/Service$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/api/Service$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/Service$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Service;->newBuilderForType()Lcom/google/api/Service$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/Service;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/Service$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/Service;->newBuilderForType()Lcom/google/api/Service$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/api/Service;

    invoke-direct {p1}, Lcom/google/api/Service;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/api/Service$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/api/Service$b;

    invoke-direct {v0, v1}, Lcom/google/api/Service$b;-><init>(Lcom/google/api/Service$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/api/Service$b;

    invoke-direct {v0, v1}, Lcom/google/api/Service$b;-><init>(Lcom/google/api/Service$a;)V

    invoke-virtual {v0, p0}, Lcom/google/api/Service$b;->D0(Lcom/google/api/Service;)Lcom/google/api/Service$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/Service;->toBuilder()Lcom/google/api/Service$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/Service;->toBuilder()Lcom/google/api/Service$b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/google/api/Service;->title_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lcom/google/api/Service;->apis_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 8
    iget-object v3, p0, Lcom/google/api/Service;->types_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_2
    iget-object v2, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 10
    iget-object v3, p0, Lcom/google/api/Service;->enums_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    .line 14
    invoke-virtual {p0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    .line 16
    invoke-virtual {p0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v1, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    .line 18
    invoke-virtual {p0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v1, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v1, :cond_9

    const/16 v1, 0xb

    .line 20
    invoke-virtual {p0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v1, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    .line 22
    invoke-virtual {p0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v1, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v1, :cond_b

    const/16 v1, 0xf

    .line 24
    invoke-virtual {p0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_b
    const/4 v1, 0x0

    .line 25
    :goto_3
    iget-object v2, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    const/16 v2, 0x12

    .line 26
    iget-object v3, p0, Lcom/google/api/Service;->endpoints_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 27
    :cond_c
    iget-object v1, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_d

    const/16 v1, 0x14

    .line 28
    invoke-virtual {p0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget-object v1, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v1, :cond_e

    const/16 v1, 0x15

    .line 30
    invoke-virtual {p0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_e
    iget-object v1, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x16

    .line 32
    iget-object v2, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_f
    const/4 v1, 0x0

    .line 33
    :goto_4
    iget-object v2, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    const/16 v2, 0x17

    .line 34
    iget-object v3, p0, Lcom/google/api/Service;->logs_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    const/4 v1, 0x0

    .line 35
    :goto_5
    iget-object v2, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    const/16 v2, 0x18

    .line 36
    iget-object v3, p0, Lcom/google/api/Service;->metrics_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 37
    :cond_11
    :goto_6
    iget-object v1, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    const/16 v1, 0x19

    .line 38
    iget-object v2, p0, Lcom/google/api/Service;->monitoredResources_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 39
    :cond_12
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v0, :cond_13

    const/16 v0, 0x1a

    .line 40
    invoke-virtual {p0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 41
    :cond_13
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v0, :cond_14

    const/16 v0, 0x1b

    .line 42
    invoke-virtual {p0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v0, :cond_15

    const/16 v0, 0x1c

    .line 44
    invoke-virtual {p0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v0, :cond_16

    const/16 v0, 0x1d

    .line 46
    invoke-virtual {p0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 47
    :cond_16
    iget-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const/16 v0, 0x21

    .line 48
    iget-object v1, p0, Lcom/google/api/Service;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 49
    :cond_17
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v0, :cond_18

    const/16 v0, 0x25

    .line 50
    invoke-virtual {p0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 51
    :cond_18
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
