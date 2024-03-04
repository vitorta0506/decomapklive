.class public Lgd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfd/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lgd/b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lgd/b;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lgd/b;->a:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lgd/b;->b:I

    return-void
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lgd/b;->c:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lgd/b;->a:I

    return-void
.end method
