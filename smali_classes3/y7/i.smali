.class public Ly7/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ly7/i;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ly7/i;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Ly7/i;->a:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Ly7/i;->b:I

    return-void
.end method
