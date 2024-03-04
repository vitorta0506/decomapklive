.class Lcom/guochao/faceshow/aaspring/manager/a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/a;->onLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/a$a;->a:Lcom/guochao/faceshow/aaspring/manager/a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/a$a;->onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
