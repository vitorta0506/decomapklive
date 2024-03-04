.class public Lxa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lya/a;


# direct methods
.method public constructor <init>(Lya/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxa/a;->a:Lya/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lxa/a;->a:Lya/a;

    invoke-interface {v0}, Lya/a;->J()V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object p2, Lcom/guochao/faceshow/utils/Contants;->GET_USER_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lxa/a$a;

    invoke-direct {p2, p0}, Lxa/a$a;-><init>(Lxa/a;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lxa/a;->a:Lya/a;

    invoke-interface {p1, p2}, Lya/a;->Q(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lxa/a;->a:Lya/a;

    invoke-interface {p1, p2}, Lya/a;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
