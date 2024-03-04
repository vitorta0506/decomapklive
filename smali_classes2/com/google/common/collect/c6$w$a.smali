.class final Lcom/google/common/collect/c6$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/c6$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6$w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/c6$j<",
        "TK;TV;",
        "Lcom/google/common/collect/c6$w<",
        "TK;TV;>;",
        "Lcom/google/common/collect/c6$x<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/c6$w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c6$w$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/c6$w$a;

    invoke-direct {v0}, Lcom/google/common/collect/c6$w$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/c6$w$a;->a:Lcom/google/common/collect/c6$w$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/c6$w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/c6$w$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/c6$w$a;->a:Lcom/google/common/collect/c6$w$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/c6$n;Lcom/google/common/collect/c6$i;Lcom/google/common/collect/c6$i;)Lcom/google/common/collect/c6$i;
    .locals 0

    check-cast p1, Lcom/google/common/collect/c6$x;

    check-cast p2, Lcom/google/common/collect/c6$w;

    check-cast p3, Lcom/google/common/collect/c6$w;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/c6$w$a;->g(Lcom/google/common/collect/c6$x;Lcom/google/common/collect/c6$w;Lcom/google/common/collect/c6$w;)Lcom/google/common/collect/c6$w;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/c6$p;
    .locals 1

    sget-object v0, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/c6$n;Lcom/google/common/collect/c6$i;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/c6$x;

    check-cast p2, Lcom/google/common/collect/c6$w;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/c6$w$a;->k(Lcom/google/common/collect/c6$x;Lcom/google/common/collect/c6$w;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/google/common/collect/c6$n;Ljava/lang/Object;ILcom/google/common/collect/c6$i;)Lcom/google/common/collect/c6$i;
    .locals 0

    check-cast p1, Lcom/google/common/collect/c6$x;

    check-cast p4, Lcom/google/common/collect/c6$w;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/c6$w$a;->i(Lcom/google/common/collect/c6$x;Ljava/lang/Object;ILcom/google/common/collect/c6$w;)Lcom/google/common/collect/c6$w;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/google/common/collect/c6$p;
    .locals 1

    sget-object v0, Lcom/google/common/collect/c6$p;->b:Lcom/google/common/collect/c6$p;

    return-object v0
.end method

.method public bridge synthetic f(Lcom/google/common/collect/c6;II)Lcom/google/common/collect/c6$n;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/c6$w$a;->j(Lcom/google/common/collect/c6;II)Lcom/google/common/collect/c6$x;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/c6$x;Lcom/google/common/collect/c6$w;Lcom/google/common/collect/c6$w;)Lcom/google/common/collect/c6$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6$x<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$w<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/c6$w<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/common/collect/c6$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/c6$x;->H(Lcom/google/common/collect/c6$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/c6$w;->d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/c6$w;)Lcom/google/common/collect/c6$w;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/c6$x;Ljava/lang/Object;ILcom/google/common/collect/c6$w;)Lcom/google/common/collect/c6$w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6$x<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/c6$w<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/c6$w<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/c6$w;

    invoke-static {p1}, Lcom/google/common/collect/c6$x;->H(Lcom/google/common/collect/c6$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/c6$w;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/c6$w;)V

    return-object v0
.end method

.method public j(Lcom/google/common/collect/c6;II)Lcom/google/common/collect/c6$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6<",
            "TK;TV;",
            "Lcom/google/common/collect/c6$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$x<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/c6$x<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/c6$x;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/c6$x;-><init>(Lcom/google/common/collect/c6;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/c6$x;Lcom/google/common/collect/c6$w;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6$x<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$w<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-virtual {p2, p3}, Lcom/google/common/collect/c6$w;->e(Ljava/lang/Object;)V

    return-void
.end method
