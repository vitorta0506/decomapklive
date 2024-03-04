.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;

    .line 3
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0a14

    const-string v2, "field \'searchContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->searchContent:Landroid/widget/EditText;

    const v0, 0x7f0a01af

    const-string v1, "field \'cancel\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'cancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->cancel:Landroid/widget/TextView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->e:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a8

    const-string v1, "field \'deleteEdit\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'deleteEdit\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->deleteEdit:Landroid/widget/ImageView;

    .line 10
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->f:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->searchContent:Landroid/widget/EditText;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->cancel:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->deleteEdit:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->e:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity_ViewBinding;->f:Landroid/view/View;

    .line 10
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity_ViewBinding;->unbind()V

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
