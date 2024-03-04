.class public abstract Leh/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/j0$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Leh/j0$b$a;
    .locals 2

    .line 1
    new-instance v0, Leh/d$b;

    invoke-direct {v0}, Leh/d$b;-><init>()V

    const-string v1, "%s"

    .line 2
    invoke-virtual {v0, v1}, Leh/d$b;->d(Ljava/lang/String;)Leh/j0$b$a;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Leh/j0$b$a;->a(Ljava/util/Map;)Leh/j0$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Leh/j0$c;",
            ">;"
        }
    .end annotation
.end method

.method abstract d()Ljava/lang/String;
.end method

.method public abstract e()Leh/a1$c;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method abstract g()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/j0$d;",
            ">;"
        }
    .end annotation
.end method
