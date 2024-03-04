.class public Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0910

    const-string v2, "field \'qCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCode:Landroid/widget/ImageView;

    const v0, 0x7f0a0911

    const-string v1, "field \'qCodeDownload\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'qCodeDownload\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCodeDownload:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05d4

    const-string v1, "method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01bb

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->e:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCode:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCodeDownload:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->d:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
