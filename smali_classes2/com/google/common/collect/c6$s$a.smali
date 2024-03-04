.class final Lcom/google/common/collect/c6$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/c6$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6$s;
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
        "Lcom/google/common/collect/c6$s<",
        "TK;TV;>;",
        "Lcom/google/common/collect/c6$t<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/c6$s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c6$s$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/c6$s$a;

    invoke-direct {v0}, Lcom/google/common/collect/c6$s$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/c6$s$a;->a:Lcom/google/common/collect/c6$s$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static h()Lcom/google/common/collect/c6$s$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/c6$s$a<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/c6$s$a;->a:Lcom/google/common/collect/c6$s$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/c6$n;Lcom/google/common/collect/c6$i;Lcom/google/common/collect/c6$i;)Lcom/google/common/collect/c6$i;
    .locals 0

    check-cast p1, Lcom/google/common/collect/c6$t;

    check-cast p2, Lcom/google/common/collect/c6$s;

    check-cast p3, Lcom/google/common/collect/c6$s;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/c6$s$a;->g(Lcom/google/common/collect/c6$t;Lcom/google/common/collect/c6$s;Lcom/google/common/collect/c6$s;)Lcom/google/common/collect/c6$s;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/c6$p;
    .locals 1

    sget-object v0, Lcom/google/common/collect/c6$p;->b:Lcom/google/common/collect/c6$p;

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/common/collect/c6$n;Lcom/google/common/collect/c6$i;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/c6$t;

    check-cast p2, Lcom/google/common/collect/c6$s;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/c6$s$a;->k(Lcom/google/common/collect/c6$t;Lcom/google/common/collect/c6$s;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic d(Lcom/google/common/collect/c6$n;Ljava/lang/Object;ILcom/google/common/collect/c6$i;)Lcom/google/common/collect/c6$i;
    .locals 0

    check-cast p1, Lcom/google/common/collect/c6$t;

    check-cast p4, Lcom/google/common/collect/c6$s;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/c6$s$a;->i(Lcom/google/common/collect/c6$t;Ljava/lang/Object;ILcom/google/common/collect/c6$s;)Lcom/google/common/collect/c6$s;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/google/common/collect/c6$p;
    .locals 1

    sget-object v0, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    return-object v0
.end method

.method public bridge synthetic f(Lcom/google/common/collect/c6;II)Lcom/google/common/collect/c6$n;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/c6$s$a;->j(Lcom/google/common/collect/c6;II)Lcom/google/common/collect/c6$t;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/c6$t;Lcom/google/common/collect/c6$s;Lcom/google/common/collect/c6$s;)Lcom/google/common/collect/c6$s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/c6$n;->n(Lcom/google/common/collect/c6$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/c6$t;->H(Lcom/google/common/collect/c6$t;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/c6$s;->d(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/c6$s;)Lcom/google/common/collect/c6$s;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/collect/c6$t;Ljava/lang/Object;ILcom/google/common/collect/c6$s;)Lcom/google/common/collect/c6$s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6$t<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/c6$s;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/c6$s;-><init>(Ljava/lang/Object;ILcom/google/common/collect/c6$s;)V

    return-object p1
.end method

.method public j(Lcom/google/common/collect/c6;II)Lcom/google/common/collect/c6$t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6<",
            "TK;TV;",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$t<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/c6$t<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/c6$t;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/c6$t;-><init>(Lcom/google/common/collect/c6;II)V

    return-object v0
.end method

.method public k(Lcom/google/common/collect/c6$t;Lcom/google/common/collect/c6$s;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6$t<",
            "TK;TV;>;",
            "Lcom/google/common/collect/c6$s<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/c6$t;->H(Lcom/google/common/collect/c6$t;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/common/collect/c6$s;->e(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
