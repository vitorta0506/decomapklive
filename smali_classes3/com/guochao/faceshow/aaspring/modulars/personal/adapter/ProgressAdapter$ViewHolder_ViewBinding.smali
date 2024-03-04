.class public Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05b6

    const-string v2, "field \'ivLineUp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05b5

    const-string v2, "field \'ivLineDown\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineDown:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05dd

    const-string v2, "field \'ivState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d32

    const-string v2, "field \'tvWithdrawalState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d33

    const-string v2, "field \'tvWithdrawalTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineUp:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivLineDown:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->ivState:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalState:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/adapter/ProgressAdapter$ViewHolder;->tvWithdrawalTime:Landroid/widget/TextView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
