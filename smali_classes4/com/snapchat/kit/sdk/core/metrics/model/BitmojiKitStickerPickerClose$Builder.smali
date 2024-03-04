.class public final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

.field public sticker_picker_session_duration_millis:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitmoji_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    return-object p0
.end method

.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;
    .locals 4

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;->sticker_picker_session_duration_millis:Ljava/lang/Long;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    move-result-object v0

    return-object v0
.end method

.method public final sticker_picker_session_duration_millis(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose$Builder;->sticker_picker_session_duration_millis:Ljava/lang/Long;

    return-object p0
.end method
