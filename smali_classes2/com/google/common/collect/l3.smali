.class public abstract Lcom/google/common/collect/l3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l3$c;,
        Lcom/google/common/collect/l3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/common/collect/l3;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/common/collect/l3;->a:Z

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/common/collect/l3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/l3;-><init>(Z)V

    return-void
.end method

.method public static b()Lcom/google/common/collect/l3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/l3$b;->i()Lcom/google/common/collect/l3$b;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/google/common/collect/l3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l3<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/l3$c;->i()Lcom/google/common/collect/l3$c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)J"
        }
    .end annotation
.end method

.method public abstract d()Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method

.method abstract g(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;J)TC;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method
