.class public final Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public attachment_url:Ljava/lang/String;

.field public kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

.field public source_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachment_url(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->attachment_url:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;
    .locals 5

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->source_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->attachment_url:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

    move-result-object v0

    return-object v0
.end method

.method public final kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    return-object p0
.end method

.method public final source_url(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase$Builder;->source_url:Ljava/lang/String;

    return-object p0
.end method
