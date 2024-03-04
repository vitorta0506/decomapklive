.class public Lsk/c;
.super Lsk/a;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:I

.field private e:Lcl/a;


# direct methods
.method public constructor <init>(IILcl/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Lsk/a;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Lsk/c;->c:I

    iput p2, p0, Lsk/c;->d:I

    new-instance p1, Lcl/a;

    invoke-direct {p1, p3}, Lcl/a;-><init>(Lcl/a;)V

    iput-object p1, p0, Lsk/c;->e:Lcl/a;

    return-void
.end method


# virtual methods
.method public c()Lcl/a;
    .locals 1

    iget-object v0, p0, Lsk/c;->e:Lcl/a;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lsk/c;->e:Lcl/a;

    invoke-virtual {v0}, Lcl/g;->b()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lsk/c;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lsk/c;->d:I

    return v0
.end method
