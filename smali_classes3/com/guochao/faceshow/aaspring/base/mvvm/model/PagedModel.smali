.class public Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0017\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;",
        "P",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "list",
        "",
        "(Ljava/util/List;)V",
        "pageCount",
        "",
        "getPageCount",
        "()Ljava/lang/Integer;",
        "setPageCount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "pageIndex",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "totalCount",
        "getTotalCount",
        "setTotalCount",
        "lib_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private pageCount:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageIndex:I

.field private totalCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TP;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->pageIndex:I

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->pageCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getPageCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->pageCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->pageIndex:I

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->totalCount:I

    return v0
.end method

.method public final setPageCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->pageCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->pageIndex:I

    return-void
.end method

.method public final setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/model/PagedModel;->totalCount:I

    return-void
.end method
