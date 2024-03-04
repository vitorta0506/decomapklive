.class abstract Lcom/google/common/collect/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g3$c;,
        Lcom/google/common/collect/g3$e;,
        Lcom/google/common/collect/g3$b;,
        Lcom/google/common/collect/g3$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/collect/g3<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/g3;->a:Ljava/lang/Comparable;

    return-void
.end method

.method static a()Lcom/google/common/collect/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g3$b;->r()Lcom/google/common/collect/g3$b;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/Comparable;)Lcom/google/common/collect/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g3$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g3$c;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static c()Lcom/google/common/collect/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g3$d;->r()Lcom/google/common/collect/g3$d;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/Comparable;)Lcom/google/common/collect/g3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g3$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g3$e;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/g3;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g3;->f(Lcom/google/common/collect/g3;)I

    move-result p1

    return p1
.end method

.method e(Lcom/google/common/collect/l3;)Lcom/google/common/collect/g3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3<",
            "TC;>;)",
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/g3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/g3;

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/g3;->f(Lcom/google/common/collect/g3;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public f(Lcom/google/common/collect/g3;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g3<",
            "TC;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g3;->c()Lcom/google/common/collect/g3;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/common/collect/g3;->a()Lcom/google/common/collect/g3;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/g3;->a:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/common/collect/g3;->a:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 4
    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/g3$c;

    instance-of p1, p1, Lcom/google/common/collect/g3$c;

    invoke-static {v0, p1}, Lcom/google/common/primitives/a;->a(ZZ)I

    move-result p1

    return p1
.end method

.method abstract g(Ljava/lang/StringBuilder;)V
.end method

.method abstract h(Ljava/lang/StringBuilder;)V
.end method

.method public abstract hashCode()I
.end method

.method i()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/g3;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method abstract j(Lcom/google/common/collect/l3;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract k(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method abstract l(Lcom/google/common/collect/l3;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract m()Lcom/google/common/collect/BoundType;
.end method

.method abstract o()Lcom/google/common/collect/BoundType;
.end method

.method abstract p(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/l3;)Lcom/google/common/collect/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/l3<",
            "TC;>;)",
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation
.end method

.method abstract q(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/l3;)Lcom/google/common/collect/g3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/l3<",
            "TC;>;)",
            "Lcom/google/common/collect/g3<",
            "TC;>;"
        }
    .end annotation
.end method
