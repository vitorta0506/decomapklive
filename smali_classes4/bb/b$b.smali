.class Lbb/b$b;
.super Lod/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b;->l(Lod/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lod/a<",
        "Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lod/a;

.field final synthetic b:Lbb/b;


# direct methods
.method constructor <init>(Lbb/b;Lod/a;)V
    .locals 0

    iput-object p1, p0, Lbb/b$b;->b:Lbb/b;

    iput-object p2, p0, Lbb/b$b;->a:Lod/a;

    invoke-direct {p0}, Lod/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {p0, p1, p2, p3}, Lbb/b$b;->b(Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;ILjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbb/b$b;->a:Lod/a;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p1, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->video:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-virtual {v0, p1, p2, p3}, Lod/a;->a(Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
