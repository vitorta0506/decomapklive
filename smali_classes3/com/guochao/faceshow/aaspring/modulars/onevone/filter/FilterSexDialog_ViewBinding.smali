.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a081d

    const-string v2, "field \'noneChecker\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->noneChecker:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a073d

    const-string v2, "field \'manChecker\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->manChecker:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0e70

    const-string v2, "field \'womenChecker\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->womenChecker:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0133

    const-string v2, "field \'bgNoneFilter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgNoneFilter:Landroid/widget/ImageView;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0132

    const-string v2, "field \'bgManFilter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgManFilter:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a013a

    const-string v2, "field \'bgWomanFilter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgWomanFilter:Landroid/widget/ImageView;

    const v0, 0x7f0a081e

    const-string v1, "method \'onViewClicked\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->c:Landroid/view/View;

    .line 11
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a073e

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e71

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a012e

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->noneChecker:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->manChecker:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->womenChecker:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgNoneFilter:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgManFilter:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgWomanFilter:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->d:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->e:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog_ViewBinding;->f:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
