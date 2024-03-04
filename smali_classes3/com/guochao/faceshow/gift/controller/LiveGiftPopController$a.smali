.class Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->U1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;->a:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
            ">;>;)V"
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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;->a:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    invoke-static {p2}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->P1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)Landroid/widget/LinearLayout;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;->a:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->R1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;Ljava/util/List;)Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;->a:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->Q1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;->a:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    invoke-static {p2}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->S1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;->setData(Ljava/util/List;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;->a:Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    invoke-static {p1}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->P1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
