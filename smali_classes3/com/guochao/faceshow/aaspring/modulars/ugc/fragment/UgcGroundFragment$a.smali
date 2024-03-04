.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "last_page_dy_v2"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->mViewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->R1(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Laa/g;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Laa/g;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment;->k()I

    move-result v1

    invoke-interface {v0, v1}, Laa/g;->onGenderChanged(I)V

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcGroundFragment$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
