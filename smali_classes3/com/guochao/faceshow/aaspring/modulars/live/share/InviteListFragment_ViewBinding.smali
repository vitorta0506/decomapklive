.class public Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;Landroid/view/View;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    const v0, 0x7f0a0332

    const-string v1, "field \'emptyView\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->emptyView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->emptyView:Landroid/view/View;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
