.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLr9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lr9/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lr9/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->b:Lr9/a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->b:Lr9/a;

    invoke-interface {p1}, Lr9/a;->onErrorCallback()V

    return-void
.end method

.method public onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "_temp"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->b:Lr9/a;

    invoke-interface {p1}, Lr9/a;->a()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->b:Lr9/a;

    invoke-interface {p1}, Lr9/a;->onErrorCallback()V

    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/c$a;->onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
