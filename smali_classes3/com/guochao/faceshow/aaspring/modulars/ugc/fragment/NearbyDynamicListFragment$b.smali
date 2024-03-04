.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->c:I

    .line 2
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iget v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->d:I

    iget v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->c:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->d:I

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_default_progress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->c:I

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NearbyDynamicListFragment;->j:Z

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->reload()V

    return-void
.end method
