.class public Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    const v0, 0x7f0a0267

    const-string v1, "field \'copyLink\' and method \'onButtonClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->copyLink:Landroid/view/View;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09f5

    const-string v1, "field \'saveBtn\' and method \'onButtonClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->saveBtn:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020d

    const-string v1, "field \'close\' and method \'onButtonClick\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->close:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0971

    const-string v1, "method \'onButtonClick\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->f:Landroid/view/View;

    .line 18
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01af

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->g:Landroid/view/View;

    .line 21
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$e;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02ab

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->h:Landroid/view/View;

    .line 24
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$f;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0818

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->i:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->copyLink:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->saveBtn:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->close:Landroid/view/View;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->c:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->d:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->e:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->f:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->g:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->h:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment_ViewBinding;->i:Landroid/view/View;

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
