.class final Ltg/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ltg/d$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/d<",
            "TV;>.g;"
        }
    .end annotation
.end field

.field final synthetic b:Ltg/d;


# direct methods
.method private constructor <init>(Ltg/d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ltg/d$f;->b:Ltg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ltg/d$g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltg/d$g;-><init>(Ltg/d;Ltg/d$a;)V

    iput-object v0, p0, Ltg/d$f;->a:Ltg/d$g;

    return-void
.end method

.method synthetic constructor <init>(Ltg/d;Ltg/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ltg/d$f;-><init>(Ltg/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltg/d$f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ltg/d$f;->a:Ltg/d$g;

    invoke-virtual {v0}, Ltg/d$g;->b()Ltg/e$a;

    .line 3
    new-instance v0, Ltg/d$e;

    iget-object v1, p0, Ltg/d$f;->b:Ltg/d;

    iget-object v2, p0, Ltg/d$f;->a:Ltg/d$g;

    invoke-static {v2}, Ltg/d$g;->a(Ltg/d$g;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ltg/d$e;-><init>(Ltg/d;I)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ltg/d$f;->a:Ltg/d$g;

    invoke-virtual {v0}, Ltg/d$g;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltg/d$f;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Ltg/d$f;->a:Ltg/d$g;

    invoke-virtual {v0}, Ltg/d$g;->remove()V

    return-void
.end method
