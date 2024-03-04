.class Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;->a:[Ljava/lang/String;

    const v0, 0x7f1207b1

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;->a:[Ljava/lang/String;

    const v0, 0x7f12089f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;->a:[Ljava/lang/String;

    const v0, 0x7f1204f9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p2, v0

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
