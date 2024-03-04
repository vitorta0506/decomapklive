.class Lcom/google/common/collect/p5$c;
.super Lcom/google/common/collect/b9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/p5;->C(Ljava/util/Iterator;Lcom/google/common/base/h;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b9<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/base/h;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/p5$c;->b:Lcom/google/common/base/h;

    invoke-direct {p0, p1}, Lcom/google/common/collect/b9;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/p5$c;->b:Lcom/google/common/base/h;

    invoke-interface {v0, p1}, Lcom/google/common/base/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
