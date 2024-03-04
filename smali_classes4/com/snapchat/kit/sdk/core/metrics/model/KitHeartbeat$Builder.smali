.class public final Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public installation_id:Ljava/lang/String;

.field public kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;
    .locals 4

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;->installation_id:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    move-result-object v0

    return-object v0
.end method

.method public final installation_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;->installation_id:Ljava/lang/String;

    return-object p0
.end method

.method public final kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    return-object p0
.end method
