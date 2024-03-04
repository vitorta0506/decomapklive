.class public Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    .line 3
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0156

    const-string v2, "field \'bottomLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->bottomLay:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0238

    const-string v1, "field \'compile\' and method \'gallery\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'compile\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0456

    const-string v1, "field \'gallery\' and method \'gallery\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'gallery\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->gallery:Landroid/widget/TextView;

    .line 10
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->bottomLay:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->compile:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->gallery:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
