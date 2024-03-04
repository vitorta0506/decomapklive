.class public Lj/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# instance fields
.field private final a:Lcom/airbnb/lottie/model/content/GradientType;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Li/c;

.field private final d:Li/d;

.field private final e:Li/f;

.field private final f:Li/f;

.field private final g:Ljava/lang/String;

.field private final h:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Li/c;Li/d;Li/f;Li/f;Li/b;Li/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lj/e;->a:Lcom/airbnb/lottie/model/content/GradientType;

    .line 3
    iput-object p3, p0, Lj/e;->b:Landroid/graphics/Path$FillType;

    .line 4
    iput-object p4, p0, Lj/e;->c:Li/c;

    .line 5
    iput-object p5, p0, Lj/e;->d:Li/d;

    .line 6
    iput-object p6, p0, Lj/e;->e:Li/f;

    .line 7
    iput-object p7, p0, Lj/e;->f:Li/f;

    .line 8
    iput-object p1, p0, Lj/e;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lj/e;->h:Li/b;

    .line 10
    iput-object p9, p0, Lj/e;->i:Li/b;

    .line 11
    iput-boolean p10, p0, Lj/e;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1

    new-instance v0, Le/h;

    invoke-direct {v0, p1, p2, p0}, Le/h;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/e;)V

    return-object v0
.end method

.method public b()Li/f;
    .locals 1

    iget-object v0, p0, Lj/e;->f:Li/f;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    iget-object v0, p0, Lj/e;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Li/c;
    .locals 1

    iget-object v0, p0, Lj/e;->c:Li/c;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    iget-object v0, p0, Lj/e;->a:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Li/d;
    .locals 1

    iget-object v0, p0, Lj/e;->d:Li/d;

    return-object v0
.end method

.method public h()Li/f;
    .locals 1

    iget-object v0, p0, Lj/e;->e:Li/f;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lj/e;->j:Z

    return v0
.end method
