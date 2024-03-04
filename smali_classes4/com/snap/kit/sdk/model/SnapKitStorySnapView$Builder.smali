.class public final Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/sdk/model/SnapKitStorySnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public client_timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

.field public owner_external_id:Ljava/lang/String;

.field public snap_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snap/kit/sdk/model/SnapKitStorySnapView;
    .locals 5

    .line 2
    new-instance v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;->client_timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    iget-object v2, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;->snap_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;->owner_external_id:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snap/kit/sdk/model/SnapKitStorySnapView;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;->build()Lcom/snap/kit/sdk/model/SnapKitStorySnapView;

    move-result-object v0

    return-object v0
.end method

.method public final client_timestamp(Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;)Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;->client_timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    return-object p0
.end method

.method public final owner_external_id(Ljava/lang/String;)Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;->owner_external_id:Ljava/lang/String;

    return-object p0
.end method

.method public final snap_id(Ljava/lang/String;)Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView$Builder;->snap_id:Ljava/lang/String;

    return-object p0
.end method
