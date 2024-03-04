.class Lbb/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->k(Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

.field final synthetic b:Lbb/a;


# direct methods
.method constructor <init>(Lbb/a;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V
    .locals 0

    iput-object p1, p0, Lbb/a$c;->b:Lbb/a;

    iput-object p2, p0, Lbb/a$c;->a:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbb/a$c;->b:Lbb/a;

    invoke-static {v0}, Lbb/a;->a(Lbb/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lbb/a$c;->b:Lbb/a;

    invoke-static {v1}, Lbb/a;->a(Lbb/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lbb/a$c;->b:Lbb/a;

    invoke-static {v1}, Lbb/a;->a(Lbb/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lbb/a$c;->b:Lbb/a;

    invoke-static {v1}, Lbb/a;->a(Lbb/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lod/a;

    iget-object v2, p0, Lbb/a$c;->a:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lod/a;->a(Ljava/lang/Object;ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lbb/a$c;->b:Lbb/a;

    invoke-static {v0}, Lbb/a;->a(Lbb/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method
