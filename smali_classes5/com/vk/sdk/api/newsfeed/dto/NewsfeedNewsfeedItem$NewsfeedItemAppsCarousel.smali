.class public final Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;
.super Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewsfeedItemAppsCarousel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0014J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0008H\u00c6\u0003J\t\u0010(\u001a\u00020\nH\u00c6\u0003J\t\u0010)\u001a\u00020\u000cH\u00c6\u0003J\t\u0010*\u001a\u00020\u000eH\u00c6\u0003J\u0011\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003Ju\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u00d6\u0003J\t\u00103\u001a\u00020\u000eH\u00d6\u0001J\t\u00104\u001a\u00020\u0008H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010!R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u00065"
    }
    d2 = {
        "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;",
        "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;",
        "button",
        "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;",
        "items",
        "",
        "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;",
        "title",
        "",
        "type",
        "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;",
        "sourceId",
        "Lcom/vk/dto/common/id/UserId;",
        "date",
        "",
        "objects",
        "Lcom/vk/sdk/api/apps/dto/AppsApp;",
        "objectsType",
        "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;",
        "trackCode",
        "(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;)V",
        "getButton",
        "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;",
        "getDate",
        "()I",
        "getItems",
        "()Ljava/util/List;",
        "getObjects",
        "getObjectsType",
        "()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;",
        "getSourceId",
        "()Lcom/vk/dto/common/id/UserId;",
        "getTitle",
        "()Ljava/lang/String;",
        "getTrackCode",
        "getType",
        "()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final date:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final objects:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "objects"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/apps/dto/AppsApp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "objects_type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sourceId:Lcom/vk/dto/common/id/UserId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_id"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final trackCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_code"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/apps/dto/AppsApp;",
            ">;",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "button"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    .line 4
    iput-object p2, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    .line 7
    iput-object p5, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    .line 8
    iput p6, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    .line 9
    iput-object p7, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    .line 10
    iput-object p8, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    .line 11
    iput-object p9, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    .line 1
    invoke-direct/range {v3 .. v12}, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;-><init>(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->copy(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    return-object v0
.end method

.method public final component5()Lcom/vk/dto/common/id/UserId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    return v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/apps/dto/AppsApp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;
    .locals 11
    .param p1    # Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/apps/dto/AppsApp;",
            ">;",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "button"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceId"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;

    move-object v1, v0

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;-><init>(Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;Ljava/util/List;Ljava/lang/String;Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;Lcom/vk/dto/common/id/UserId;ILjava/util/List;Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    iget-object v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    iget-object v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    iget-object v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    iget v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    iget-object v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    iget-object v3, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getButton()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    return-object v0
.end method

.method public final getDate()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/discover/dto/DiscoverCarouselItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/apps/dto/AppsApp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    return-object v0
.end method

.method public final getObjectsType()Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    return-object v0
.end method

.method public final getSourceId()Lcom/vk/dto/common/id/UserId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    invoke-virtual {v0}, Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    invoke-virtual {v1}, Lcom/vk/dto/common/id/UserId;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->button:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselButton;

    iget-object v1, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->items:Ljava/util/List;

    iget-object v2, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->type:Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItemType;

    iget-object v4, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->sourceId:Lcom/vk/dto/common/id/UserId;

    iget v5, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->date:I

    iget-object v6, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objects:Ljava/util/List;

    iget-object v7, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->objectsType:Lcom/vk/sdk/api/discover/dto/DiscoverCarouselObjectsType;

    iget-object v8, p0, Lcom/vk/sdk/api/newsfeed/dto/NewsfeedNewsfeedItem$NewsfeedItemAppsCarousel;->trackCode:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NewsfeedItemAppsCarousel(button="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", items="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sourceId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", date="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", objects="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", objectsType="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackCode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
