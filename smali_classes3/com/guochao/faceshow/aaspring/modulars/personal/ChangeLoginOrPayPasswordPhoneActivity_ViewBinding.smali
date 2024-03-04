.class public Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a09ec

    const-string v2, "field \'rvCountry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rvCountry:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c66

    const-string v2, "field \'tvCountry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvCountry:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cd2

    const-string v2, "field \'tvPhone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPhone:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0360

    const-string v2, "field \'etCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etCode:Landroid/widget/EditText;

    const v0, 0x7f0a09ca

    const-string v1, "field \'rl_send\' and method \'onClick\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rl_send\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rl_send:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05d9

    const-string v2, "field \'ivSend\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivSend:Landroid/widget/ImageView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c5e

    const-string v2, "field \'tvCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvCode:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036c

    const-string v2, "field \'etPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    const v0, 0x7f0a05ca

    const-string v1, "field \'ivPwd\' and method \'onClick\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivPwd\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivPwd:Landroid/widget/ImageView;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0193

    const-string v1, "field \'btnOk\' and method \'onClick\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnOk\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ccc

    const-string v2, "field \'tvPayPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPayPwd:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a059e

    const-string v2, "field \'ivEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivEmail:Landroid/widget/ImageView;

    const v0, 0x7f0a06c8

    const-string v1, "field \'llCountryHide\' and method \'onClick\'"

    .line 24
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 25
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llCountryHide\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->llCountryHide:Landroid/widget/LinearLayout;

    .line 26
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->g:Landroid/view/View;

    .line 27
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rvCountry:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvCountry:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPhone:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etCode:Landroid/widget/EditText;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->rl_send:Landroid/widget/RelativeLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivSend:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvCode:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->etPwd:Landroid/widget/EditText;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivPwd:Landroid/widget/ImageView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->btnOk:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->tvPayPwd:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->ivEmail:Landroid/widget/ImageView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->llCountryHide:Landroid/widget/LinearLayout;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->d:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->e:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->f:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity_ViewBinding;->g:Landroid/view/View;

    .line 24
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
