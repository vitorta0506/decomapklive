.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08c1

    const-string v2, "field \'primaryTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryTitle:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08bf

    const-string v2, "field \'primaryContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryContent:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a08bd

    const-string v2, "field \'primaryArrow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryArrow:Landroid/widget/ImageView;

    const v0, 0x7f0a08be

    const-string v1, "field \'primaryRightArrow\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'primaryRightArrow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a3e

    const-string v2, "field \'secondaryFirstTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstTitle:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0a3c

    const-string v2, "field \'secondaryFirstChecker\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstChecker:Landroid/widget/ImageView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a43

    const-string v2, "field \'secondarySecondTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondarySecondTitle:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a3b

    const-string v2, "field \'secondaryContentWarning\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0a40

    const-string v2, "field \'secondaryLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryLay:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0a3d

    const-string v1, "field \'secondaryFirstLay\' and method \'onViewClicked\'"

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'secondaryFirstLay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstLay:Landroid/view/ViewGroup;

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->d:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0a41

    const-string v2, "field \'secondarySecondChecker\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondarySecondChecker:Landroid/widget/ImageView;

    const v0, 0x7f0a0a42

    const-string v1, "method \'onViewClicked\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->e:Landroid/view/View;

    .line 22
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a025b

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->f:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryContent:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryArrow:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->primaryRightArrow:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstTitle:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstChecker:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondarySecondTitle:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryContentWarning:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryLay:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondaryFirstLay:Landroid/view/ViewGroup;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->secondarySecondChecker:Landroid/widget/ImageView;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->c:Landroid/view/View;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
