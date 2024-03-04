.class Lcom/guochao/faceshow/aaspring/manager/a$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/manager/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/a;ZLcom/guochao/faceshow/aaspring/base/http/callback/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->d:Lcom/guochao/faceshow/aaspring/manager/a;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->a:Z

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->c:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lg7/a;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lg7/a;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v0, v1, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->d:Lcom/guochao/faceshow/aaspring/manager/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->a:Z

    const/4 v3, 0x1

    new-array v4, v3, [I

    iget v5, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->c:I

    aput v5, v4, p2

    invoke-static {v0, p1, v1, v2, v4}, Lcom/guochao/faceshow/aaspring/manager/a;->a(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z[I)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/guochao/faceshow/aaspring/manager/a;->d:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xdbba00

    cmp-long p2, v0, v4

    if-ltz p2, :cond_2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->c:I

    if-ne p2, v3, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/a$f;->d:Lcom/guochao/faceshow/aaspring/manager/a;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a;->b(Lcom/guochao/faceshow/aaspring/manager/a;Lcom/guochao/faceshow/aaspring/beans/AppResource;I)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/a;->d(Ljava/util/List;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/guochao/faceshow/aaspring/manager/a;->d:J

    :cond_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/AppResource;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a$f;->onResponse(Lcom/guochao/faceshow/aaspring/beans/AppResource;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
