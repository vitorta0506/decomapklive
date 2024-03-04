.class final Lkg/t0$b;
.super Lkg/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lkg/t0;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkg/u0;-><init>(Lkg/k;II)V

    return-void
.end method


# virtual methods
.method protected F3(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lkg/u0;->F3(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lkg/u0;->P()Lkg/k;

    move-result-object v0

    check-cast v0, Lkg/t0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Lkg/t0;->v(I)V

    return-object p1
.end method

.method protected G3(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Lkg/u0;->G3(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {p0}, Lkg/u0;->P()Lkg/k;

    move-result-object p1

    check-cast p1, Lkg/t0;

    invoke-virtual {p1, v0}, Lkg/t0;->t(I)V

    return-void
.end method
