.class Ltg/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltg/a$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Ltg/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/a<",
            "TV;>.g;"
        }
    .end annotation
.end field

.field final synthetic b:Ltg/a$b;


# direct methods
.method constructor <init>(Ltg/a$b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ltg/a$b$a;->b:Ltg/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ltg/a$g;

    iget-object p1, p1, Ltg/a$b;->a:Ltg/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltg/a$g;-><init>(Ltg/a;Ltg/a$a;)V

    iput-object v0, p0, Ltg/a$b$a;->a:Ltg/a$g;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ltg/a$b$a;->a:Ltg/a$g;

    invoke-virtual {v0}, Ltg/a$g;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Ltg/a$b$a;->a:Ltg/a$g;

    invoke-virtual {v0}, Ltg/a$g;->b()Ltg/b$a;

    move-result-object v0

    invoke-interface {v0}, Ltg/b$a;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Ltg/a$b$a;->a:Ltg/a$g;

    invoke-virtual {v0}, Ltg/a$g;->remove()V

    return-void
.end method
