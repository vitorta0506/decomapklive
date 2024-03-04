.class public final Lp5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lp5/a;


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/api/gax/rpc/a$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp5/a;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lp5/a;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    sput-object v0, Lp5/a;->b:Lp5/a;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/api/gax/rpc/a$a;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    iput-object p1, p0, Lp5/a;->a:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public static a()Lp5/a;
    .locals 1

    sget-object v0, Lp5/a;->b:Lp5/a;

    return-object v0
.end method


# virtual methods
.method public b(Lp5/a;)Lp5/a;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    iget-object v1, p1, Lp5/a;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lp5/a;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/e9;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/gax/rpc/a$a;

    .line 4
    iget-object v3, p1, Lp5/a;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v3, p0, Lp5/a;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lp5/a;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lp5/a;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object p1
.end method
