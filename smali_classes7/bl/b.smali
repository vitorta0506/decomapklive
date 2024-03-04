.class public Lbl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private a:[[S

.field private b:[S

.field private c:[[S

.field private d:[S

.field private e:[I

.field private f:[Lvk/a;


# direct methods
.method public constructor <init>([[S[S[[S[S[I[Lvk/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl/b;->a:[[S

    iput-object p2, p0, Lbl/b;->b:[S

    iput-object p3, p0, Lbl/b;->c:[[S

    iput-object p4, p0, Lbl/b;->d:[S

    iput-object p5, p0, Lbl/b;->e:[I

    iput-object p6, p0, Lbl/b;->f:[Lvk/a;

    return-void
.end method


# virtual methods
.method public a()[S
    .locals 1

    iget-object v0, p0, Lbl/b;->b:[S

    return-object v0
.end method

.method public b()[S
    .locals 1

    iget-object v0, p0, Lbl/b;->d:[S

    return-object v0
.end method

.method public c()[[S
    .locals 1

    iget-object v0, p0, Lbl/b;->a:[[S

    return-object v0
.end method

.method public d()[[S
    .locals 1

    iget-object v0, p0, Lbl/b;->c:[[S

    return-object v0
.end method

.method public e()[Lvk/a;
    .locals 1

    iget-object v0, p0, Lbl/b;->f:[Lvk/a;

    return-object v0
.end method

.method public f()[I
    .locals 1

    iget-object v0, p0, Lbl/b;->e:[I

    return-object v0
.end method
