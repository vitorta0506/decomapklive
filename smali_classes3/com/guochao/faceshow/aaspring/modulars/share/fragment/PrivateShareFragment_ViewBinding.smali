.class public Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;

    const v0, 0x7f0a0d6d

    const-string v1, "method \'onButtonClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->c:Landroid/view/View;

    .line 5
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09f5

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->d:Landroid/view/View;

    .line 8
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02ab

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->e:Landroid/view/View;

    .line 11
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01af

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->f:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->c:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->d:Landroid/view/View;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->e:Landroid/view/View;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/PrivateShareFragment_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
