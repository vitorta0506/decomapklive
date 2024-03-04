.class Lcom/guochao/faceshow/aaspring/manager/h$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/h;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/h;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/h;->f(Lcom/guochao/faceshow/aaspring/manager/h;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/manager/h;->d(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/manager/h;->e(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/guochao/faceshow/aaspring/manager/h;->b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/h;->f(Lcom/guochao/faceshow/aaspring/manager/h;Z)Z

    return-void
.end method

.method public onProgress(JJD)V
    .locals 9

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/h;->d(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/manager/h;->e(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v2

    move-wide v3, p5

    move-wide v5, p3

    move-wide v7, p1

    invoke-virtual/range {v0 .. v8}, Lcom/guochao/faceshow/aaspring/manager/h;->a(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;DJJ)V

    return-void
.end method

.method public onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/manager/h;->d(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/manager/h;->e(Lcom/guochao/faceshow/aaspring/manager/h;)Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/h;->p(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/h$a;->a:Lcom/guochao/faceshow/aaspring/manager/h;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/manager/h;->f(Lcom/guochao/faceshow/aaspring/manager/h;Z)Z

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/h$a;->onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
