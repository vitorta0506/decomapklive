.class Lgb/b$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/b;->e(Ljava/lang/String;Lgb/b$b;)V
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
.field final synthetic a:Lgb/b$b;

.field final synthetic b:Lgb/b;


# direct methods
.method constructor <init>(Lgb/b;Lgb/b$b;)V
    .locals 0

    iput-object p1, p0, Lgb/b$a;->b:Lgb/b;

    iput-object p2, p0, Lgb/b$a;->a:Lgb/b$b;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lgb/b$a;->b:Lgb/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgb/b;->a(Lgb/b;Z)Z

    .line 3
    iget-object v0, p0, Lgb/b$a;->b:Lgb/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgb/b;->b(Lgb/b;Lcom/guochao/faceshow/aaspring/base/utils/a;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgb/b$a;->a:Lgb/b$b;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lgb/b$b;->onError(ILjava/lang/String;)V

    .line 2
    iget-object p1, p0, Lgb/b$a;->b:Lgb/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgb/b;->a(Lgb/b;Z)Z

    return-void
.end method

.method public onProgress(JJD)V
    .locals 0

    const-wide/16 p5, 0x64

    mul-long p1, p1, p5

    .line 1
    div-long/2addr p1, p3

    long-to-int p2, p1

    .line 2
    iget-object p1, p0, Lgb/b$a;->a:Lgb/b$b;

    invoke-interface {p1, p2}, Lgb/b$b;->onProgress(I)V

    return-void
.end method

.method public onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/io/File;
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
            "Ljava/io/File;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lgb/b$a;->a:Lgb/b$b;

    iget-object v0, p0, Lgb/b$a;->b:Lgb/b;

    invoke-static {v0}, Lgb/b;->c(Lgb/b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lgb/b$b;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lgb/b$a;->b:Lgb/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lgb/b;->a(Lgb/b;Z)Z

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
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lgb/b$a;->onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
