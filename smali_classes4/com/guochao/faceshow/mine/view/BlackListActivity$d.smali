.class Lcom/guochao/faceshow/mine/view/BlackListActivity$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BlackListActivity;->i0(Lcom/guochao/faceshow/mine/model/PeopleBean;)V
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
.field final synthetic a:Lcom/guochao/faceshow/mine/model/PeopleBean;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BlackListActivity;Lcom/guochao/faceshow/mine/model/PeopleBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;->a:Lcom/guochao/faceshow/mine/model/PeopleBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
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

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/views/h;->a(Landroid/content/Context;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
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
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BlackListActivity;->a:Ljava/util/List;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;->a:Lcom/guochao/faceshow/mine/model/PeopleBean;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BlackListActivity$d;->b:Lcom/guochao/faceshow/mine/view/BlackListActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/mine/view/BlackListActivity;->b:Lcom/guochao/faceshow/utils/AAComAdapter;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BlackListActivity;->a:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    return-void
.end method
