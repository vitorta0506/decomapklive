.class final Ltg/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Character;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Ltg/a;


# direct methods
.method constructor <init>(Ltg/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltg/a$e;->b:Ltg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Ltg/a$e;->a:I

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltg/a$e;->b:Ltg/a;

    invoke-static {v0}, Ltg/a;->d(Ltg/a;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/a$e;->a:I

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
.method public a()Ljava/lang/Character;
    .locals 2

    .line 1
    invoke-direct {p0}, Ltg/a$e;->b()V

    .line 2
    iget-object v0, p0, Ltg/a$e;->b:Ltg/a;

    invoke-static {v0}, Ltg/a;->f(Ltg/a;)[C

    move-result-object v0

    iget v1, p0, Ltg/a$e;->a:I

    aget-char v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltg/a$e;->a()Ljava/lang/Character;

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
    invoke-direct {p0}, Ltg/a$e;->b()V

    .line 2
    iget-object v0, p0, Ltg/a$e;->b:Ltg/a;

    invoke-static {v0}, Ltg/a;->d(Ltg/a;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/a$e;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ltg/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-direct {p0}, Ltg/a$e;->b()V

    .line 2
    iget-object v0, p0, Ltg/a$e;->b:Ltg/a;

    invoke-static {v0}, Ltg/a;->d(Ltg/a;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ltg/a$e;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ltg/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ltg/a$e;->b:Ltg/a;

    invoke-static {v1}, Ltg/a;->d(Ltg/a;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ltg/a$e;->a:I

    invoke-static {p1}, Ltg/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    return-object v0
.end method
