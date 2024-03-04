.class Lcom/google/common/collect/k6$f$b;
.super Lcom/google/common/collect/k6$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k6$f;->e(I)Lcom/google/common/collect/k6$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k6$g<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/common/collect/k6$f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k6$f;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/k6$f$b;->b:Lcom/google/common/collect/k6$f;

    iput p2, p0, Lcom/google/common/collect/k6$f$b;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/k6$g;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/collect/u7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/u7<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k6$f$b;->b:Lcom/google/common/collect/k6$f;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/k6$f;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/k6$d;

    iget v2, p0, Lcom/google/common/collect/k6$f$b;->a:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/k6$d;-><init>(I)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/l6;->c(Ljava/util/Map;Lcom/google/common/base/w;)Lcom/google/common/collect/u7;

    move-result-object v0

    return-object v0
.end method
