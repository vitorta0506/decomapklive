.class public abstract Lkk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkk/a$a;
    }
.end annotation


# direct methods
.method public static a([BI[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkk/a;->b([BI[BI)V

    return-void
.end method

.method public static b([BI[BI)V
    .locals 3

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v1

    invoke-static {}, Lkk/a$a;->a()Lkk/a$a;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, v1}, Llk/a;->y(Lkk/a$a;[BI[I[I)V

    invoke-static {v1, v0, v0, v1}, Lkk/b;->c([I[I[I[I)V

    invoke-static {v1, v1}, Lkk/b;->r([I[I)V

    invoke-static {v0, v1, v0}, Lkk/b;->u([I[I[I)V

    invoke-static {v0}, Lkk/b;->v([I)V

    invoke-static {v0, p2, p3}, Lkk/b;->m([I[BI)V

    return-void
.end method
