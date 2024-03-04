.class public final Ld5/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ld5/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld5/r;

    invoke-direct {v0}, Ld5/r;-><init>()V

    iput-object v0, p0, Ld5/o;->a:Ld5/r;

    return-void
.end method


# virtual methods
.method public final a()Ld5/d;
    .locals 1

    iget-object v0, p0, Ld5/o;->a:Ld5/r;

    return-object v0
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Ld5/o;->a:Ld5/r;

    invoke-virtual {v0, p1}, Ld5/r;->h(Ljava/lang/Exception;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ld5/o;->a:Ld5/r;

    invoke-virtual {v0, p1}, Ld5/r;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Ld5/o;->a:Ld5/r;

    invoke-virtual {v0, p1}, Ld5/r;->j(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ld5/o;->a:Ld5/r;

    invoke-virtual {v0, p1}, Ld5/r;->k(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
