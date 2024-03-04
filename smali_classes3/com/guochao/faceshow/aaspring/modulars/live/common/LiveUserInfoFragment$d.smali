.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->setHourRank(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;ILandroid/view/ViewGroup;ZLjava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->b:Landroid/view/ViewGroup;

    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->c:Z

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->d:Ljava/lang/String;

    iput p6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->e:I

    iput-boolean p7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollToEnd(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/views/HourRankTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$800(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$802(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;Z)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->access$800(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)Z

    move-result v0

    const-string v1, ""

    const/4 v3, 0x2

    const v4, 0x7f12041e

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->a:I

    if-gtz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->b:Landroid/view/ViewGroup;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->b:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->c:Z

    xor-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    const v4, 0x7f120420

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->c:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getCountry()Ljava/lang/String;

    move-result-object v6

    :goto_0
    aput-object v6, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->e:I

    if-gtz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->b:Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->f:Z

    xor-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    const v4, 0x7f12041f

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->f:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->d:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getCountry()Ljava/lang/String;

    move-result-object v6

    :goto_1
    aput-object v6, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;Lcom/guochao/faceshow/views/HourRankTextView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextSwitcher;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
