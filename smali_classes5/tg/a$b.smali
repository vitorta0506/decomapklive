.class Ltg/a$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltg/a;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltg/a;


# direct methods
.method constructor <init>(Ltg/a;)V
    .locals 0

    iput-object p1, p0, Ltg/a$b;->a:Ltg/a;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ltg/a$b$a;

    invoke-direct {v0, p0}, Ltg/a$b$a;-><init>(Ltg/a$b;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ltg/a$b;->a:Ltg/a;

    invoke-static {v0}, Ltg/a;->b(Ltg/a;)I

    move-result v0

    return v0
.end method
