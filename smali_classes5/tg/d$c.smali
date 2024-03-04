.class final Ltg/d$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltg/d;


# direct methods
.method private constructor <init>(Ltg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltg/d$c;->a:Ltg/d;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltg/d;Ltg/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltg/d$c;-><init>(Ltg/d;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Ltg/d$f;

    iget-object v1, p0, Ltg/d$c;->a:Ltg/d;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltg/d$f;-><init>(Ltg/d;Ltg/d$a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ltg/d$c;->a:Ltg/d;

    invoke-virtual {v0}, Ltg/d;->size()I

    move-result v0

    return v0
.end method
