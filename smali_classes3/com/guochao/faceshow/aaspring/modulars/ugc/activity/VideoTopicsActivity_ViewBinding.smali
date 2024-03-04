.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a00f0

    const-string v2, "field \'avatarBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->avatarBg:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0282

    const-string v2, "field \'mTextViewCreator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCreator:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d89

    const-string v2, "field \'mTextViewCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCount:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0e0f

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 7
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 8
    const-class v0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    const v1, 0x7f0a0255

    const-string v2, "field \'mExpandableImageTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mExpandableImageTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    const v0, 0x7f0a0a88

    const-string v1, "field \'mImageViewMore\' and method \'showMore\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageViewMore\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mImageViewMore:Landroid/widget/ImageView;

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->d:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05fe

    const-string v1, "method \'join\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->e:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->avatarBg:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCreator:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTextViewCount:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mExpandableImageTextView:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->mImageViewMore:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity_ViewBinding;->e:Landroid/view/View;

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
