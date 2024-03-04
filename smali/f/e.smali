.class public Lf/e;
.super Lf/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/g<",
        "Lj/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lj/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln/a<",
            "Lj/d;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf/g;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln/a;

    iget-object p1, p1, Ln/a;->b:Ljava/lang/Object;

    check-cast p1, Lj/d;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lj/d;->c()I

    move-result v0

    .line 4
    :goto_0
    new-instance p1, Lj/d;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lj/d;-><init>([F[I)V

    iput-object p1, p0, Lf/e;->i:Lj/d;

    return-void
.end method


# virtual methods
.method bridge synthetic i(Ln/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/e;->p(Ln/a;F)Lj/d;

    move-result-object p1

    return-object p1
.end method

.method p(Ln/a;F)Lj/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/a<",
            "Lj/d;",
            ">;F)",
            "Lj/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/e;->i:Lj/d;

    iget-object v1, p1, Ln/a;->b:Ljava/lang/Object;

    check-cast v1, Lj/d;

    iget-object p1, p1, Ln/a;->c:Ljava/lang/Object;

    check-cast p1, Lj/d;

    invoke-virtual {v0, v1, p1, p2}, Lj/d;->d(Lj/d;Lj/d;F)V

    .line 2
    iget-object p1, p0, Lf/e;->i:Lj/d;

    return-object p1
.end method
