.class public Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
.super Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;,
        Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object p1
.end method

.method public bridge synthetic addQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 0
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->bindToLifecycle(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object p1
.end method

.method public bridge synthetic bindToLifecycle(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->b(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->c(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object p1
.end method

.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->cancel()V

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
            "TE;>;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$b;-><init>(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFail(Lkotlin/jvm/functions/Function1;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setFailClz(Ljava/lang/Class;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object p1
.end method

.method public g(Ljava/lang/Object;Z)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->putBodyModel(Ljava/lang/Object;Z)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object p1
.end method

.method public h(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->removeQuery(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-object v0
.end method

.method public j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
            "TT;>;)",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$a;-><init>(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccess(Lkotlin/jvm/functions/Function1;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->getCallbackHolder()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;

    move-result-object v1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$CallbackHolder;->setSuccessClz(Ljava/lang/reflect/Type;)V

    return-object p0
.end method

.method public bridge synthetic putBody(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBodyModel(Ljava/lang/Object;Z)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->g(Ljava/lang/Object;Z)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeQuery(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->h(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    return-object v0
.end method
