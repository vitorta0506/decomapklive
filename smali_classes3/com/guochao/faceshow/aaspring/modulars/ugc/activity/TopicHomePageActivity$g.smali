.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->a:Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicDynamicListFragment;->R1(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicDynamicListFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    const v0, 0x7f120680

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;

    const v0, 0x7f120958

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity$g;->a:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
