.class Ltg/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltg/d$b;->iterator()Ljava/util/Iterator;
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
.field final a:Ltg/d$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/d<",
            "TV;>.g;"
        }
    .end annotation
.end field

.field final synthetic b:Ltg/d$b;


# direct methods
.method constructor <init>(Ltg/d$b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ltg/d$b$a;->b:Ltg/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ltg/d$g;

    iget-object p1, p1, Ltg/d$b;->a:Ltg/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltg/d$g;-><init>(Ltg/d;Ltg/d$a;)V

    iput-object v0, p0, Ltg/d$b$a;->a:Ltg/d$g;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ltg/d$b$a;->a:Ltg/d$g;

    invoke-virtual {v0}, Ltg/d$g;->hasNext()Z

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

    iget-object v0, p0, Ltg/d$b$a;->a:Ltg/d$g;

    invoke-virtual {v0}, Ltg/d$g;->b()Ltg/e$a;

    move-result-object v0

    invoke-interface {v0}, Ltg/e$a;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Ltg/d$b$a;->a:Ltg/d$g;

    invoke-virtual {v0}, Ltg/d$g;->remove()V

    return-void
.end method
