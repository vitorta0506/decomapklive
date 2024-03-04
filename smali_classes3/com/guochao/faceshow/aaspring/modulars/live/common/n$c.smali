.class Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
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
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->a:I

    if-le p1, p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->l:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;

    if-eqz p1, :cond_3

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$c;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
