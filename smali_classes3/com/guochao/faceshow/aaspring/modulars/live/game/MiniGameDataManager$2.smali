.class public final Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$a;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2",
        "Lq7/a$a;",
        "",
        "oldLanguage",
        "newLanguage",
        "",
        "onLanguageChanged",
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$setRequesting$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$setLastLoadTime$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;J)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$getMLiveGameData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$get_gameLiveData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;->access$getMLiveGameData$p(Lcom/guochao/faceshow/aaspring/modulars/live/game/MiniGameDataManager;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
