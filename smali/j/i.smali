.class public Lj/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/c;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Li/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Li/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Li/a;Li/d;Z)V
    .locals 0
    .param p4    # Li/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Li/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/i;->c:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lj/i;->a:Z

    .line 4
    iput-object p3, p0, Lj/i;->b:Landroid/graphics/Path$FillType;

    .line 5
    iput-object p4, p0, Lj/i;->d:Li/a;

    .line 6
    iput-object p5, p0, Lj/i;->e:Li/d;

    .line 7
    iput-boolean p6, p0, Lj/i;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Le/c;
    .locals 1

    new-instance v0, Le/g;

    invoke-direct {v0, p1, p2, p0}, Le/g;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/i;)V

    return-object v0
.end method

.method public b()Li/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj/i;->d:Li/a;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    iget-object v0, p0, Lj/i;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Li/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lj/i;->e:Li/d;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lj/i;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lj/i;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
