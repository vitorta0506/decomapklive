.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    const v0, 0x7f0a06c8

    const-string v1, "field \'ll_country_hide\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'ll_country_hide\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->ll_country_hide:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a09ec

    const-string v2, "field \'rv_country\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->rv_country:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c66

    const-string v2, "field \'tv_country\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->tv_country:Landroid/widget/TextView;

    const v0, 0x7f0a0801

    const-string v1, "field \'next\' and method \'onClick\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'next\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->next:Landroid/widget/TextView;

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036b

    const-string v2, "field \'et_phone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    .line 14
    const-class v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    const v1, 0x7f0a00b3

    const-string v2, "field \'animationView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->animationView:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->ll_country_hide:Landroid/widget/LinearLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->rv_country:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->tv_country:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->next:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->et_phone:Landroid/widget/EditText;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->animationView:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity_ViewBinding;->e:Landroid/view/View;

    .line 13
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
