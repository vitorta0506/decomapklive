.class public Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    .line 3
    const-class v0, Landroid/widget/ListView;

    const v1, 0x7f0a072e

    const-string v2, "field \'lvCountry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->lvCountry:Landroid/widget/ListView;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036d

    const-string v2, "field \'et_search\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->et_search:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity_ViewBinding;->c:Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->lvCountry:Landroid/widget/ListView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->et_search:Landroid/widget/EditText;

    .line 5
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
