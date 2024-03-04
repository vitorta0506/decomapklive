.class Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->e:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->e:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->distance:I

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->nearby:I

    .line 5
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->friends:I

    .line 6
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->closeDistance:I

    .line 7
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lb8/d;->a(Lb8/a;Z)V

    return-void
.end method
