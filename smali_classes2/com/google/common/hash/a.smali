.class abstract Lcom/google/common/hash/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/i;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/h;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/hash/i;->a()Lcom/google/common/hash/j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/j;->a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/j;->b()Lcom/google/common/hash/h;

    move-result-object p1

    return-object p1
.end method
