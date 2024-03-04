.class final Lkg/t0$c;
.super Lkg/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Lkg/t0;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkg/w0;-><init>(Lkg/k;II)V

    return-void
.end method


# virtual methods
.method protected F3(I)[B
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lkg/w0;->F3(I)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lkg/w0;->P()Lkg/k;

    move-result-object v0

    check-cast v0, Lkg/t0;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lkg/t0;->w(I)V

    return-object p1
.end method

.method protected G3([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    invoke-super {p0, p1}, Lkg/w0;->G3([B)V

    .line 3
    invoke-virtual {p0}, Lkg/w0;->P()Lkg/k;

    move-result-object p1

    check-cast p1, Lkg/t0;

    invoke-virtual {p1, v0}, Lkg/t0;->u(I)V

    return-void
.end method
