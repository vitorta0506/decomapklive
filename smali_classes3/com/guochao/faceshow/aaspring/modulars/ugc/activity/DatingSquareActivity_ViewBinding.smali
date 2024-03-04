.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    .line 3
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0255

    const-string v2, "field \'merge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->merge:Landroid/widget/FrameLayout;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a0bc5

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'tabs\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v0, 0x7f0a0466

    const-string v1, "field \'genderSelector\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'genderSelector\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->genderSelector:Landroid/widget/ImageView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    const v1, 0x7f0a0e05

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    const v0, 0x7f0a0af2

    const-string v1, "field \'svImage\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Lcom/opensource/svgaplayer/SVGAImageView;

    const-string v3, "field \'svImage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05b0

    const-string v1, "field \'ivImage\' and method \'onViewClicked\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 16
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivImage\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    .line 17
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->f:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->merge:Landroid/widget/FrameLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->genderSelector:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->viewPager:Lcom/guochao/faceshow/aaspring/views/SwipeBackViewPager;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->svImage:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->ivImage:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->e:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity_ViewBinding;->f:Landroid/view/View;

    .line 16
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
