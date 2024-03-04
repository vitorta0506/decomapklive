.class final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_BitmojiKitStickerPickerOpen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v3, v4, v5}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->preview_icon_sticker_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->tag_selector_configuration(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 10
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 11
    :cond_2
    :try_start_1
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->search_bar_configuration(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 12
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 13
    :cond_3
    :try_start_2
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->sticker_picker_view(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    .line 14
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 15
    :cond_4
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->bitmoji_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;

    goto/16 :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 17
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public final bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)V

    return-void
.end method

.method public final encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)I
    .locals 4

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->sticker_picker_view:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerView;

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->search_bar_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchBarConfiguration;

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->tag_selector_configuration:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitTagSelectorConfiguration;

    const/4 v3, 0x4

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->preview_icon_sticker_id:Ljava/lang/String;

    const/4 v3, 0x5

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;->encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)I

    move-result p1

    return p1
.end method

.method public final redact(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 5
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen$ProtoAdapter_BitmojiKitStickerPickerOpen;->redact(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    move-result-object p1

    return-object p1
.end method
