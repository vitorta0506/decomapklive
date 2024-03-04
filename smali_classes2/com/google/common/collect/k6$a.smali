.class Lcom/google/common/collect/k6$a;
.super Lcom/google/common/collect/k6$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k6;->b(I)Lcom/google/common/collect/k6$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k6$f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/k6$a;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/k6$f;-><init>()V

    return-void
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/k6$a;->a:I

    invoke-static {v0}, Lcom/google/common/collect/a7;->e(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
