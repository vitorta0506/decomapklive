.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const v0, 0x7f0a09ec

    const-string v1, "field \'rv_country\' and method \'onClick\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rv_country\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rv_country:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c66

    const-string v2, "field \'tv_country\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_country:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a036b

    const-string v2, "field \'et_phone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0360

    const-string v2, "field \'et_code\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_code:Landroid/widget/EditText;

    const v0, 0x7f0a09ca

    const-string v1, "field \'rl_send\' and method \'onClick\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'rl_send\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rl_send:Landroid/widget/FrameLayout;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->e:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05d9

    const-string v2, "field \'ivSend\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->ivSend:Landroid/widget/ImageView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c5e

    const-string v2, "field \'tv_code\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_code:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036c

    const-string v2, "field \'et_pwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    const v0, 0x7f0a05ca

    const-string v1, "field \'iv_pwd\' and method \'onClick\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 18
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'iv_pwd\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->iv_pwd:Landroid/widget/ImageView;

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0801

    const-string v1, "field \'next\' and method \'onClick\'"

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 22
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'next\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->g:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const-class v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    const v1, 0x7f0a00b3

    const-string v2, "field \'animationViewPro\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    .line 26
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0619

    const-string v2, "field \'lay_content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->lay_content:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rv_country:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_country:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_phone:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_code:Landroid/widget/EditText;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->rl_send:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->ivSend:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->tv_code:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_pwd:Landroid/widget/EditText;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->iv_pwd:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->next:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->lay_content:Landroid/widget/LinearLayout;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->d:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->e:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->f:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity_ViewBinding;->g:Landroid/view/View;

    .line 23
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
