.class public Li/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# instance fields
.field private final a:Li/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Li/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Li/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Li/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Li/l;-><init>(Li/e;Li/m;Li/g;Li/b;Li/d;Li/b;Li/b;Li/b;Li/b;)V

    return-void
.end method

.method public constructor <init>(Li/e;Li/m;Li/g;Li/b;Li/d;Li/b;Li/b;Li/b;Li/b;)V
    .locals 0
    .param p1    # Li/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Li/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Li/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Li/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/e;",
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Li/g;",
            "Li/b;",
            "Li/d;",
            "Li/b;",
            "Li/b;",
            "Li/b;",
            "Li/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Li/l;->a:Li/e;

    .line 4
    iput-object p2, p0, Li/l;->b:Li/m;

    .line 5
    iput-object p3, p0, Li/l;->c:Li/g;

    .line 6
    iput-object p4, p0, Li/l;->d:Li/b;

    .line 7
    iput-object p5, p0, Li/l;->e:Li/d;

    .line 8
    iput-object p6, p0, Li/l;->h:Li/b;

    .line 9
    iput-object p7, p0, Li/l;->i:Li/b;

    .line 10
    iput-object p8, p0, Li/l;->f:Li/b;

    .line 11
    iput-object p9, p0, Li/l;->g:Li/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lf/p;
    .locals 1

    new-instance v0, Lf/p;

    invoke-direct {v0, p0}, Lf/p;-><init>(Li/l;)V

    return-object v0
.end method

.method public c()Li/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->a:Li/e;

    return-object v0
.end method

.method public d()Li/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->i:Li/b;

    return-object v0
.end method

.method public e()Li/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->e:Li/d;

    return-object v0
.end method

.method public f()Li/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li/l;->b:Li/m;

    return-object v0
.end method

.method public g()Li/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->d:Li/b;

    return-object v0
.end method

.method public h()Li/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->c:Li/g;

    return-object v0
.end method

.method public i()Li/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->f:Li/b;

    return-object v0
.end method

.method public j()Li/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->g:Li/b;

    return-object v0
.end method

.method public k()Li/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Li/l;->h:Li/b;

    return-object v0
.end method
