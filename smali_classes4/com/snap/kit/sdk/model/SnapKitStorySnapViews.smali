.class public final Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;,
        Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENT_ID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final app_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final client_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x2
    .end annotation
.end field

.field public final device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snap.kit.common.model.DeviceEnvironmentInfo#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final views:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snap.kit.sdk.model.SnapKitStorySnapView#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;

    invoke-direct {v0}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;-><init>()V

    sput-object v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snap/kit/common/model/DeviceEnvironmentInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;-><init>(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snap/kit/common/model/DeviceEnvironmentInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapView;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 3
    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    .line 4
    iput-object p2, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    const-string/jumbo p1, "views"

    .line 6
    invoke-static {p1, p4}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

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
    instance-of v1, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    iget-object v3, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    iget-object p1, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_3
    return v0
.end method

.method public final newBuilder()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    invoke-direct {v0}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    iput-object v1, v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    .line 4
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->client_id:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->app_id:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    const-string/jumbo v2, "views"

    invoke-static {v2, v1}, Lcom/squareup/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->views:Ljava/util/List;

    .line 7
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->newBuilder()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    if-eqz v1, :cond_0

    const-string v1, ", device_environment_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ", views="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "SnapKitStorySnapViews{"

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
