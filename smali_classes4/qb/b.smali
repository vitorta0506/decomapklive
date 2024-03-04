.class public Lqb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpb/f<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lpb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpb/f<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Lpb/f;IIIFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpb/f<",
            "*>;IIIFF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqb/b;->a:Lpb/f;

    .line 3
    iput p2, p0, Lqb/b;->b:I

    .line 4
    iput p3, p0, Lqb/b;->c:I

    .line 5
    iput p4, p0, Lqb/b;->d:I

    .line 6
    iput p5, p0, Lqb/b;->e:F

    .line 7
    iput p6, p0, Lqb/b;->f:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lqb/b;->e:F

    return v0
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lqb/b;->a:Lpb/f;

    invoke-interface {v0, p1}, Lpb/f;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lqb/b;->f:F

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lqb/b;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lqb/b;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lqb/b;->d:I

    return v0
.end method
