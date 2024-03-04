.class public final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

.field public status:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdateStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitmoji_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    return-object p0
.end method

.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;
    .locals 4

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;->status:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdateStatus;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdateStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    move-result-object v0

    return-object v0
.end method

.method public final status(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdateStatus;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate$Builder;->status:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdateStatus;

    return-object p0
.end method
