.class public final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;,
        Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APP_BUILD:Ljava/lang/String; = ""

.field public static final DEFAULT_APP_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_CITY:Ljava/lang/String; = ""

.field public static final DEFAULT_COUNTRY:Ljava/lang/String; = ""

.field public static final DEFAULT_EVENT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_EVENT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_INSTANCE_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_REGION:Ljava/lang/String; = ""

.field public static final DEFAULT_REQUEST_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SEQUENCE_ID:Ljava/lang/Long;

.field public static final DEFAULT_SERVER_TS:Ljava/lang/Double;

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final app_build:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xf
    .end annotation
.end field

.field public final app_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xe
    .end annotation
.end field

.field public final city:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final country:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.ServerEventData#ADAPTER"
        tag = 0x64
    .end annotation
.end field

.field public final event_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x9
    .end annotation
.end field

.field public final event_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final instance_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xa
    .end annotation
.end field

.field public final os_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xc
    .end annotation
.end field

.field public final os_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xd
    .end annotation
.end field

.field public final region:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final request_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final sequence_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0xb
    .end annotation
.end field

.field public final server_ts:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x3
    .end annotation
.end field

.field public final user_agent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final user_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->DEFAULT_SERVER_TS:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->DEFAULT_SEQUENCE_ID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    .line 1
    sget-object v17, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct/range {v0 .. v17}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;Lokio/ByteString;)V
    .locals 3

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    move-object v1, p11

    .line 13
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    .line 8
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    .line 10
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    .line 11
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    .line 12
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    .line 13
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    .line 14
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    .line 15
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    .line 16
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    .line 17
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    .line 18
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    .line 19
    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 11
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 14
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 15
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 16
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 17
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 18
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->hashCode()I

    move-result v2

    :cond_f
    add-int/2addr v0, v2

    .line 19
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_10
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_name:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->request_id:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->server_ts:Ljava/lang/Double;

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_id:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_agent:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->country:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->city:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->region:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_id:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->instance_id:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->sequence_id:Ljava/lang/Long;

    .line 14
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_type:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_version:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_version:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_build:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    .line 19
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", event_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", request_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    if-eqz v1, :cond_2

    const-string v1, ", server_ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", user_agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, ", event_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ", instance_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    if-eqz v1, :cond_a

    const-string v1, ", sequence_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, ", os_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, ", os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_c
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, ", app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_d
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    if-eqz v1, :cond_e

    const-string v1, ", app_build="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_e
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    if-eqz v1, :cond_f

    const-string v1, ", event_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ServerEvent{"

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
