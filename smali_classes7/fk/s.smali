.class public Lfk/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/p;


# instance fields
.field volatile a:I

.field protected b:I

.field protected c:[Lfk/i;

.field protected d:[Lfk/i;

.field protected e:Lfk/i;

.field protected f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lfk/s;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lfk/s;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lfk/s;->c:[Lfk/i;

    iput-object v1, p0, Lfk/s;->d:[Lfk/i;

    iput-object v1, p0, Lfk/s;->e:Lfk/i;

    iput v0, p0, Lfk/s;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lfk/s;->b:I

    return v0
.end method

.method public b()[Lfk/i;
    .locals 1

    iget-object v0, p0, Lfk/s;->c:[Lfk/i;

    return-object v0
.end method

.method public c()[Lfk/i;
    .locals 1

    iget-object v0, p0, Lfk/s;->d:[Lfk/i;

    return-object v0
.end method

.method public d()Lfk/i;
    .locals 1

    iget-object v0, p0, Lfk/s;->e:Lfk/i;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lfk/s;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lfk/s;->b:I

    return-void
.end method

.method public g([Lfk/i;)V
    .locals 0

    iput-object p1, p0, Lfk/s;->c:[Lfk/i;

    return-void
.end method

.method public h([Lfk/i;)V
    .locals 0

    iput-object p1, p0, Lfk/s;->d:[Lfk/i;

    return-void
.end method

.method i(I)V
    .locals 0

    iput p1, p0, Lfk/s;->a:I

    return-void
.end method

.method public j(Lfk/i;)V
    .locals 0

    iput-object p1, p0, Lfk/s;->e:Lfk/i;

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lfk/s;->f:I

    return-void
.end method
