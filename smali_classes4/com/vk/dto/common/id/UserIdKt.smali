.class public final Lcom/vk/dto/common/id/UserIdKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0006\u001a\n\u0010\u0007\u001a\u00020\u0008*\u00020\u0006\u001a\n\u0010\t\u001a\u00020\u0008*\u00020\u0006\u001a\n\u0010\n\u001a\u00020\u0008*\u00020\u0006\u001a\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u0006H\u0007\u001a\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e*\u0008\u0012\u0004\u0012\u00020\u00060\u000eH\u0007\u001a\n\u0010\u000f\u001a\u00020\u0006*\u00020\u0006\u001a\u000c\u0010\u0010\u001a\u00020\u0006*\u00020\u000cH\u0007\u001a\n\u0010\u0011\u001a\u00020\u0006*\u00020\u0012\u001a\r\u0010\u0013\u001a\u00020\u0006*\u00020\u0006H\u0086\u0002\"\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "legacyObserver",
        "Lkotlin/Function0;",
        "",
        "getLegacyObserver$annotations",
        "()V",
        "abs",
        "Lcom/vk/dto/common/id/UserId;",
        "isGroupId",
        "",
        "isReal",
        "isUserId",
        "legacyValue",
        "",
        "mapLegacyValues",
        "",
        "negative",
        "toLegacyUserId",
        "toUserId",
        "",
        "unaryMinus",
        "id_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static volatile legacyObserver:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/vk/dto/common/id/UserIdKt$legacyObserver$1;->INSTANCE:Lcom/vk/dto/common/id/UserIdKt$legacyObserver$1;

    sput-object v0, Lcom/vk/dto/common/id/UserIdKt;->legacyObserver:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final abs(Lcom/vk/dto/common/id/UserId;)Lcom/vk/dto/common/id/UserId;
    .locals 2
    .param p0    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vk/dto/common/id/UserId;->copy(J)Lcom/vk/dto/common/id/UserId;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLegacyObserver$p()Lkotlin/jvm/functions/Function0;
    .locals 1

    sget-object v0, Lcom/vk/dto/common/id/UserIdKt;->legacyObserver:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$setLegacyObserver$p(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    sput-object p0, Lcom/vk/dto/common/id/UserIdKt;->legacyObserver:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private static synthetic getLegacyObserver$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Only for debug usage"
    .end annotation

    return-void
.end method

.method public static final isGroupId(Lcom/vk/dto/common/id/UserId;)Z
    .locals 4
    .param p0    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isReal(Lcom/vk/dto/common/id/UserId;)Z
    .locals 4
    .param p0    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isUserId(Lcom/vk/dto/common/id/UserId;)Z
    .locals 4
    .param p0    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final legacyValue(Lcom/vk/dto/common/id/UserId;)I
    .locals 2
    .param p0    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "don\'t use it in new code"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "UserId()"
            imports = {
                "com.vk.dto.common.id.UserId"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vk/dto/common/id/UserIdKt;->legacyObserver:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static final mapLegacyValues(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/common/id/UserId;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "don\'t use it in new code"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "UserId()"
            imports = {
                "com.vk.dto.common.id.UserId"
            }
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vk/dto/common/id/UserIdKt;->legacyObserver:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/vk/dto/common/id/UserId;

    .line 5
    invoke-static {v1}, Lcom/vk/dto/common/id/UserIdKt;->legacyValue(Lcom/vk/dto/common/id/UserId;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final negative(Lcom/vk/dto/common/id/UserId;)Lcom/vk/dto/common/id/UserId;
    .locals 2
    .param p0    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/dto/common/id/UserId;->getValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/vk/dto/common/id/UserId;->copy(J)Lcom/vk/dto/common/id/UserId;

    move-result-object p0

    return-object p0
.end method

.method public static final toLegacyUserId(I)Lcom/vk/dto/common/id/UserId;
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "don\'t use it in new code"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "toUserId()"
            imports = {
                "com.vk.dto.common.id"
            }
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/vk/dto/common/id/UserIdKt;->legacyObserver:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/vk/dto/common/id/UserId;

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vk/dto/common/id/UserId;-><init>(J)V

    return-object v0
.end method

.method public static final toUserId(J)Lcom/vk/dto/common/id/UserId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/vk/dto/common/id/UserId;

    invoke-direct {v0, p0, p1}, Lcom/vk/dto/common/id/UserId;-><init>(J)V

    return-object v0
.end method

.method public static final unaryMinus(Lcom/vk/dto/common/id/UserId;)Lcom/vk/dto/common/id/UserId;
    .locals 1
    .param p0    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vk/dto/common/id/UserIdKt;->negative(Lcom/vk/dto/common/id/UserId;)Lcom/vk/dto/common/id/UserId;

    move-result-object p0

    return-object p0
.end method
