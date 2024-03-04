.class public final Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;
    .locals 3

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    move-result-object v0

    return-object v0
.end method

.method public final kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    return-object p0
.end method
