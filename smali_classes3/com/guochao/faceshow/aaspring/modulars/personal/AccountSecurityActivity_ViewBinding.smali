.class public Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c78

    const-string v2, "field \'tvEmail\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvEmail:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05bd

    const-string v2, "field \'ivMore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMore:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05ef

    const-string v2, "field \'ivTitlebg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivTitlebg:Landroid/widget/ImageView;

    const v0, 0x7f0a0c58

    const-string v1, "field \'tvChange\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvChange\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvChange:Landroid/widget/TextView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09be

    const-string v1, "field \'rlEmail\' and method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlEmail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlEmail:Landroid/widget/RelativeLayout;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->e:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09c2

    const-string v1, "field \'rlPhone\' and method \'onViewClicked\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlPhone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlPhone:Landroid/widget/RelativeLayout;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->f:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09b9

    const-string v1, "field \'rlChangeLoginPassword\' and method \'onViewClicked\'"

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlChangeLoginPassword\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlChangeLoginPassword:Landroid/widget/RelativeLayout;

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->g:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09ba

    const-string v1, "field \'rlChangePaymentPassword\' and method \'onViewClicked\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 23
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlChangePaymentPassword\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlChangePaymentPassword:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->h:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ced

    const-string v2, "field \'tvSafetyLevel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvSafetyLevel:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a040d

    const-string v2, "field \'flBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->flBg:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a09c5

    const-string v1, "field \'rlRealNameAuthentication\' and method \'onViewClicked\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 29
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlRealNameAuthentication\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlRealNameAuthentication:Landroid/widget/RelativeLayout;

    .line 30
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->i:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cdc

    const-string v2, "field \'realNameAuthentication\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->realNameAuthentication:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c4a

    const-string v2, "field \'authorizedResult\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->authorizedResult:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cbf

    const-string v2, "field \'tvMobile\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobile:Landroid/widget/TextView;

    .line 35
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05b9

    const-string v2, "field \'ivMobileMore\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileMore:Landroid/widget/ImageView;

    .line 36
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05bb

    const-string v2, "field \'ivMobileWaring\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileWaring:Landroid/widget/ImageView;

    const v0, 0x7f0a0cc0

    const-string v1, "field \'tvMobileChange\' and method \'onViewClicked\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvMobileChange\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobileChange:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->j:Landroid/view/View;

    .line 40
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cb7

    const-string v2, "field \'tvLoginPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvLoginPwd:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cd7

    const-string v2, "field \'tvPlayPwd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvPlayPwd:Landroid/widget/TextView;

    const v0, 0x7f0a09cd

    const-string v1, "method \'onViewClicked\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->k:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvEmail:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMore:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivTitlebg:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvChange:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlEmail:Landroid/widget/RelativeLayout;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlPhone:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlChangeLoginPassword:Landroid/widget/RelativeLayout;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlChangePaymentPassword:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvSafetyLevel:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->flBg:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlRealNameAuthentication:Landroid/widget/RelativeLayout;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->realNameAuthentication:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->authorizedResult:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobile:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileMore:Landroid/widget/ImageView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileWaring:Landroid/widget/ImageView;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobileChange:Landroid/widget/TextView;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvLoginPwd:Landroid/widget/TextView;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvPlayPwd:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->d:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->e:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->f:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->g:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->h:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->i:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->j:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity_ViewBinding;->k:Landroid/view/View;

    .line 38
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
