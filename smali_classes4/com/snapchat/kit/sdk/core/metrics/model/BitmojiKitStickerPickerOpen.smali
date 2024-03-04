.class public final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;,
        Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PREVIEW_ICON_STICKER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SEARCH_BAR_CONFIGURATION:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

.field public static final DEFAULT_STICKER_PICKER_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

.field public static final DEFAULT_TAG_SELECTOR_CONFIGURATION:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

.field private static final serialVersionUID:J


# instance fields
.field public final bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final preview_icon_sticker_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearchBarConfiguration#ADAPTER"
        tag = 0x3
    .end annotation
.end field

.field public final sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerView#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitTagSelectorConfiguration#ADAPTER"
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->UNKNOWN_BITMOJI_KIT_PICKER_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->DEFAULT_STICKER_PICKER_VIEW:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 3
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->SEARCH_BAR_VISIBLE:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->DEFAULT_SEARCH_BAR_CONFIGURATION:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    .line 4
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;->TAG_SELECTOR_VISIBLE:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->DEFAULT_TAG_SELECTOR_CONFIGURATION:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    .line 4
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 5
    iput-object p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    .line 6
    iput-object p4, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    .line 7
    iput-object p5, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    .line 7
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    .line 8
    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 8
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_5
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->preview_icon_sticker_id:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    if-eqz v1, :cond_0

    const-string v1, ", bitmoji_kit_event_base="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    if-eqz v1, :cond_1

    const-string v1, ", sticker_picker_view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    if-eqz v1, :cond_2

    const-string v1, ", search_bar_configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    if-eqz v1, :cond_3

    const-string v1, ", tag_selector_configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", preview_icon_sticker_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "BitmojiKitStickerPickerOpen{"

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
