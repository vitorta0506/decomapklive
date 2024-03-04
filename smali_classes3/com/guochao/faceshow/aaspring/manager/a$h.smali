.class Lcom/guochao/faceshow/aaspring/manager/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/a;->u(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/bean/BagListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/manager/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/a;ZILcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->d:Lcom/guochao/faceshow/aaspring/manager/a;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->a:Z

    iput p3, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->b:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance p1, Lcom/guochao/faceshow/bean/BagListBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/bean/BagListBean;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/bean/BagListBean;->setList(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->d:Lcom/guochao/faceshow/aaspring/manager/a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/manager/a;->b:Landroid/util/SparseArray;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lg7/a;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->d:Lcom/guochao/faceshow/aaspring/manager/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/BagListBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->a:Z

    iget v3, p0, Lcom/guochao/faceshow/aaspring/manager/a$h;->b:I

    invoke-static {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/manager/a;->c(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/bean/BagListBean;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ZI)V

    return-void
.end method
