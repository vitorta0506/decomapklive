.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    .line 3
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0e05

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a042c

    const-string v1, "field \'mTitleBackground\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mTitleBackground:Landroid/view/View;

    const v0, 0x7f0a0269

    const-string v1, "field \'mTextViewCount\' and method \'send\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mTextViewCount\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mTextViewCount:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c5f

    const-string v1, "field \'tvCompile\' and method \'compile\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCompile\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->tvCompile:Landroid/widget/TextView;

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a0bc5

    const-string v2, "field \'titleBackgroundView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->titleBackgroundView:Landroidx/appcompat/widget/Toolbar;

    .line 14
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0410

    const-string v2, "field \'bottomNavigation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->bottomNavigation:Landroid/widget/FrameLayout;

    .line 15
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0415

    const-string v2, "field \'flContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->flContent:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mTitleBackground:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->mTextViewCount:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->tvCompile:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->titleBackgroundView:Landroidx/appcompat/widget/Toolbar;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->bottomNavigation:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity;->flContent:Landroid/widget/FrameLayout;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/SendImagePreviewActivity_ViewBinding;->e:Landroid/view/View;

    .line 14
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
