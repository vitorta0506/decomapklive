.class public final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

.field public sticker_picker_session_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;
    .locals 4

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;->sticker_picker_session_id:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    move-result-object v0

    return-object v0
.end method

.method public final kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;->kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    return-object p0
.end method

.method public final sticker_picker_session_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase$Builder;->sticker_picker_session_id:Ljava/lang/String;

    return-object p0
.end method
