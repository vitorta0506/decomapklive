.class public final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public max_sequence_id_on_instance:Ljava/lang/Long;

.field public server_events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public server_upload_ts:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;
    .locals 5

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_upload_ts:Ljava/lang/Double;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->max_sequence_id_on_instance:Ljava/lang/Long;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_events:Ljava/util/List;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;-><init>(Ljava/lang/Double;Ljava/lang/Long;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;

    move-result-object v0

    return-object v0
.end method

.method public final max_sequence_id_on_instance(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->max_sequence_id_on_instance:Ljava/lang/Long;

    return-object p0
.end method

.method public final server_events(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;)",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_events:Ljava/util/List;

    return-object p0
.end method

.method public final server_upload_ts(Ljava/lang/Double;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_upload_ts:Ljava/lang/Double;

    return-object p0
.end method
