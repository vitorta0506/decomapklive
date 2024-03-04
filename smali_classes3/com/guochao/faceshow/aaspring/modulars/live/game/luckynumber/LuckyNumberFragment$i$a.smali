.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->w:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->w:Z

    const-string v1, "tokens/game/v2/round/joinGame"

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
