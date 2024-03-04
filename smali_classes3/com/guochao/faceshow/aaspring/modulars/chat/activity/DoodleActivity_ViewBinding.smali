.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const v1, 0x7f0a042c

    const-string v2, "field \'floatTitleBack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    .line 4
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a02e0

    const-string v2, "field \'mFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a05ce

    const-string v1, "field \'ivRecall\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivRecall\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a02e2

    const-string v2, "field \'mSettingsPanel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    .line 11
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a041f

    const-string v2, "field \'flSeek\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->flSeek:Landroid/widget/FrameLayout;

    .line 12
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    const v1, 0x7f0a0a47

    const-string v2, "field \'seekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    .line 13
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05c6

    const-string v2, "field \'ivPainSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    const v0, 0x7f0a0599

    const-string v1, "field \'ivCompile\' and method \'onViewClicked\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivCompile\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCompile:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0239

    const-string v1, "field \'complete\' and method \'onViewClicked\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'complete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->complete:Landroid/widget/TextView;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05df

    const-string v1, "field \'ivText\' and method \'onViewClicked\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 23
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivText\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivText:Landroid/widget/ImageView;

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->g:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a06e1

    const-string v2, "field \'llMulti\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->llMulti:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a059b

    const-string v1, "field \'ivCut\' and method \'onViewClicked\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivCut\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCut:Landroid/widget/ImageView;

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->h:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a02e1

    const-string v2, "field \'doodleEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->doodleEditText:Landroid/widget/FrameLayout;

    const v0, 0x7f0a05e0

    const-string v1, "field \'ivTextRecall\' and method \'onViewClicked\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivTextRecall\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->i:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e02

    const-string v1, "field \'viewLine\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->viewLine:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->floatTitleBack:Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivRecall:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->mSettingsPanel:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->flSeek:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->seekBar:Lcom/guochao/faceshow/aaspring/views/VerticalRangeSeekBar;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCompile:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->complete:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivText:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->llMulti:Landroid/widget/RelativeLayout;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivCut:Landroid/widget/ImageView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->doodleEditText:Landroid/widget/FrameLayout;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->viewLine:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->d:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->e:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->f:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->g:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->h:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity_ViewBinding;->i:Landroid/view/View;

    .line 31
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
