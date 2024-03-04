.class public Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c14

    const-string v2, "field \'tvHasBindNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a034f

    const-string v2, "field \'etPhoneNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber:Landroid/widget/EditText;

    .line 5
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a035a

    const-string v2, "field \'etVerificationCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    const v0, 0x7f0a0178

    const-string v1, "field \'btnSendVerificationCode\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnSendVerificationCode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a016d

    const-string v1, "field \'btnBind\' and method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnBind:Landroid/view/View;

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->e:Landroid/view/View;

    .line 13
    new-instance v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0405

    const-string v2, "field \'flVerificationLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->flVerificationLayout:Landroid/widget/RelativeLayout;

    .line 15
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a034a

    const-string v2, "field \'etNewPhoneNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    const v0, 0x7f0a016f

    const-string v1, "field \'btnChange\' and method \'onViewClicked\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    .line 18
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->f:Landroid/view/View;

    .line 19
    new-instance v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0174

    const-string v1, "field \'btnNext\' and method \'onViewClicked\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnNext:Landroid/view/View;

    .line 22
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->g:Landroid/view/View;

    .line 23
    new-instance v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a034b

    const-string v2, "field \'etNewPhoneNumber_rl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber_rl:Landroid/widget/RelativeLayout;

    .line 25
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0350

    const-string v2, "field \'etPhoneNumber_rl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber_rl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a07ed

    const-string v1, "field \'national_flag\' and method \'onViewClicked\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'national_flag\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->h:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07ef

    const-string v1, "field \'national_txt\' and method \'onViewClicked\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 31
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'national_txt\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->i:Landroid/view/View;

    .line 33
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07ee

    const-string v1, "field \'national_flag1\' and method \'onViewClicked\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'national_flag1\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->j:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07f0

    const-string v1, "field \'national_txt1\' and method \'onViewClicked\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 39
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'national_txt1\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    .line 40
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->k:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding$h;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->tvHasBindNumber:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber:Landroid/widget/EditText;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etVerificationCode:Landroid/widget/EditText;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnSendVerificationCode:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnBind:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->flVerificationLayout:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber:Landroid/widget/EditText;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnChange:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->btnNext:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etNewPhoneNumber_rl:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->etPhoneNumber_rl:Landroid/widget/RelativeLayout;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->d:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->e:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->f:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->g:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->h:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->i:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->j:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity_ViewBinding;->k:Landroid/view/View;

    .line 34
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
