.class Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->W1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILandroid/widget/ImageView;)V
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
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;->a:Landroid/widget/ImageView;

    const v0, 0x7f0801ce

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;->a:Landroid/widget/ImageView;

    const v0, 0x7f0f00cd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$d;->a(Ljava/lang/String;)V

    return-void
.end method
