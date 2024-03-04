.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a2(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/DynamicFile;ZI)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->d2(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;)V

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 2
    check-cast p3, Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicFullscreenImageActivity$b;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method
