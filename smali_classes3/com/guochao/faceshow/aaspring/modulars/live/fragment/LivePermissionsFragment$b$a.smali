.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;->a(Lcom/guochao/faceshow/aaspring/beans/OnLineMember;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;Lcom/guochao/faceshow/aaspring/beans/OnLineMember;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
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
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 3
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->onFailure(Lg7/a;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment;)Ld9/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment;)Ld9/c;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getNickName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getImg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Ld9/c;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
