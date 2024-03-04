.class public final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$ProtoAdapter_ServerEventBatch;,
        Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAX_SEQUENCE_ID_ON_INSTANCE:Ljava/lang/Long;

.field public static final DEFAULT_SERVER_UPLOAD_TS:Ljava/lang/Double;

.field private static final serialVersionUID:J


# instance fields
.field public final max_sequence_id_on_instance:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x3
    .end annotation
.end field

.field public final server_events:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.ServerEvent#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final server_upload_ts:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$ProtoAdapter_ServerEventBatch;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$ProtoAdapter_ServerEventBatch;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->DEFAULT_SERVER_UPLOAD_TS:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->DEFAULT_MAX_SEQUENCE_ID_ON_INSTANCE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Long;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;-><init>(Ljava/lang/Double;Ljava/lang/Long;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Long;Ljava/util/List;Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_upload_ts:Ljava/lang/Double;

    .line 4
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->max_sequence_id_on_instance:Ljava/lang/Long;

    const-string p1, "server_events"

    .line 5
    invoke-static {p1, p3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_events:Ljava/util/List;

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
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_upload_ts:Ljava/lang/Double;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_upload_ts:Ljava/lang/Double;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->max_sequence_id_on_instance:Ljava/lang/Long;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->max_sequence_id_on_instance:Ljava/lang/Long;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_events:Ljava/util/List;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_events:Ljava/util/List;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_upload_ts:Ljava/lang/Double;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->max_sequence_id_on_instance:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_2
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_upload_ts:Ljava/lang/Double;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_upload_ts:Ljava/lang/Double;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->max_sequence_id_on_instance:Ljava/lang/Long;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->max_sequence_id_on_instance:Ljava/lang/Long;

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_events:Ljava/util/List;

    const-string v2, "server_events"

    invoke-static {v2, v1}, Lcom/squareup/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_events:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_upload_ts:Ljava/lang/Double;

    if-eqz v1, :cond_0

    const-string v1, ", server_upload_ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_upload_ts:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->max_sequence_id_on_instance:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const-string v1, ", max_sequence_id_on_instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->max_sequence_id_on_instance:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ", server_events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;->server_events:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ServerEventBatch{"

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
