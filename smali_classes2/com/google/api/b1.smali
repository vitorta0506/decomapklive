.class public final Lcom/google/api/b1;
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

.field private static k:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "\n\u0016google/api/quota.proto\u0012\ngoogle.api\"]\n\u0005Quota\u0012&\n\u0006limits\u0018\u0003 \u0003(\u000b2\u0016.google.api.QuotaLimit\u0012,\n\u000cmetric_rules\u0018\u0004 \u0003(\u000b2\u0016.google.api.MetricRule\"\u0091\u0001\n\nMetricRule\u0012\u0010\n\u0008selector\u0018\u0001 \u0001(\t\u0012=\n\u000cmetric_costs\u0018\u0002 \u0003(\u000b2\'.google.api.MetricRule.MetricCostsEntry\u001a2\n\u0010MetricCostsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0003:\u00028\u0001\"\u0095\u0002\n\nQuotaLimit\u0012\u000c\n\u0004name\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\u0012\u0015\n\rdefault_limit\u0018\u0003 \u0001(\u0003\u0012\u0011\n\tmax_limit\u0018\u0004 \u0001(\u0003\u0012\u0011\n\tfree_tier\u0018\u0007 \u0001(\u0003\u0012\u0010\n\u0008duration\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006metric\u0018\u0008 \u0001(\t\u0012\u000c\n\u0004unit\u0018\t \u0001(\t\u00122\n\u0006values\u0018\n \u0003(\u000b2\".google.api.QuotaLimit.ValuesEntry\u0012\u0014\n\u000cdisplay_name\u0018\u000c \u0001(\t\u001a-\n\u000bValuesEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0003:\u00028\u0001Bl\n\u000ecom.google.apiB\nQuotaProtoP\u0001ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig\u00a2\u0002\u0004GAPIb\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/api/b1;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3
    invoke-static {}, Lcom/google/api/b1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/b1;->a:Lcom/google/protobuf/Descriptors$b;

    .line 4
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Limits"

    const-string v4, "MetricRules"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/b1;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 5
    invoke-static {}, Lcom/google/api/b1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/b1;->c:Lcom/google/protobuf/Descriptors$b;

    .line 6
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Selector"

    const-string v4, "MetricCosts"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/b1;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/b1;->e:Lcom/google/protobuf/Descriptors$b;

    .line 8
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Key"

    const-string v4, "Value"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/b1;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 9
    invoke-static {}, Lcom/google/api/b1;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/b1;->g:Lcom/google/protobuf/Descriptors$b;

    .line 10
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v5, "Name"

    const-string v6, "Description"

    const-string v7, "DefaultLimit"

    const-string v8, "MaxLimit"

    const-string v9, "FreeTier"

    const-string v10, "Duration"

    const-string v11, "Metric"

    const-string v12, "Unit"

    const-string v13, "Values"

    const-string v14, "DisplayName"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/b1;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lcom/google/api/b1;->i:Lcom/google/protobuf/Descriptors$b;

    .line 12
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lcom/google/api/b1;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/google/api/b1;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
