.class Lcom/google/common/collect/k6$f$a;
.super Lcom/google/common/collect/k6$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k6$f;->b(I)Lcom/google/common/collect/k6$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k6$e<",
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

    iput-object p1, p0, Lcom/google/common/collect/k6$f$a;->b:Lcom/google/common/collect/k6$f;

    iput p2, p0, Lcom/google/common/collect/k6$f$a;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/k6$e;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lcom/google/common/collect/x5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/x5<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k6$f$a;->b:Lcom/google/common/collect/k6$f;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/k6$f;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/k6$c;

    iget v2, p0, Lcom/google/common/collect/k6$f$a;->a:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/k6$c;-><init>(I)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/l6;->b(Ljava/util/Map;Lcom/google/common/base/w;)Lcom/google/common/collect/x5;

    move-result-object v0

    return-object v0
.end method
