.class Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->i:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->f:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->g:Landroid/widget/ListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->a:I

    if-le p1, p2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->l:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;

    if-eqz p1, :cond_3

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$d;->d:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
