.class public final Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public nanos:Ljava/lang/Integer;

.field public seconds:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;
    .locals 4

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->seconds:Ljava/lang/Long;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->nanos:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final nanos(Ljava/lang/Integer;)Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->nanos:Ljava/lang/Integer;

    return-object p0
.end method

.method public final seconds(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->seconds:Ljava/lang/Long;

    return-object p0
.end method
