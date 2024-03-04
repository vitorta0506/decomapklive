.class public final Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public creative_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;
    .locals 3

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;->creative_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    move-result-object v0

    return-object v0
.end method

.method public final creative_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart$Builder;->creative_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

    return-object p0
.end method
