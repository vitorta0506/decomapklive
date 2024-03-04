.class public final Lcom/google/api/MetricDescriptor;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/p0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/MetricDescriptor$b;,
        Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;,
        Lcom/google/api/MetricDescriptor$c;,
        Lcom/google/api/MetricDescriptor$ValueType;,
        Lcom/google/api/MetricDescriptor$MetricKind;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/MetricDescriptor;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x6

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x7

.field public static final LABELS_FIELD_NUMBER:I = 0x2

.field public static final LAUNCH_STAGE_FIELD_NUMBER:I = 0xc

.field public static final METADATA_FIELD_NUMBER:I = 0xa

.field public static final METRIC_KIND_FIELD_NUMBER:I = 0x3

.field public static final MONITORED_RESOURCE_TYPES_FIELD_NUMBER:I = 0xd

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x8

.field public static final UNIT_FIELD_NUMBER:I = 0x5

.field public static final VALUE_TYPE_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private volatile description_:Ljava/lang/Object;

.field private volatile displayName_:Ljava/lang/Object;

.field private labels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private launchStage_:I

.field private memoizedIsInitialized:B

.field private metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

.field private metricKind_:I

.field private monitoredResourceTypes_:Lcom/google/protobuf/z0;

.field private volatile name_:Ljava/lang/Object;

.field private volatile type_:Ljava/lang/Object;

.field private volatile unit_:Ljava/lang/Object;

.field private valueType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/MetricDescriptor;

    invoke-direct {v0}, Lcom/google/api/MetricDescriptor;-><init>()V

    sput-object v0, Lcom/google/api/MetricDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MetricDescriptor;

    .line 2
    new-instance v0, Lcom/google/api/MetricDescriptor$a;

    invoke-direct {v0}, Lcom/google/api/MetricDescriptor$a;-><init>()V

    sput-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/api/MetricDescriptor;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    .line 11
    iput v1, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    .line 12
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    .line 15
    iput v1, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    .line 16
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

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
    iput-byte p1, p0, Lcom/google/api/MetricDescriptor;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/api/MetricDescriptor$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/MetricDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/api/MetricDescriptor;-><init>()V

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 22
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    .line 23
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 24
    :cond_1
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 26
    iput v3, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    goto :goto_0

    :sswitch_2
    const/4 v3, 0x0

    .line 27
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    if-eqz v4, :cond_2

    .line 28
    invoke-virtual {v4}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->toBuilder()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;

    move-result-object v3

    .line 29
    :cond_2
    invoke-static {}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 30
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    iput-object v4, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    if-eqz v3, :cond_0

    .line 31
    invoke-virtual {v3, v4}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;->d0(Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;

    .line 32
    invoke-virtual {v3}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata$b;->Y()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    goto :goto_0

    .line 33
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 34
    iput-object v3, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 36
    iput-object v3, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 37
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 38
    iput-object v3, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 39
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 40
    iput-object v3, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    goto :goto_0

    .line 41
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 42
    iput v3, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    goto :goto_0

    .line 43
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 44
    iput v3, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    goto :goto_0

    :sswitch_9
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_3

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 46
    :cond_3
    iget-object v3, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/google/api/LabelDescriptor;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    .line 48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 49
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 50
    iput-object v3, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
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

    .line 51
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_4

    .line 53
    iget-object p2, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    :cond_4
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_5

    .line 54
    iget-object p2, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    .line 55
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 57
    throw p1

    :cond_6
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_7

    .line 58
    iget-object p1, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    :cond_7
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_8

    .line 59
    iget-object p1, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    .line 60
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x52 -> :sswitch_2
        0x60 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/api/MetricDescriptor$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/MetricDescriptor;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/api/MetricDescriptor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/google/api/MetricDescriptor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/api/MetricDescriptor;)I
    .locals 0

    iget p0, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    return p0
.end method

.method static synthetic access$1702(Lcom/google/api/MetricDescriptor;I)I
    .locals 0

    iput p1, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    return p1
.end method

.method static synthetic access$1800(Lcom/google/api/MetricDescriptor;)I
    .locals 0

    iget p0, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    return p0
.end method

.method static synthetic access$1802(Lcom/google/api/MetricDescriptor;I)I
    .locals 0

    iput p1, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    return p1
.end method

.method static synthetic access$1900(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/api/MetricDescriptor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/google/api/MetricDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/api/MetricDescriptor;Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;)Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/api/MetricDescriptor;)I
    .locals 0

    iget p0, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    return p0
.end method

