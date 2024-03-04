.class public Lwb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lxb/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxb/e<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxb/e;

    invoke-direct {v0}, Lxb/e;-><init>()V

    iput-object v0, p0, Lwb/g;->a:Lxb/e;

    return-void
.end method


# virtual methods
.method public a()Lwb/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwb/f<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lwb/g;->a:Lxb/e;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lwb/g;->a:Lxb/e;

    invoke-virtual {v0, p1}, Lxb/e;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lwb/g;->a:Lxb/e;

    invoke-virtual {v0, p1}, Lxb/e;->k(Ljava/lang/Object;)V

    return-void
.end method
