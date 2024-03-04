.class public Lgd/d;
.super Lgd/a;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgd/a;-><init>()V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Lgd/d;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lgd/d;->d:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lgd/d;->c:I

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lgd/d;->d:I

    return-void
.end method
