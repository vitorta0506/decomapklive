.class public Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

.field private view7f0a09f6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;->target:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    .line 3
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0853

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a09f6

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewSave:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;->view7f0a09f6:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a0255

    .line 8
    const-class v1, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    const-string v2, "field \'mFullScreenScrollToExitView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    const v0, 0x7f0a0540

    .line 9
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'mTextView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;->target:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;->target:Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mViewSave:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mFullScreenScrollToExitView:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper;->mTextView:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;->view7f0a09f6:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper_ViewBinding;->view7f0a09f6:Landroid/view/View;

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
