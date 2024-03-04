.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/fragment/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/RankListResult;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/c;->b:Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/c;->b:Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V

    return-void
.end method
