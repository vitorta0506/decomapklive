.class public final Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public creative_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

.field public is_success:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;
    .locals 4

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;->creative_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;->is_success:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    move-result-object v0

    return-object v0
.end method

.method public final creative_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;->creative_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitEventBase;

    return-object p0
.end method

.method public final is_success(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete$Builder;->is_success:Ljava/lang/Boolean;

    return-object p0
.end method
