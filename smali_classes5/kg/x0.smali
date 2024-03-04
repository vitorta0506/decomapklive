.class Lkg/x0;
.super Lkg/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Lkg/a;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkg/f;-><init>(Lkg/j;II)V

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v0

    return v0
.end method

.method public L3()Lkg/a;
    .locals 1

    invoke-super {p0}, Lkg/f;->s2()Lkg/j;

    move-result-object v0

    check-cast v0, Lkg/a;

    return-object v0
.end method

.method protected M2(I)B
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->M2(I)B

    move-result p1

    return p1
.end method

.method protected N2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->N2(I)I

    move-result p1

    return p1
.end method

.method protected O2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->O2(I)I

    move-result p1

    return p1
.end method

.method protected P2(I)J
    .locals 2

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->P2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected Q2(I)J
    .locals 2

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->Q2(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected R2(I)S
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->R2(I)S

    move-result p1

    return p1
.end method

.method protected S2(I)S
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->S2(I)S

    move-result p1

    return p1
.end method

.method protected T2(I)I
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lkg/a;->T2(I)I

    move-result p1

    return p1
.end method

.method protected U2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->U2(II)V

    return-void
.end method

.method protected V2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->V2(II)V

    return-void
.end method

.method protected W2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->W2(II)V

    return-void
.end method

.method protected X2(IJ)V
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lkg/a;->X2(IJ)V

    return-void
.end method

.method protected Y2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->Y2(II)V

    return-void
.end method

.method protected Z2(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->Z2(II)V

    return-void
.end method

.method protected a3(II)V
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkg/f;->J3(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lkg/a;->a3(II)V

    return-void
.end method

.method public bridge synthetic s2()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/x0;->L3()Lkg/a;

    move-result-object v0

    return-object v0
.end method
