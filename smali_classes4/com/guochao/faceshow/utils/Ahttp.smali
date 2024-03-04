.class public Lcom/guochao/faceshow/utils/Ahttp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/guochao/faceshow/utils/Ahttp;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 4
    instance-of p2, p1, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/utils/Ahttp;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_0
    return-void
.end method

.method public static isNetError(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "UnknownHostException"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ConnectException"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/Ahttp;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    :cond_0
    return-void
.end method

.method public addFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/utils/Ahttp;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->S(Ljava/lang/String;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-void
.end method

.method public addStrParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/Ahttp;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public hasFile()V
    .locals 0

    return-void
.end method

.method public send(Lcom/guochao/faceshow/utils/ArequestCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/utils/ArequestCallBack<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/utils/Ahttp;->mPostRequest:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/utils/Ahttp$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/utils/Ahttp$1;-><init>(Lcom/guochao/faceshow/utils/Ahttp;Lcom/guochao/faceshow/utils/ArequestCallBack;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