.method static synthetic access$2302(Lcom/google/api/MetricDescriptor;I)I
    .locals 0

    iput p1, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    return p1
.end method

.method static synthetic access$2400(Lcom/google/api/MetricDescriptor;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/google/api/MetricDescriptor;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/google/api/MetricDescriptor;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/MetricDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/MetricDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MetricDescriptor;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/api/q0;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/MetricDescriptor$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/MetricDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->toBuilder()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/MetricDescriptor;)Lcom/google/api/MetricDescriptor$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/api/MetricDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MetricDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MetricDescriptor;->toBuilder()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/api/MetricDescriptor$b;->h0(Lcom/google/api/MetricDescriptor;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/api/MetricDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/api/MetricDescriptor;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/api/MetricDescriptor;

    .line 4
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    iget v1, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    iget v3, p1, Lcom/google/api/MetricDescriptor;->metricKind_:I

    if-eq v1, v3, :cond_5

    return v2

    .line 8
    :cond_5
    iget v1, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    iget v3, p1, Lcom/google/api/MetricDescriptor;->valueType_:I

    if-eq v1, v3, :cond_6

    return v2

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->hasMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->hasMetadata()Z

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 14
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 15
    :cond_b
    iget v1, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    iget v3, p1, Lcom/google/api/MetricDescriptor;->launchStage_:I

    if-eq v1, v3, :cond_c

    return v2

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMonitoredResourceTypesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor;->getMonitoredResourceTypesList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 17
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/api/MetricDescriptor;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/api/MetricDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MetricDescriptor;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getDefaultInstanceForType()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getDefaultInstanceForType()Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    return-object p1
.end method

.method public getLabelsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    return-object v0
.end method

.method public getLabelsOrBuilder(I)Lcom/google/api/i0;
    .locals 1

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/i0;

    return-object p1
.end method

.method public getLabelsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/i0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    return-object v0
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    invoke-static {v0}, Lcom/google/api/LaunchStage;->valueOf(I)Lcom/google/api/LaunchStage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/api/LaunchStage;->UNRECOGNIZED:Lcom/google/api/LaunchStage;

    :cond_0
    return-object v0
.end method

.method public getLaunchStageValue()I
    .locals 1

    iget v0, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    return v0
.end method

.method public getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->getDefaultInstance()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataOrBuilder()Lcom/google/api/MetricDescriptor$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetricKind()Lcom/google/api/MetricDescriptor$MetricKind;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    .line 2
    invoke-static {v0}, Lcom/google/api/MetricDescriptor$MetricKind;->valueOf(I)Lcom/google/api/MetricDescriptor$MetricKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->UNRECOGNIZED:Lcom/google/api/MetricDescriptor$MetricKind;

    :cond_0
    return-object v0
.end method

.method public getMetricKindValue()I
    .locals 1

    iget v0, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    return v0
.end method

.method public getMonitoredResourceTypes(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMonitoredResourceTypesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMonitoredResourceTypesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMonitoredResourceTypesList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getMonitoredResourceTypesList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMonitoredResourceTypesList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

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
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/api/MetricDescriptor;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    .line 5
    iget-object v5, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_2
    iget v3, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    sget-object v4, Lcom/google/api/MetricDescriptor$MetricKind;->METRIC_KIND_UNSPECIFIED:Lcom/google/api/MetricDescriptor$MetricKind;

    .line 7
    invoke-virtual {v4}, Lcom/google/api/MetricDescriptor$MetricKind;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_3

    const/4 v3, 0x3

    .line 8
    iget v4, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 9
    :cond_3
    iget v3, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    sget-object v4, Lcom/google/api/MetricDescriptor$ValueType;->VALUE_TYPE_UNSPECIFIED:Lcom/google/api/MetricDescriptor$ValueType;

    .line 10
    invoke-virtual {v4}, Lcom/google/api/MetricDescriptor$ValueType;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_4

    const/4 v3, 0x4

    .line 11
    iget v4, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 12
    :cond_4
    iget-object v3, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x5

    .line 13
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14
    :cond_5
    iget-object v3, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x6

    .line 15
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 16
    :cond_6
    iget-object v3, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x7

    .line 17
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 18
    :cond_7
    iget-object v3, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const/16 v3, 0x8

    .line 19
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 20
    :cond_8
    iget-object v3, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    if-eqz v3, :cond_9

    const/16 v3, 0xa

    .line 21
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 22
    :cond_9
    iget v3, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    sget-object v4, Lcom/google/api/LaunchStage;->LAUNCH_STAGE_UNSPECIFIED:Lcom/google/api/LaunchStage;

    invoke-virtual {v4}, Lcom/google/api/LaunchStage;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_a

    const/16 v3, 0xc

    .line 23
    iget v4, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    const/4 v3, 0x0

    .line 24
    :goto_2
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 25
    iget-object v4, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    add-int/2addr v0, v3

    .line 26
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMonitoredResourceTypesList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 27
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnitBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValueType()Lcom/google/api/MetricDescriptor$ValueType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    .line 2
    invoke-static {v0}, Lcom/google/api/MetricDescriptor$ValueType;->valueOf(I)Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/api/MetricDescriptor$ValueType;->UNRECOGNIZED:Lcom/google/api/MetricDescriptor$ValueType;

    :cond_0
    return-object v0
.end method

.method public getValueTypeValue()I
    .locals 1

    iget v0, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

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
    invoke-static {}, Lcom/google/api/MetricDescriptor;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getLabelsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    iget v1, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    iget v1, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 14
    iget v1, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMonitoredResourceTypesCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMonitoredResourceTypesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/q0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/api/MetricDescriptor;

    const-class v2, Lcom/google/api/MetricDescriptor$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/api/MetricDescriptor;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/api/MetricDescriptor;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/api/MetricDescriptor$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/api/MetricDescriptor;->newBuilder()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/MetricDescriptor$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/api/MetricDescriptor$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/api/MetricDescriptor$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/api/MetricDescriptor$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->newBuilderForType()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/api/MetricDescriptor$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->newBuilderForType()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/api/MetricDescriptor;

    invoke-direct {p1}, Lcom/google/api/MetricDescriptor;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/api/MetricDescriptor$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/api/MetricDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MetricDescriptor;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/api/MetricDescriptor$b;

    invoke-direct {v0, v1}, Lcom/google/api/MetricDescriptor$b;-><init>(Lcom/google/api/MetricDescriptor$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/api/MetricDescriptor$b;

    invoke-direct {v0, v1}, Lcom/google/api/MetricDescriptor$b;-><init>(Lcom/google/api/MetricDescriptor$a;)V

    invoke-virtual {v0, p0}, Lcom/google/api/MetricDescriptor$b;->h0(Lcom/google/api/MetricDescriptor;)Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->toBuilder()Lcom/google/api/MetricDescriptor$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->toBuilder()Lcom/google/api/MetricDescriptor$b;

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
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/MetricDescriptor;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lcom/google/api/MetricDescriptor;->labels_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    sget-object v2, Lcom/google/api/MetricDescriptor$MetricKind;->METRIC_KIND_UNSPECIFIED:Lcom/google/api/MetricDescriptor$MetricKind;

    .line 6
    invoke-virtual {v2}, Lcom/google/api/MetricDescriptor$MetricKind;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x3

    .line 7
    iget v2, p0, Lcom/google/api/MetricDescriptor;->metricKind_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 8
    :cond_2
    iget v1, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    sget-object v2, Lcom/google/api/MetricDescriptor$ValueType;->VALUE_TYPE_UNSPECIFIED:Lcom/google/api/MetricDescriptor$ValueType;

    .line 9
    invoke-virtual {v2}, Lcom/google/api/MetricDescriptor$ValueType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    .line 10
    iget v2, p0, Lcom/google/api/MetricDescriptor;->valueType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 12
    iget-object v2, p0, Lcom/google/api/MetricDescriptor;->unit_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 14
    iget-object v2, p0, Lcom/google/api/MetricDescriptor;->description_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x7

    .line 16
    iget-object v2, p0, Lcom/google/api/MetricDescriptor;->displayName_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    .line 18
    iget-object v2, p0, Lcom/google/api/MetricDescriptor;->type_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/google/api/MetricDescriptor;->metadata_:Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p0}, Lcom/google/api/MetricDescriptor;->getMetadata()Lcom/google/api/MetricDescriptor$MetricDescriptorMetadata;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_8
    iget v1, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    sget-object v2, Lcom/google/api/LaunchStage;->LAUNCH_STAGE_UNSPECIFIED:Lcom/google/api/LaunchStage;

    invoke-virtual {v2}, Lcom/google/api/LaunchStage;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/16 v1, 0xc

    .line 22
    iget v2, p0, Lcom/google/api/MetricDescriptor;->launchStage_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 23
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xd

    .line 24
    iget-object v2, p0, Lcom/google/api/MetricDescriptor;->monitoredResourceTypes_:Lcom/google/protobuf/z0;

    .line 25
    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    .line 26
    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
