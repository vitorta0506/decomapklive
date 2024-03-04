.class public final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

.field public search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

.field public share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

.field public sticker_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitmoji_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    return-object p0
.end method

.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;
    .locals 7

    .line 2
    new-instance v6, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->sticker_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    iget-object v4, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;Lokio/ByteString;)V

    return-object v6
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    move-result-object v0

    return-object v0
.end method

.method public final search_category(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    return-object p0
.end method

.method public final share_category(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    return-object p0
.end method

.method public final sticker_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->sticker_id:Ljava/lang/String;

    return-object p0
.end method
