.class public final Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public client_id:Ljava/lang/String;

.field public device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

.field public views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->views:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final app_id(Ljava/lang/String;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;
    .locals 7

    .line 2
    new-instance v6, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    iget-object v2, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->client_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->app_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->views:Ljava/util/List;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;-><init>(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v6
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->build()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    move-result-object v0

    return-object v0
.end method

.method public final client_id(Ljava/lang/String;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->client_id:Ljava/lang/String;

    return-object p0
.end method

.method public final device_environment_info(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    return-object p0
.end method

.method public final views(Ljava/util/List;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;)",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->views:Ljava/util/List;

    return-object p0
.end method
