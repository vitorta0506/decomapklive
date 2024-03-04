.class public Lcom/airbnb/lottie/model/content/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/airbnb/lottie/model/content/GradientType;

.field private final c:Li/c;

.field private final d:Li/d;

.field private final e:Li/f;

.field private final f:Li/f;

.field private final g:Li/b;

.field private final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final j:F

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Li/c;Li/d;Li/f;Li/f;Li/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Li/b;Z)V
    .locals 0
    .param p12    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "Li/c;",
            "Li/d;",
            "Li/f;",
            "Li/f;",
            "Li/b;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "F",
            "Ljava/util/List<",
            "Li/b;",
            ">;",
            "Li/b;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/content/GradientType;

    .line 4
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/a;->c:Li/c;

    .line 5
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/a;->d:Li/d;

    .line 6
    iput-object p5, p0, Lcom/airbnb/lottie/model/content/a;->e:Li/f;

    .line 7
    iput-object p6, p0, Lcom/airbnb/lottie/model/content/a;->f:Li/f;

    .line 8
    iput-object p7, p0, Lcom/airbnb/lottie/model/content/a;->g:Li/b;

    .line 9
    iput-object p8, p0, Lcom/airbnb/lottie/model/content/a;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 10
    iput-object p9, p0, Lcom/airbnb/lottie/model/content/a;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 11
    iput p10, p0, Lcom/airbnb/lottie/model/content/a;->j:F

    .line 12
    iput-object p11, p0, Lcom/airbnb/lottie/model/content/a;->k:Ljava/util/List;

    .line 13
    iput-object p12, p0, Lcom/airbnb/lottie/model/content/a;->l:Li/b;

    .line 14
    iput-boolean p13, p0, Lcom/airbnb/lottie/model/content/a;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1

    new-instance v0, Le/i;

    invoke-direct {v0, p1, p2, p0}, Le/i;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/a;)V

    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public c()Li/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->l:Li/b;

    return-object v0
.end method

.method public d()Li/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->f:Li/f;

    return-object v0
.end method

.method public e()Li/c;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->c:Li/c;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->b:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->i:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/content/a;->j:F

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Li/d;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->d:Li/d;

    return-object v0
.end method

.method public l()Li/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->e:Li/f;

    return-object v0
.end method

.method public m()Li/b;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/a;->g:Li/b;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/a;->m:Z

    return v0
.end method
