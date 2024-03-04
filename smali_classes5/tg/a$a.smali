.class Ltg/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ltg/b$a<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltg/a;


# direct methods
.method constructor <init>(Ltg/a;)V
    .locals 0

    iput-object p1, p0, Ltg/a$a;->a:Ltg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ltg/b$a<",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Ltg/a$g;

    iget-object v1, p0, Ltg/a$a;->a:Ltg/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltg/a$g;-><init>(Ltg/a;Ltg/a$a;)V

    return-object v0
.end method
