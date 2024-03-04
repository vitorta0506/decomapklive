.class public Lsk/g;
.super Lsk/d;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:Lcl/a;


# direct methods
.method public constructor <init>(IILcl/a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsk/d;-><init>(ZLsk/e;)V

    iput p1, p0, Lsk/g;->b:I

    iput p2, p0, Lsk/g;->c:I

    new-instance p1, Lcl/a;

    invoke-direct {p1, p3}, Lcl/a;-><init>(Lcl/a;)V

    iput-object p1, p0, Lsk/g;->d:Lcl/a;

    return-void
.end method


# virtual methods
.method public b()Lcl/a;
    .locals 1

    iget-object v0, p0, Lsk/g;->d:Lcl/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lsk/g;->d:Lcl/a;

    invoke-virtual {v0}, Lcl/g;->b()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lsk/g;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lsk/g;->c:I

    return v0
.end method
