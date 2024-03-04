.class public final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public app_build:Ljava/lang/String;

.field public app_version:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

.field public event_id:Ljava/lang/String;

.field public event_name:Ljava/lang/String;

.field public instance_id:Ljava/lang/String;

.field public os_type:Ljava/lang/String;

.field public os_version:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public request_id:Ljava/lang/String;

.field public sequence_id:Ljava/lang/Long;

.field public server_ts:Ljava/lang/Double;

.field public user_agent:Ljava/lang/String;

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final app_build(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_build:Ljava/lang/String;

    return-object p0
.end method

.method public final app_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_version:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
    .locals 21

    move-object/from16 v0, p0

    .line 2
    new-instance v19, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_name:Ljava/lang/String;

    iget-object v3, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->request_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->server_ts:Ljava/lang/Double;

    iget-object v5, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_id:Ljava/lang/String;

    iget-object v6, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_agent:Ljava/lang/String;

    iget-object v7, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->country:Ljava/lang/String;

    iget-object v8, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->city:Ljava/lang/String;

    iget-object v9, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->region:Ljava/lang/String;

    iget-object v10, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_id:Ljava/lang/String;

    iget-object v11, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->instance_id:Ljava/lang/String;

    iget-object v12, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->sequence_id:Ljava/lang/Long;

    iget-object v13, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_type:Ljava/lang/String;

    iget-object v14, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_version:Ljava/lang/String;

    iget-object v15, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_version:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_build:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-object/from16 v17, v1

    invoke-super/range {p0 .. p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v18

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;Lokio/ByteString;)V

    return-object v19
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v0

    return-object v0
.end method

.method public final city(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->city:Ljava/lang/String;

    return-object p0
.end method

.method public final country(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final event_data(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    return-object p0
.end method

.method public final event_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_id:Ljava/lang/String;

    return-object p0
.end method

.method public final event_name(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_name:Ljava/lang/String;

    return-object p0
.end method

.method public final instance_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->instance_id:Ljava/lang/String;

    return-object p0
.end method

.method public final os_type(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_type:Ljava/lang/String;

    return-object p0
.end method

.method public final os_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_version:Ljava/lang/String;

    return-object p0
.end method

.method public final region(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final request_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public final sequence_id(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->sequence_id:Ljava/lang/Long;

    return-object p0
.end method

.method public final server_ts(Ljava/lang/Double;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->server_ts:Ljava/lang/Double;

    return-object p0
.end method

.method public final user_agent(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_agent:Ljava/lang/String;

    return-object p0
.end method

.method public final user_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_id:Ljava/lang/String;

    return-object p0
.end method
