.class public Lic/c;
.super Lcom/bumptech/glide/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/g<",
        "TTranscodeType;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/g;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/g;)V

    return-void
.end method


# virtual methods
.method public A1(Ljava/lang/Object;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->Y0(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public B1(Ljava/lang/String;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public C1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->T()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public D1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->U()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public E1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->V()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public F1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->W()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public G1(I)Lic/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->Z(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic H0()Lcom/bumptech/glide/g;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lic/c;->m1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public H1(II)Lic/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->a0(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public I1(I)Lic/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method protected bridge synthetic J0()Lcom/bumptech/glide/g;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->u1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public J1(Landroid/graphics/drawable/Drawable;)Lic/c;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->d0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public K1(Lcom/bumptech/glide/Priority;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->e0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public L1(Le0/d;Ljava/lang/Object;)Lic/c;
    .locals 0
    .param p1    # Le0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Le0/d<",
            "TY;>;TY;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->k0(Le0/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public M1(Le0/b;)Lic/c;
    .locals 0
    .param p1    # Le0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/b;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->l0(Le0/b;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public N1(F)Lic/c;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->m0(F)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public O1(Z)Lic/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->n0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public P1(Lcom/bumptech/glide/g;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g<",
            "TTranscodeType;>;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->g1(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public Q1(Le0/h;)Lic/c;
    .locals 0
    .param p1    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->q0(Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public varargs R1([Le0/h;)Lic/c;
    .locals 0
    .param p1    # [Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->u0([Le0/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public S1(Lcom/bumptech/glide/i;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/i<",
            "*-TTranscodeType;>;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->h1(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic T()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->C1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic T0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->v1(Lcom/bumptech/glide/request/g;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public T1(Z)Lic/c;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->v0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic U()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->D1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic U0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->w1(Landroid/graphics/drawable/Drawable;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic V()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->E1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic V0(Landroid/net/Uri;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->x1(Landroid/net/Uri;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic W()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->F1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic W0(Ljava/io/File;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->y1(Ljava/io/File;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic X0(Ljava/lang/Integer;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->z1(Ljava/lang/Integer;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Y0(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->A1(Ljava/lang/Object;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Z(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->G1(I)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->k1(Lcom/bumptech/glide/request/a;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a0(II)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lic/c;->H1(II)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b0(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->I1(I)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lic/c;->m1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->J1(Landroid/graphics/drawable/Drawable;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->K1(Lcom/bumptech/glide/Priority;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    invoke-virtual {p0}, Lic/c;->m1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->n1(Ljava/lang/Class;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g1(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->o1(Lcom/bumptech/glide/load/engine/j;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h1(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->S1(Lcom/bumptech/glide/i;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->p1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public i1(Lcom/bumptech/glide/request/g;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->x0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic j()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->q1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->r1(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k0(Le0/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Le0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lic/c;->L1(Le0/d;Ljava/lang/Object;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public k1(Lcom/bumptech/glide/request/a;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a<",
            "*>;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic l(I)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->s1(I)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l0(Le0/b;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Le0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->M1(Le0/b;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public l1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public bridge synthetic m()Lcom/bumptech/glide/request/a;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lic/c;->t1()Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m0(F)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->N1(F)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public m1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/g;->H0()Lcom/bumptech/glide/g;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public bridge synthetic n0(Z)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->O1(Z)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public n1(Ljava/lang/Class;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->g(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public o1(Lcom/bumptech/glide/load/engine/j;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->h(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public p1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->i()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public bridge synthetic q0(Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public q1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->j()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public r1(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->k(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public s1(I)Lic/c;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public t1()Lic/c;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lic/c;

    return-object v0
.end method

.method public bridge synthetic u0([Le0/h;)Lcom/bumptech/glide/request/a;
    .locals 0
    .param p1    # [Le0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->R1([Le0/h;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method protected u1()Lic/c;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lic/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lic/c;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lic/c;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/g;)V

    sget-object v1, Lcom/bumptech/glide/g;->O:Lcom/bumptech/glide/request/h;

    invoke-virtual {v0, v1}, Lic/c;->k1(Lcom/bumptech/glide/request/a;)Lic/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v0(Z)Lcom/bumptech/glide/request/a;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->T1(Z)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public v1(Lcom/bumptech/glide/request/g;)Lic/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/g<",
            "TTranscodeType;>;)",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->T0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public w1(Landroid/graphics/drawable/Drawable;)Lic/c;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->U0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic x0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->i1(Lcom/bumptech/glide/request/g;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public x1(Landroid/net/Uri;)Lic/c;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->V0(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public bridge synthetic y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lic/c;->k1(Lcom/bumptech/glide/request/a;)Lic/c;

    move-result-object p1

    return-object p1
.end method

.method public y1(Ljava/io/File;)Lic/c;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->W0(Ljava/io/File;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method

.method public z1(Ljava/lang/Integer;)Lic/c;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lic/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/g;->X0(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    check-cast p1, Lic/c;

    return-object p1
.end method
