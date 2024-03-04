.class public final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

.field public preview_icon_sticker_id:Ljava/lang/String;

.field public search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

.field public sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitmoji_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    return-object p0
.end method

.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;
    .locals 8

    .line 2
    new-instance v7, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    iget-object v4, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    iget-object v5, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->preview_icon_sticker_id:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;Ljava/lang/String;Lokio/ByteString;)V

    return-object v7
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    move-result-object v0

    return-object v0
.end method

.method public final preview_icon_sticker_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->preview_icon_sticker_id:Ljava/lang/String;

    return-object p0
.end method

.method public final search_bar_configuration(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    return-object p0
.end method

.method public final sticker_picker_view(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    return-object p0
.end method

.method public final tag_selector_configuration(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    return-object p0
.end method
