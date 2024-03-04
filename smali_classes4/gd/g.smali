.class public Lgd/g;
.super Lgd/h;
.source "SourceFile"


# instance fields
.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgd/h;-><init>()V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Lgd/g;->c:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lgd/g;->c:I

    return-void
.end method
