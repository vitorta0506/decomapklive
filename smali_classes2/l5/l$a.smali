.class public abstract Ll5/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ll5/l;
.end method

.method public b()Ll5/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll5/l$a;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll5/l$a;->g(Ljava/util/List;)Ll5/l$a;

    .line 2
    invoke-virtual {p0}, Ll5/l$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll5/l$a;->f(Ljava/util/List;)Ll5/l$a;

    .line 3
    invoke-virtual {p0}, Ll5/l$a;->e()Z

    move-result v0

    invoke-virtual {p0, v0}, Ll5/l$a;->h(Z)Ll5/l$a;

    .line 4
    invoke-virtual {p0}, Ll5/l$a;->a()Ll5/l;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Z
.end method

.method public abstract f(Ljava/util/List;)Ll5/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ll5/l$a;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/util/List;)Ll5/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ll5/l$a;"
        }
    .end annotation
.end method

.method public abstract h(Z)Ll5/l$a;
.end method
