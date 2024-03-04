.class Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->g()Ld9/k;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->c:Landroidx/fragment/app/Fragment;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object v0

    invoke-virtual {v0}, Lc9/a;->P()V

    return-void
.end method
