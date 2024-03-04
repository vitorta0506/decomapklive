.class Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->s:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;->a(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
