.class public final Lcom/guochao/faceshow/utils/LiveRandomGo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005J\u0006\u0010\u0010\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\tJ\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tJ\u000e\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/guochao/faceshow/utils/LiveRandomGo;",
        "",
        "()V",
        "listeners",
        "",
        "Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;",
        "getListeners",
        "()Ljava/util/List;",
        "addRewardDiamond",
        "",
        "diamond",
        "",
        "goRandomLive",
        "gotoUgc",
        "registerRandomLiveListener",
        "listener",
        "sendLiveGift",
        "sendLiveMsg",
        "sendVideo",
        "showRechargeDialog",
        "unRegisterRandomLiveListener",
        "GoRandomLiveListener",
        "lib_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/utils/LiveRandomGo;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/LiveRandomGo;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->INSTANCE:Lcom/guochao/faceshow/utils/LiveRandomGo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addRewardDiamond(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;

    .line 3
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;->addRewardDiamond(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public final goRandomLive()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;->goRandomLive()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final gotoUgc()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;->gotoUgc()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final registerRandomLiveListener(Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final sendLiveGift()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;->sendLiveGift()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendLiveMsg()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;->sendLiveMsg()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendVideo()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;->sendVideo()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final showRechargeDialog()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;->showRechargeDialog()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final unRegisterRandomLiveListener(Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/utils/LiveRandomGo$GoRandomLiveListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/utils/LiveRandomGo;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
