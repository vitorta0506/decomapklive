.class Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->i(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->b:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    iput p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const/16 v0, 0x520b

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->b:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->e(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120674

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->b:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->b:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->b:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;->d(Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->a:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/MyPrizeBean;

    const-string p2, "1"

    iput-object p2, p1, Lcom/guochao/faceshow/bean/MyPrizeBean;->isUseAccessory:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/adapters/GiftRecycleAdapter$b;->b:Lcom/guochao/faceshow/adapters/GiftRecycleAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
