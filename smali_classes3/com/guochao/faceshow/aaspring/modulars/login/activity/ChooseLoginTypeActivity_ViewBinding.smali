.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    const v1, 0x7f0a00b3

    const-string v2, "field \'animationViewPro\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    .line 4
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a061f

    const-string v2, "field \'lay_login\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->lay_login:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0882

    const-string v1, "method \'loginWithFaceBook\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0497

    const-string v1, "method \'loginWithGoogle\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 9
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->e:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->lay_login:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity_ViewBinding;->e:Landroid/view/View;

    .line 9
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
