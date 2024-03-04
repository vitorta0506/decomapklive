.class Ltg/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltg/a$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ltg/a$d;


# direct methods
.method constructor <init>(Ltg/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltg/a$d$a;->b:Ltg/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Ltg/a$d;->a:Ltg/a;

    invoke-static {p1}, Ltg/a;->c(Ltg/a;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ltg/a$d$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Ltg/a$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ltg/a$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltg/a$d$a;->a()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Ltg/a$d$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
