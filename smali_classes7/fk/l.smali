.class public Lfk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/p;


# instance fields
.field protected a:Lfk/i;

.field protected b:Lfk/g;

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfk/l;->a:Lfk/i;

    iput-object v0, p0, Lfk/l;->b:Lfk/g;

    const/4 v0, -0x1

    iput v0, p0, Lfk/l;->c:I

    return-void
.end method


# virtual methods
.method public a()Lfk/g;
    .locals 1

    iget-object v0, p0, Lfk/l;->b:Lfk/g;

    return-object v0
.end method

.method public b()Lfk/i;
    .locals 1

    iget-object v0, p0, Lfk/l;->a:Lfk/i;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lfk/l;->c:I

    return v0
.end method

.method public d(Lfk/g;)V
    .locals 0

    iput-object p1, p0, Lfk/l;->b:Lfk/g;

    return-void
.end method

.method public e(Lfk/i;)V
    .locals 0

    iput-object p1, p0, Lfk/l;->a:Lfk/i;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lfk/l;->c:I

    return-void
.end method
