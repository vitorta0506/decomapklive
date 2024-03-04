.class public final Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1",
        "Lb8/d$a;",
        "Lcom/guochao/faceshow/bean/UserBean;",
        "oldUser",
        "newUser",
        "",
        "onUserChanged",
        "onLogout",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$setRequesting$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$setLastLoadTime$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;J)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$getMLiveGameData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$get_gameLiveData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$getMLiveGameData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/bean/UserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method
