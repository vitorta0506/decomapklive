.class final Ltg/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Ltg/d;


# direct methods
.method constructor <init>(Ltg/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltg/d$e;->b:Ltg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Ltg/d$e;->a:I

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltg/d$e;->b:Ltg/d;

    invoke-static {v0}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/d$e;->a:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The map entry has been removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-direct {p0}, Ltg/d$e;->b()V

    .line 2
    iget-object v0, p0, Ltg/d$e;->b:Ltg/d;

    invoke-static {v0}, Ltg/d;->f(Ltg/d;)[I

    move-result-object v0

    iget v1, p0, Ltg/d$e;->a:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltg/d$e;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ltg/d$e;->b()V

    .line 2
    iget-object v0, p0, Ltg/d$e;->b:Ltg/d;

    invoke-static {v0}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/d$e;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ltg/d;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ltg/d$e;->b()V

    .line 2
    iget-object v0, p0, Ltg/d$e;->b:Ltg/d;

    invoke-static {v0}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/d$e;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ltg/d;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ltg/d$e;->b:Ltg/d;

    invoke-static {v1}, Ltg/d;->d(Ltg/d;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ltg/d$e;->a:I

    invoke-static {p1}, Ltg/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    return-object v0
.end method
