.class public final synthetic La9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, La9/b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->continueGame(Landroid/view/View;)V

    return-void
.end method
