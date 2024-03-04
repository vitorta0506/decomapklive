.class public Lsk/f;
.super Lsk/d;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:Lcl/b;

.field private e:Lcl/i;

.field private f:Lcl/a;

.field private g:Lcl/h;

.field private h:Lcl/h;

.field private i:Lcl/a;

.field private j:[Lcl/i;


# direct methods
.method public constructor <init>(IILcl/b;Lcl/i;Lcl/h;Lcl/h;Lcl/a;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsk/d;-><init>(ZLsk/e;)V

    iput p2, p0, Lsk/f;->c:I

    iput p1, p0, Lsk/f;->b:I

    iput-object p3, p0, Lsk/f;->d:Lcl/b;

    iput-object p4, p0, Lsk/f;->e:Lcl/i;

    iput-object p7, p0, Lsk/f;->f:Lcl/a;

    iput-object p5, p0, Lsk/f;->g:Lcl/h;

    iput-object p6, p0, Lsk/f;->h:Lcl/h;

    invoke-static {p3, p4}, Lcl/c;->a(Lcl/b;Lcl/i;)Lcl/a;

    move-result-object p1

    iput-object p1, p0, Lsk/f;->i:Lcl/a;

    new-instance p1, Lcl/k;

    invoke-direct {p1, p3, p4}, Lcl/k;-><init>(Lcl/b;Lcl/i;)V

    invoke-virtual {p1}, Lcl/k;->c()[Lcl/i;

    move-result-object p1

    iput-object p1, p0, Lsk/f;->j:[Lcl/i;

    return-void
.end method


# virtual methods
.method public b()Lcl/b;
    .locals 1

    iget-object v0, p0, Lsk/f;->d:Lcl/b;

    return-object v0
.end method

.method public c()Lcl/i;
    .locals 1

    iget-object v0, p0, Lsk/f;->e:Lcl/i;

    return-object v0
.end method

.method public d()Lcl/a;
    .locals 1

    iget-object v0, p0, Lsk/f;->i:Lcl/a;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lsk/f;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lsk/f;->b:I

    return v0
.end method

.method public g()Lcl/h;
    .locals 1

    iget-object v0, p0, Lsk/f;->g:Lcl/h;

    return-object v0
.end method

.method public h()Lcl/h;
    .locals 1

    iget-object v0, p0, Lsk/f;->h:Lcl/h;

    return-object v0
.end method

.method public i()[Lcl/i;
    .locals 1

    iget-object v0, p0, Lsk/f;->j:[Lcl/i;

    return-object v0
.end method

.method public j()Lcl/a;
    .locals 1

    iget-object v0, p0, Lsk/f;->f:Lcl/a;

    return-object v0
.end method
