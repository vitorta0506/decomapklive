.class public final Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$ProtoAdapter_BitmojiKitShare;,
        Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SEARCH_CATEGORY:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

.field public static final DEFAULT_SHARE_CATEGORY:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

.field public static final DEFAULT_STICKER_ID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitEventBase#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearchCategory#ADAPTER"
        tag = 0x5
    .end annotation
.end field

.field public final share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitShareCategory#ADAPTER"
        tag = 0x4
    .end annotation
.end field

.field public final sticker_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$ProtoAdapter_BitmojiKitShare;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$ProtoAdapter_BitmojiKitShare;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;->UNKNOWN_BITMOJI_KIT_SHARE_CATEGORY:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->DEFAULT_SHARE_CATEGORY:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    .line 3
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;->UNKNOWN_BITMOJI_KIT_SEARCH_CATEGORY:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->DEFAULT_SEARCH_CATEGORY:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;)V
    .locals 6

    .line 1
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;Lokio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    .line 4
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->sticker_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    .line 6
    iput-object p4, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

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
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->sticker_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->sticker_id:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    .line 7
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

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

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
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->sticker_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

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
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    .line 7
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_4
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->sticker_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->sticker_id:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    .line 7
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    if-eqz v1, :cond_0

    const-string v1, ", bitmoji_kit_event_base="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->bitmoji_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitEventBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->sticker_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", sticker_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->sticker_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    if-eqz v1, :cond_2

    const-string v1, ", share_category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->share_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShareCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    if-eqz v1, :cond_3

    const-string v1, ", search_category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->search_category:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearchCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "BitmojiKitShare{"

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
