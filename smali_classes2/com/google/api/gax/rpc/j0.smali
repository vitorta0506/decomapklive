.class public Lcom/google/api/gax/rpc/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/j0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/api/gax/retrying/RetrySettings;


# direct methods
.method protected constructor <init>(Lcom/google/api/gax/rpc/j0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/j0$a<",
            "TRequestT;TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/gax/rpc/j0$a;->a(Lcom/google/api/gax/rpc/j0$a;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/j0;->a:Lcom/google/common/collect/ImmutableSet;

    .line 3
    invoke-static {p1}, Lcom/google/api/gax/rpc/j0$a;->b(Lcom/google/api/gax/rpc/j0$a;)Lcom/google/api/gax/retrying/RetrySettings$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/gax/retrying/RetrySettings$a;->b()Lcom/google/api/gax/retrying/RetrySettings;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/j0;->b:Lcom/google/api/gax/retrying/RetrySettings;

    return-void
.end method

.method static synthetic a(Lcom/google/api/gax/rpc/j0;)Lcom/google/common/collect/ImmutableSet;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/j0;->a:Lcom/google/common/collect/ImmutableSet;

    return-object p0
.end method

.method public static d()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/j0$a;

    invoke-direct {v0}, Lcom/google/api/gax/rpc/j0$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/api/gax/retrying/RetrySettings;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/j0;->b:Lcom/google/api/gax/retrying/RetrySettings;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/j0;->a:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public e()Lcom/google/api/gax/rpc/j0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0$a<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/j0$a;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/j0$a;-><init>(Lcom/google/api/gax/rpc/j0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/google/api/gax/rpc/j0;

    .line 3
    iget-object v2, p0, Lcom/google/api/gax/rpc/j0;->b:Lcom/google/api/gax/retrying/RetrySettings;

    iget-object v3, p1, Lcom/google/api/gax/rpc/j0;->b:Lcom/google/api/gax/retrying/RetrySettings;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/google/api/gax/rpc/j0;->a:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Lcom/google/api/gax/rpc/j0;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/j0;->b:Lcom/google/api/gax/retrying/RetrySettings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x2b

    mul-int/lit8 v0, v0, 0x2b

    .line 2
    iget-object v2, p0, Lcom/google/api/gax/rpc/j0;->a:Lcom/google/common/collect/ImmutableSet;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/j0;->a:Lcom/google/common/collect/ImmutableSet;

    const-string v2, "retryableCodes"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gax/rpc/j0;->b:Lcom/google/api/gax/retrying/RetrySettings;

    const-string v2, "retrySettings"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
