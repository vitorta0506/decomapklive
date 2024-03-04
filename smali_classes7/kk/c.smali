.class public abstract Lkk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkk/c$a;
    }
.end annotation


# direct methods
.method public static a([BI[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkk/c;->b([BI[BI)V

    return-void
.end method

.method public static b([BI[BI)V
    .locals 3

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v1

    invoke-static {}, Lkk/c$a;->a()Lkk/c$a;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, v1}, Llk/b;->v(Lkk/c$a;[BI[I[I)V

    invoke-static {v0, v0}, Lkk/d;->p([I[I)V

    invoke-static {v0, v1, v0}, Lkk/d;->t([I[I[I)V

    invoke-static {v0, v0}, Lkk/d;->x([I[I)V

    invoke-static {v0}, Lkk/d;->u([I)V

    invoke-static {v0, p2, p3}, Lkk/d;->j([I[BI)V

    return-void
.end method
