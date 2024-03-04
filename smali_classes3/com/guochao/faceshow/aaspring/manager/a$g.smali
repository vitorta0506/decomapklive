.class Lcom/guochao/faceshow/aaspring/manager/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;


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
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
        "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

.field final synthetic b:Z

.field final synthetic c:Lcom/guochao/faceshow/aaspring/manager/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$g;->c:Lcom/guochao/faceshow/aaspring/manager/a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/a$g;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/manager/a$g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$g;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/manager/a$g;->b:Z

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lg7/a;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    :cond_0
    return-void
.end method
