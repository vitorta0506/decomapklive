.class final Ltg/a$c;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Character;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltg/a;


# direct methods
.method private constructor <init>(Ltg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltg/a$c;->a:Ltg/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltg/a;Ltg/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ltg/a$c;-><init>(Ltg/a;)V

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
            "Ljava/lang/Character;",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Ltg/a$f;

    iget-object v1, p0, Ltg/a$c;->a:Ltg/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltg/a$f;-><init>(Ltg/a;Ltg/a$a;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ltg/a$c;->a:Ltg/a;

    invoke-virtual {v0}, Ltg/a;->size()I

    move-result v0

    return v0
.end method
