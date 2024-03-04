.class public Lsk/b;
.super Lsk/a;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:Lcl/b;

.field private f:Lcl/i;

.field private g:Lcl/h;

.field private h:Lcl/a;

.field private i:[Lcl/i;


# direct methods
.method public constructor <init>(IILcl/b;Lcl/i;Lcl/a;Lcl/h;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p7}, Lsk/a;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Lsk/b;->c:I

    iput p2, p0, Lsk/b;->d:I

    iput-object p3, p0, Lsk/b;->e:Lcl/b;

    iput-object p4, p0, Lsk/b;->f:Lcl/i;

    iput-object p5, p0, Lsk/b;->h:Lcl/a;

    iput-object p6, p0, Lsk/b;->g:Lcl/h;

    new-instance p1, Lcl/k;

    invoke-direct {p1, p3, p4}, Lcl/k;-><init>(Lcl/b;Lcl/i;)V

    invoke-virtual {p1}, Lcl/k;->c()[Lcl/i;

    move-result-object p1

    iput-object p1, p0, Lsk/b;->i:[Lcl/i;

    return-void
.end method

.method public constructor <init>(IILcl/b;Lcl/i;Lcl/h;Ljava/lang/String;)V
    .locals 8

    invoke-static {p3, p4}, Lcl/c;->a(Lcl/b;Lcl/i;)Lcl/a;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lsk/b;-><init>(IILcl/b;Lcl/i;Lcl/a;Lcl/h;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()Lcl/b;
    .locals 1

    iget-object v0, p0, Lsk/b;->e:Lcl/b;

    return-object v0
.end method

.method public d()Lcl/i;
    .locals 1

    iget-object v0, p0, Lsk/b;->f:Lcl/i;

    return-object v0
.end method

.method public e()Lcl/a;
    .locals 1

    iget-object v0, p0, Lsk/b;->h:Lcl/a;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lsk/b;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lsk/b;->c:I

    return v0
.end method

.method public h()Lcl/h;
    .locals 1

    iget-object v0, p0, Lsk/b;->g:Lcl/h;

    return-object v0
.end method

.method public i()[Lcl/i;
    .locals 1

    iget-object v0, p0, Lsk/b;->i:[Lcl/i;

    return-object v0
.end method
