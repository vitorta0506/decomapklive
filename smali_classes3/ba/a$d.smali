.class Lba/a$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/a;->x(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

.field final synthetic b:Lba/a;


# direct methods
.method constructor <init>(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 0

    iput-object p1, p0, Lba/a$d;->b:Lba/a;

    iput-object p2, p0, Lba/a$d;->a:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lba/a$d;->b:Lba/a;

    iget-object v0, p0, Lba/a$d;->a:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-static {p2, p1, v0}, Lba/a;->k(Lba/a;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lba/a$d;->b:Lba/a;

    invoke-static {v0}, Lba/a;->l(Lba/a;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lba/a$d;->a:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getUuid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lba/a$d;->a:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setPublishStatus(I)V

    .line 3
    iget-object v0, p0, Lba/a$d;->b:Lba/a;

    invoke-static {v0}, Lba/a;->h(Lba/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lba/a$d;->b:Lba/a;

    iget-object v1, p0, Lba/a$d;->a:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-static {v0, v1}, Lba/a;->i(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f12097b

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 7
    :cond_2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_3

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1205a2

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_3
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, p1, p2}, Lba/a$d;->a(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
