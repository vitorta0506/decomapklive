.class public final Lcom/vk/dto/common/id/UserId$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/dto/common/id/UserId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0007J\u0016\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0011H\u0007R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vk/dto/common/id/UserId$Companion;",
        "",
        "()V",
        "CREATOR",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/vk/dto/common/id/UserId;",
        "DEFAULT",
        "fromLegacyValue",
        "value",
        "",
        "fromLegacyValues",
        "",
        "",
        "removeLegacyGlobalObserver",
        "",
        "setLegacyGlobalObserver",
        "observer",
        "Lkotlin/Function0;",
        "id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/dto/common/id/UserId$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromLegacyValue(I)Lcom/vk/dto/common/id/UserId;
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "don\'t use it in new code"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "UserId()"
            imports = {
                "com.vk.dto.common.id.UserId"
            }
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/vk/dto/common/id/UserIdKt;->access$getLegacyObserver$p()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/vk/dto/common/id/UserId;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/vk/dto/common/id/UserId;-><init>(J)V

    return-object v0
.end method

.method public final fromLegacyValues(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/vk/dto/common/id/UserId;",
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/vk/dto/common/id/UserIdKt;->access$getLegacyObserver$p()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 5
    sget-object v2, Lcom/vk/dto/common/id/UserId;->Companion:Lcom/vk/dto/common/id/UserId$Companion;

    invoke-virtual {v2, v1}, Lcom/vk/dto/common/id/UserId$Companion;->fromLegacyValue(I)Lcom/vk/dto/common/id/UserId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final declared-synchronized removeLegacyGlobalObserver()V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Only for debug usage"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/vk/dto/common/id/UserId$Companion$removeLegacyGlobalObserver$1;->INSTANCE:Lcom/vk/dto/common/id/UserId$Companion$removeLegacyGlobalObserver$1;

    invoke-static {v0}, Lcom/vk/dto/common/id/UserIdKt;->access$setLegacyObserver$p(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLegacyGlobalObserver(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Only for debug usage"
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/vk/dto/common/id/UserIdKt;->access$setLegacyObserver$p(Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
