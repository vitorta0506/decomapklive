.class public Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    const v0, 0x7f0a09ec

    const-string v1, "field \'rvCountry\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rvCountry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rvCountry:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->d:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c66

    const-string v1, "field \'tvCountry\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCountry\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvCountry:Landroid/widget/TextView;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->e:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036b

    const-string v2, "field \'etPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->etPhone:Landroid/widget/EditText;

    .line 12
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0360

    const-string v2, "field \'etCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->etCode:Landroid/widget/EditText;

    const v0, 0x7f0a09ca

    const-string v1, "field \'rlSend\' and method \'onViewClicked\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'rlSend\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSend:Landroid/widget/FrameLayout;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->f:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c5e

    const-string v2, "field \'tvCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvCode:Landroid/widget/TextView;

    .line 18
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a09cb

    const-string v2, "field \'rlSendHide\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSendHide:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0186

    const-string v1, "field \'btnConfirm\' and method \'onViewClicked\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnConfirm\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->btnConfirm:Landroid/widget/TextView;

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->g:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a05c0

    const-string v1, "field \'ivNext\' and method \'onViewClicked\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 24
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivNext\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->ivNext:Landroid/widget/ImageView;

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->h:Landroid/view/View;

    .line 26
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c50

    const-string v2, "field \'tvBindPhoneTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvBindPhoneTip:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rvCountry:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvCountry:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->etPhone:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->etCode:Landroid/widget/EditText;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSend:Landroid/widget/FrameLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvCode:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rlSendHide:Landroid/widget/FrameLayout;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->btnConfirm:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->ivNext:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvBindPhoneTip:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->e:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->f:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->g:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity_ViewBinding;->h:Landroid/view/View;

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
