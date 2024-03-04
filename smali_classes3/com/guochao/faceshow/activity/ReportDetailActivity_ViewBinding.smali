.class public Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/activity/ReportDetailActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    .line 3
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c4

    const-string v2, "field \'cbFirst\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFirst:Landroid/widget/CheckBox;

    .line 4
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c7

    const-string v2, "field \'cbSecond\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSecond:Landroid/widget/CheckBox;

    .line 5
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01cb

    const-string v2, "field \'cbThird\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbThird:Landroid/widget/CheckBox;

    .line 6
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c5

    const-string v2, "field \'cbForth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbForth:Landroid/widget/CheckBox;

    .line 7
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c3

    const-string v2, "field \'cbFifth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFifth:Landroid/widget/CheckBox;

    .line 8
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c1

    const-string v2, "field \'cbEight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEight:Landroid/widget/CheckBox;

    .line 9
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c9

    const-string v2, "field \'cbSixth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSixth:Landroid/widget/CheckBox;

    .line 10
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c8

    const-string v2, "field \'cbSeventh\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSeventh:Landroid/widget/CheckBox;

    .line 11
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c6

    const-string v2, "field \'cbNinth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbNinth:Landroid/widget/CheckBox;

    .line 12
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01ca

    const-string v2, "field \'cbTenth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbTenth:Landroid/widget/CheckBox;

    .line 13
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01c2

    const-string v2, "field \'cbEleven\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEleven:Landroid/widget/CheckBox;

    .line 14
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01cc

    const-string v2, "field \'cbChild\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbChild:Landroid/widget/CheckBox;

    .line 15
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0358

    const-string v2, "field \'etReportContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->etReportContent:Landroid/widget/EditText;

    const v0, 0x7f0a049e

    const-string v1, "field \'mGridRecyclerView\' and method \'onViewClicked\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 17
    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "field \'mGridRecyclerView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/ReportDetailActivity;->mGridRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09d8

    const-string v1, "method \'onViewClicked\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->e:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFirst:Landroid/widget/CheckBox;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSecond:Landroid/widget/CheckBox;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbThird:Landroid/widget/CheckBox;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbForth:Landroid/widget/CheckBox;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbFifth:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEight:Landroid/widget/CheckBox;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSixth:Landroid/widget/CheckBox;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbSeventh:Landroid/widget/CheckBox;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbNinth:Landroid/widget/CheckBox;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbTenth:Landroid/widget/CheckBox;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbEleven:Landroid/widget/CheckBox;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->cbChild:Landroid/widget/CheckBox;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->etReportContent:Landroid/widget/EditText;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/activity/ReportDetailActivity;->mGridRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity_ViewBinding;->e:Landroid/view/View;

    .line 21
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
