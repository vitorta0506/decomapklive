.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->focus(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->a:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment;->mFoucesView:Landroid/widget/TextView;

    const v0, 0x7f12039f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveEndWatcherFragment$c;->b(Ljava/lang/String;)V

    return-void
.end method
