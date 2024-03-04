.class public final Lcom/google/common/util/concurrent/k0;
.super Lcom/google/common/util/concurrent/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/a$j<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/a$j;-><init>()V

    return-void
.end method

.method public static V()Lcom/google/common/util/concurrent/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/k0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/k0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/k0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public R(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/a;->R(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public S(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/a;->S(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
