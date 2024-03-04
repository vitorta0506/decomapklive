.class public Lf/m;
.super Lf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a<",
        "Lj/h;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lj/h;

.field private final j:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln/a<",
            "Lj/h;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf/a;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, Lj/h;

    invoke-direct {p1}, Lj/h;-><init>()V

    iput-object p1, p0, Lf/m;->i:Lj/h;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lf/m;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ln/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf/m;->p(Ln/a;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public p(Ln/a;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/a<",
            "Lj/h;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ln/a;->b:Ljava/lang/Object;

    check-cast v0, Lj/h;

    .line 2
    iget-object p1, p1, Ln/a;->c:Ljava/lang/Object;

    check-cast p1, Lj/h;

    .line 3
    iget-object v1, p0, Lf/m;->i:Lj/h;

    invoke-virtual {v1, v0, p1, p2}, Lj/h;->c(Lj/h;Lj/h;F)V

    .line 4
    iget-object p1, p0, Lf/m;->i:Lj/h;

    iget-object p2, p0, Lf/m;->j:Landroid/graphics/Path;

    invoke-static {p1, p2}, Lm/g;->i(Lj/h;Landroid/graphics/Path;)V

    .line 5
    iget-object p1, p0, Lf/m;->j:Landroid/graphics/Path;

    return-object p1
.end method
