.class final Li2/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Li2/e;


# direct methods
.method private constructor <init>(Li2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li2/e$b;->a:Li2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li2/e;Li2/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Li2/e$b;-><init>(Li2/e;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    invoke-virtual {v0, p1}, Li2/e;->o(I)V

    return-void
.end method

.method public b(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    invoke-virtual {v0, p1, p2, p3}, Li2/e;->r(ID)V

    return-void
.end method

.method public c(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    invoke-virtual {v0, p1, p2, p3}, Li2/e;->x(IJ)V

    return-void
.end method

.method public d(I)I
    .locals 1

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    invoke-virtual {v0, p1}, Li2/e;->u(I)I

    move-result p1

    return p1
.end method

.method public e(I)Z
    .locals 1

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    invoke-virtual {v0, p1}, Li2/e;->z(I)Z

    move-result p1

    return p1
.end method

.method public f(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    invoke-virtual {v0, p1, p2}, Li2/e;->H(ILjava/lang/String;)V

    return-void
.end method

.method public g(IILc2/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    invoke-virtual {v0, p1, p2, p3}, Li2/e;->l(IILc2/m;)V

    return-void
.end method

.method public h(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget-object v0, p0, Li2/e$b;->a:Li2/e;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Li2/e;->G(IJJ)V

    return-void
.end method
