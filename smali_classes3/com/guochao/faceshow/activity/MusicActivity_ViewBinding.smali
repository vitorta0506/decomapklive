.class public Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/activity/MusicActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/activity/MusicActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    const v0, 0x7f0a07c3

    const-string v1, "method \'getEvent\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->d:Landroid/view/View;

    .line 5
    new-instance v2, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07c1

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->e:Landroid/view/View;

    .line 8
    new-instance v2, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07be

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->f:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;Lcom/guochao/faceshow/activity/MusicActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/MusicActivity;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->d:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->e:Landroid/view/View;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/activity/MusicActivity_ViewBinding;->f:Landroid/view/View;

    .line 9
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
