.class public final Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BM\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003JV\u0010\u001e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020\u0008H\u00d6\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u000eR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u000eR\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;",
        "",
        "cid",
        "",
        "date",
        "likes",
        "Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;",
        "text",
        "",
        "uid",
        "user",
        "Lcom/vk/sdk/api/users/dto/UsersUserFull;",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V",
        "getCid",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getDate",
        "getLikes",
        "()Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;",
        "getText",
        "()Ljava/lang/String;",
        "getUid",
        "getUser",
        "()Lcom/vk/sdk/api/users/dto/UsersUserFull;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;",
        "equals",
        "",
        "other",
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
.field private final cid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cid"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final date:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likes"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final uid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final user:Lcom/vk/sdk/api/users/dto/UsersUserFull;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/vk/sdk/api/users/dto/UsersUserFull;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    .line 5
    iput-object p4, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    .line 7
    iput-object p6, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v0

    goto :goto_5

    :cond_5
    move-object p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    .line 8
    invoke-direct/range {p1 .. p7}, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;ILjava/lang/Object;)Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->copy(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component6()Lcom/vk/sdk/api/users/dto/UsersUserFull;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;
    .locals 8
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/vk/sdk/api/users/dto/UsersUserFull;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;Ljava/lang/String;Ljava/lang/Integer;Lcom/vk/sdk/api/users/dto/UsersUserFull;)V

    return-object v7
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
    instance-of v1, p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;

    iget-object v1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    iget-object v3, p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    iget-object p1, p1, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCid()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getDate()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLikes()Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUser()Lcom/vk/sdk/api/users/dto/UsersUserFull;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/vk/sdk/api/users/dto/UsersUserFull;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->cid:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->date:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->likes:Lcom/vk/sdk/api/widgets/dto/WidgetsWidgetLikes;

    iget-object v3, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->uid:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/vk/sdk/api/widgets/dto/WidgetsCommentRepliesItem;->user:Lcom/vk/sdk/api/users/dto/UsersUserFull;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WidgetsCommentRepliesItem(cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", date="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", likes="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", user="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
