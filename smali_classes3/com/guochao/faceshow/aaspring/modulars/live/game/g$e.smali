.class Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->q(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->a:Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomRecharge()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V

    return-void
.end method

.method public onResponse()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;)V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    .line 2
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v3

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->W1(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;I)Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;

    return-void
.end method
