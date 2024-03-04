.class Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/CompoundButton;

.field final synthetic c:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;ZLandroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;->c:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;->a:Z

    iput-object p3, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;->b:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;->b:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;->c:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/guochao/faceshow/bean/UserBean$UserSet;

    invoke-direct {p2}, Lcom/guochao/faceshow/bean/UserBean$UserSet;-><init>()V

    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    .line 4
    :cond_0
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;->a:Z

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->online:I

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lb8/d;->a(Lb8/a;Z)V

    return-void
.end method
