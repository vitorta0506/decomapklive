.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;

    const v0, 0x7f0a0260

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment_ViewBinding;->c:Landroid/view/View;

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
